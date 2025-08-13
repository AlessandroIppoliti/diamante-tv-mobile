const BASE_URL = "https://api.teyuto.tv";

export async function updatePassword(newPassword, authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    "Content-Type": "application/x-www-form-urlencoded",
    Accept: "*/*",
    Authorization: authToken,
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const body = new URLSearchParams();
  body.append("new_password", newPassword);

  const response = await fetch(`${BASE_URL}/v1/user/?f=set_new_password`, {
    method: "POST",
    headers,
    body,
  });

  if (!response.ok) {
    const errorData = await response.json();
    throw new Error(
      errorData.message || `HTTP error! status: ${response.status}`
    );
  }

  return await response.json();
}
