const BASE_URL = "https://api.teyuto.tv";

export async function resetPassword(email) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    Accept: "*/*",
    Authorization: "null",
    Channel: import.meta.env.VITE_CHANNEL_NAME,
    "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
    "x-teyuto-language": currentLanguage,
  };

  const body = new URLSearchParams();
  body.append("email", email);

  const response = await fetch(
    `${BASE_URL}/v1/user/?f=request_change_password`,
    {
      method: "POST",
      headers,
      body,
      redirect: "follow",
    }
  );

  if (!response.ok) {
    throw new Error(
      `Reset password failed: ${response.status} ${response.statusText}`
    );
  }

  return await response.json();
}
