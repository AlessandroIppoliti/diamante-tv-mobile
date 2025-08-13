const BASE_URL = "https://api.teyuto.tv";

export async function getListCollections(
  authToken,
  {
    filterNextVideo = false,
    limit,
    page = 1,
    categoryIds = [],
    tags = [],
  } = {}
) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "application/json",
    Authorization: authToken || "null",
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const categoryParams = categoryIds
    .map((id) => `category_ids[]=${encodeURIComponent(id)}`)
    .join("&");

  const tagParams = tags
    .map((tag) => `tags=${encodeURIComponent(tag)}`)
    .join("&");

  const queryParams = [`page=${page}`, categoryParams, tagParams]
    .filter(Boolean)
    .join("&");

  const url = `${BASE_URL}/v2/collections?${queryParams}`;

  const response = await fetch(url, {
    method: "GET",
    headers,
  });

  if (!response.ok) {
    const errorData = await response.json().catch(() => ({}));
    throw new Error(
      errorData.message || `HTTP error! status: ${response.status}`
    );
  }

  const data = await response.json();
  let collections = data.collections || [];

  if (filterNextVideo) {
    collections = collections.filter((col) => col.next_video_play);
  }

  if (limit) {
    collections = collections.slice(0, limit);
  }

  return collections;
}
