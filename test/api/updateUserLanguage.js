const BASE_URL = "https://api.teyuto.tv";

export async function updateUserLanguage(authToken, languageCode) {
  const headers = {
    Accept: "*/*",
    Authorization: authToken || "null",
    channel: import.meta.env.VITE_CHANNEL_NAME,
    "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
    "x-teyuto-language": languageCode,
  };

  const body = new URLSearchParams({ language: languageCode });

  const response = await fetch(`${BASE_URL}/v1/user/?f=update_user_language`, {
    method: "POST",
    headers,
    body,
  });

  if (!response.ok) {
    throw new Error(`Failed to update user language: ${response.status}`);
  }

  return await response.json();
}
