const BASE_URL = "https://api.teyuto.tv";

export async function createUser(email, password) {
  const currentLanguage = window.i18next?.language;

  const headers = new Headers();
  headers.append("Content-Type", "application/x-www-form-urlencoded");
  headers.append("Accept", "application/json");
  headers.append("Authorization", "null");
  headers.append("Channel", import.meta.env.VITE_CHANNEL_NAME)
  headers.append("x-teyuto-language", currentLanguage);

  const urlencoded = new URLSearchParams();
  urlencoded.append("email", email);
  urlencoded.append("password", password);

  const requestOptions = {
    method: "POST",
    headers: headers,
    body: urlencoded,
    redirect: "follow",
  };

  const response = await fetch(`${BASE_URL}/v2/users`, requestOptions);

  if (!response.ok) {
    const errorData = await response.json().catch(() => ({}));
    throw new Error(errorData.message || `Create user failed: ${response.status}`);
  }

  return await response.json();
}