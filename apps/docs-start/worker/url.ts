/**
 * The feedback of a documentation page is stored as a GitHub discussion
 * titled `Feedback for <path>`.
 *
 * The titles of the existing discussions hold the path of the page, without
 * the host, so two visits of the same page through different hosts land in
 * the same discussion. The comparison therefore normalizes the incoming URL
 * to its path before looking for a discussion.
 */

const TITLE_PREFIX = 'Feedback for '

export type Opinion = 'good' | 'bad'

/**
 * Reduces a URL or a path to the path of the page, so that the same page
 * always resolves to the same discussion.
 */
export function normalizePagePath(input: string): string | null {
    const value = input.trim()
    if (value.length === 0) return null

    let pathname: string
    try {
        pathname = new URL(value, 'https://solar-icons.dev').pathname
    } catch {
        return null
    }

    if (pathname.length === 0 || !pathname.startsWith('/')) return null

    let path = pathname
    while (path.length > 1 && path.endsWith('/')) path = path.slice(0, -1)

    return path
}

/** The title of the discussion of a page. */
export function discussionTitle(path: string): string {
    return `${TITLE_PREFIX}${path}`
}

/**
 * Reads the path of a discussion title, or `null` when the title does not
 * follow the convention.
 */
export function pathFromTitle(title: string): string | null {
    if (!title.startsWith(TITLE_PREFIX)) return null
    return normalizePagePath(title.slice(TITLE_PREFIX.length))
}

/**
 * The body of a feedback, with the same format as the existing discussions.
 */
export function feedbackBody(opinion: Opinion, message: string): string {
    return `[${opinion}] ${message.trim()}\n\n> Forwarded from user feedback.`
}
