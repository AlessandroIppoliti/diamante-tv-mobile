const BASE_URL = "https://api.teyuto.tv";

export async function createPlaylist(title, isPublic, authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    "Content-Type": "application/x-www-form-urlencoded",
    Accept: "application/json",
    Authorization: authToken,
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const body = new URLSearchParams();
  body.append("title", title.trim());
  body.append("public", isPublic ? "1" : "0");

  const response = await fetch(`${BASE_URL}/v2/playlists`, {
    method: "POST",
    headers,
    body,
  });

  if (!response.ok) {
    const errorData = await response.json();
    throw new Error(errorData.message || `HTTP error! status: ${response.status}`);
  }

  return await response.json();
}