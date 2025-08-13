const BASE_URL = "https://api.teyuto.tv";

export async function updateUserProfile(
  userId,
  profileData,
  authToken,
  channel
) {
  const currentLanguage = window.i18next?.language;

  const headers = {
    "Content-Type": "application/x-www-form-urlencoded",
    Accept: "application/json",
    Authorization: authToken,
    Channel: channel || import.meta.env.VITE_CHANNEL_NAME,
    "x-teyuto-language": currentLanguage,
  };

  const body = new URLSearchParams();
  if (profileData.username?.trim()) {
    body.append("username", profileData.username.trim());
  }
  if (profileData.email?.trim()) {
    body.append("email", profileData.email.trim());
  }
  if (profileData.fullname?.trim()) {
    body.append("fullname", profileData.fullname.trim());
  }

  const response = await fetch(`${BASE_URL}/v2/users/${userId}`, {
    method: "PATCH",
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
