const BASE_URL = "https://api.teyuto.tv";

export async function getListCategories(page = 1, authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "application/json",
    Authorization: authToken || "null",
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const response = await fetch(`${BASE_URL}/v1/categories/?f=get_categories`, {
    method: "GET",
    headers,
  });

  if (!response.ok) {
    throw new Error(`Failed to fetch content categories: ${response.status}`);
  }

  return await response.json();
}
