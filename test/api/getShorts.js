const BASE_URL = "https://api.teyuto.tv";

export async function getShorts(authToken, page = 1) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "application/json",
    Authorization: authToken || "null",
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const response = await fetch(`${BASE_URL}/v2/contents/shorts?page=${page}`, {
    method: "GET",
    headers,
  });

  if (response.status === 404) {
    return { shorts: [] };
  }

  if (!response.ok) {
    throw new Error(
      `Failed to fetch shorts for page ${page}: ${response.status}`
    );
  }

  return await response.json();
}
