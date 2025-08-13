export function filterCollectionsWithNextVideo(collections, limit) {
  return (collections || [])
    .filter((col) => col.next_video_play)
    .slice(0, limit);
}