const BASE_URL = "https://api.teyuto.tv";

export async function getVideo(videoId, authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "application/json",
    Authorization: authToken || "null",
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const response = await fetch(`${BASE_URL}/v2/videos/${videoId}`, {
    method: "GET",
    headers,
  });

  if (!response.ok) {
    throw new Error(`Failed to fetch video ${videoId}: ${response.status}`);
  }
  return await response.json();
}
