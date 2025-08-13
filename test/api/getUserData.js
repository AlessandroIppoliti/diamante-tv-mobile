const BASE_URL = "https://api.teyuto.tv";

export async function getUserData(authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "application/json",
    Authorization: authToken,
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const response = await fetch(`${BASE_URL}/v1/user/?f=user_data`, {
    method: "GET",
    headers,
  });

  if (!response.ok) throw await response.json();
  return await response.json();
}
