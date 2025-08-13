const BASE_URL = "https://api.teyuto.tv";

const defaultHeaders = {
  Accept: "application/json",
  Channel: import.meta.env.VITE_CHANNEL_NAME,
};

export async function searchContent(
  query,
  page = 1,
  type = null,
  position = "All",
) {
  if (!query.trim()) {
    return { contents: [] };
  }

  const searchParams = new URLSearchParams({
    search: query,
    page: page.toString(),
    get_type: type || "null",
    position,
  });

  const response = await fetch(
    `${BASE_URL}/v2/contents?${searchParams.toString()}`,
    {
      method: "GET",
      headers: defaultHeaders,
    }
  );

  if (!response.ok) {
    throw new Error(`Search failed: ${response.status}`);
  }

  const data = await response.json();
  return data;
}
