const BASE_URL = "https://api.teyuto.tv";

export async function getGiftCard(authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "application/json, text/javascript, */*; q=0.01",
    Authorization: authToken,
    channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const response = await fetch(
    `${BASE_URL}/v1/collection/?f=get_payment_preview&all_giftcard=true`,
    {
      method: "GET",
      headers,
    }
  );

  if (!response.ok) {
    throw new Error(`Failed to fetch gift cards: ${response.status}`);
  }

  return await response.json();
}
