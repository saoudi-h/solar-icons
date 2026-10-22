/**
 * The `lastModified` date is added to the collection data when the page body
 * is loaded. The macro API does not widen the entry type with it, so the
 * value is read through this helper.
 */
export function lastModifiedOf(data: object): Date | undefined {
    const value = (data as { lastModified?: unknown }).lastModified
    return value instanceof Date ? value : undefined
}
