const BASE_URL = "https://api.teyuto.tv";

export async function getUserSubscription(authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "*/*",
    Authorization: authToken,
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const response = await fetch(`${BASE_URL}/v1/user/?f=get_user_subscriptions`, {
    method: "POST",
    headers,
    referrer: "https://tv.diamante.live/",
    body: null,
  });

  if (!response.ok) throw await response.json();
  return await response.json();
}