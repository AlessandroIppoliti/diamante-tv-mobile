const BASE_URL = "https://api.teyuto.tv";

export async function setSaved(contentId, contentType, playlistId, authToken) {
  const headers = {
    accept: "*/*",
    authorization: authToken,
    channel: import.meta.env.VITE_CHANNEL_NAME,
    "content-type": "application/x-www-form-urlencoded; charset=UTF-8",
  };

  let body = `id=${contentId}&type=${contentType}`;
  if (playlistId && playlistId !== 0 && playlistId !== "0") {
    body += `&playlist_id=${playlistId}`;
  }

  const response = await fetch(`${BASE_URL}/v1/video/?f=set_saved`, {
    method: "POST",
    headers,
    body,
  });

  if (!response.ok) throw await response.json();
  return await response.json();
}
