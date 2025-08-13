const BASE_URL = "https://api.teyuto.tv";

export async function getRelatedCollections(collectionId, page = 1, authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "*/*",
    Authorization: authToken || "null",
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const url = `${BASE_URL}/v2/contents/collections?f=get_collection&id=${collectionId}&option=related_collections&page=${page}`;

  const response = await fetch(url, {
    method: "GET",
    headers,
    referrer: "https://tv.diamante.live/",
  });

  if (!response.ok) {
    throw new Error(
      `Failed to fetch related collections for ${collectionId}: ${response.status}`
    );
  }

  return await response.json();
}
