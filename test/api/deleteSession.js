const BASE_URL = "https://api.teyuto.tv";

export async function deleteSession(userId, authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = new Headers();
  headers.append("Content-Type", "application/x-www-form-urlencoded");
  headers.append("Accept", "*/*");
  headers.append("Accept", "text/plain");
  headers.append("Authorization", authToken);
  headers.append("x-teyuto-language", currentLanguage);

  const urlencoded = new URLSearchParams();
  urlencoded.append("user_id", userId);

  const requestOptions = {
    method: "DELETE",
    headers: headers,
    redirect: "follow",
  };

  const response = await fetch(`${BASE_URL}/v2/sessions`, requestOptions);

  if (!response.ok) {
    throw new Error(`Logout failed: ${response.status} ${response.statusText}`);
  }

  return await response.text();
}
