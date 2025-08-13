const BASE_URL = "https://api.teyuto.tv";

export async function uploadAvatar(file, authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "*/*",
    Authorization: authToken,
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const formData = new FormData();
  formData.append("profile_image", file);

  const url = `${BASE_URL}/v1/user/?f=save_settings`;

  const response = await fetch(url, {
    method: "POST",
    headers,
    body: formData,
    referrer: "https://tv.diamante.live/",
  });

  if (!response.ok) {
    const errorData = await response.json().catch(() => ({}));
    throw new Error(
      errorData.message || `HTTP error! status: ${response.status}`
    );
  }

  return await response.json();
}