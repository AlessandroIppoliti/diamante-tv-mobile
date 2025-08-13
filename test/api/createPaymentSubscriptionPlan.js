const BASE_URL = "https://api.teyuto.tv";

export async function createPaymentSubscriptionPlan(authToken) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
    Accept: "application/json, text/javascript, */*; q=0.01",
    Authorization: authToken,
    channel: import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const body = new URLSearchParams();
  body.append("id", "8060");

  const response = await fetch(
    `${BASE_URL}/v1_1/pay/?f=create_payment_checkout`,
    {
      method: "POST",
      headers,
      body,
      referrer: "https://tv.diamante.live/",
    }
  );

  if (!response.ok) {
    const errorData = await response.json();
    throw new Error(
      errorData.message || `HTTP error! status: ${response.status}`
    );
  }

  return await response.json();
}