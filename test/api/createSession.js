const BASE_URL = "https://api.teyuto.tv";

export async function createSession(email, password) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    "Content-Type": "application/x-www-form-urlencoded",
    Accept: "application/json",
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const body = new URLSearchParams();
  body.append("email", email);
  body.append("password", password);

  const response = await fetch(`${BASE_URL}/v2/sessions`, {
    method: "POST",
    headers,
    body,
  });

  const data = await response.json();
  console.log("Login response:", data);
  if (!response.ok) throw data;
  return data;
}
