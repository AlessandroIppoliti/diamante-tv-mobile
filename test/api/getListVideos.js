const BASE_URL = "https://api.teyuto.tv";

export async function getListVideos(collectionId, page = 1, authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "application/json",
    Authorization: authToken || "null",
    Channel: import.meta.env.VITE_CHANNEL_NAME,
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
    return { videos: [] };
  }

  if (!response.ok) {
    throw new Error(
      `Failed to fetch videos for collection ${collectionId}, page ${page}: ${response.status}`
    );
  }

  return await response.json();
}
