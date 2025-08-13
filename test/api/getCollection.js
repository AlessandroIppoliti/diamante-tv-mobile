const BASE_URL = "https://api.teyuto.tv";

export async function getCollection(collectionId, authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "application/json",
    Authorization: authToken || "null",
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const response = await fetch(`${BASE_URL}/v2/collections/${collectionId}`, {
    method: "GET",
    headers,
  });

  if (!response.ok) {
    throw new Error(
      `Failed to fetch collection ${collectionId}: ${response.status}`
    );
  }

  return await response.json();
}
