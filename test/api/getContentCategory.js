const BASE_URL = "https://api.teyuto.tv";

export async function getContentCategory(cat, page = 1, authToken) {
  const currentLanguage = window.i18next?.language;

  const url = `${BASE_URL}/v2/contents?cat=${cat}&tags=null&page=${page}&get_type=null&position=all`;

  try {
    const response = await fetch(url, {
      method: "GET",
      headers: {
        Accept: "*/*",
        Authorization: authToken || "null",
        channel: import.meta.env.VITE_CHANNEL_NAME,
        "x-teyuto-language": currentLanguage,
      },
    });

    if (response.status === 404) {
      return { videos: [] };
    }

    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Errore in getContentCategory:", error);
    throw error;
  }
}
