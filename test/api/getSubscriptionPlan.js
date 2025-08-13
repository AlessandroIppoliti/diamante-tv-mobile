const BASE_URL = "https://api.teyuto.tv";

export async function getSubscriptionPlan(authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "*/*",
    Authorization: authToken,
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const response = await fetch(
    `${BASE_URL}/v1/collection/?f=get_payment_preview&id=8746`,
    {
      method: "GET",
      headers,
      referrer: "https://tv.diamante.live/",
    }
  );

  if (!response.ok) {
    throw new Error(`Failed to fetch subscription plan: ${response.status}`);
  }

  return await response.json();
}
