import { getVideo } from "./getVideo.js";
import { getCollection } from "./getCollection.js";

const BASE_URL = "https://api.teyuto.tv";

export { getVideo, getCollection };

export async function getListVideosByCollection(
  collectionId,
  authToken,
  page = 1
) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "application/json",
    Authorization: authToken || "null",
    channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const response = await fetch(
    `${BASE_URL}/v2/videos?collection_id=${collectionId}&page=${page}`,
    {
      method: "GET",
      headers,
    }
  );

  if (response.status === 404) {
    return { videos: [], hasMore: false };
  }

  if (!response.ok) {
    throw new Error(
      `Failed to fetch videos for collection ${collectionId}, page ${page}: ${response.status}`
    );
  }

  const data = await response.json();
  return {
    videos: data.videos || [],
    hasMore: data.videos && data.videos.length > 0,
  };
}

export async function getAllVideosByCollection(collectionId, authToken) {
  let page = 1;
  let allEpisodes = [];
  let hasMore = true;
  let trailerId = null;

  try {
    const collectionData = await getCollection(collectionId, authToken);
    trailerId = collectionData.trailer?.toString();
  } catch (err) {
    console.warn("Error fetching trailer from collection:", err);
  }

  while (hasMore) {
    try {
      const { videos, hasMore: pageHasMore } = await getListVideosByCollection(
        collectionId,
        authToken,
        page
      );

      if (videos.length === 0) break;

      const filteredVideos = videos
        .filter((ep) => ep.id.toString() !== trailerId)
        .map((ep, idx) => ({
          ...ep,
          episode_no: allEpisodes.length + idx + 1,
        }));

      allEpisodes = [...allEpisodes, ...filteredVideos];
      hasMore = pageHasMore;
      page++;
    } catch (error) {
      console.error(`Error fetching episodes page ${page}:`, error);
      hasMore = false;
    }
  }

  return allEpisodes;
}
