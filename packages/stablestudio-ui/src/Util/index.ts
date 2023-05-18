export function route(path: string): string {
  return `${import.meta.env.VITE_BASE_PATH}${path}`;
}
