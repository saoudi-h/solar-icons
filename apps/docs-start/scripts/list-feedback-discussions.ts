/**
 * Lists the discussions of the feedback category and shows which one holds
 * the feedback of a page.
 *
 * The script only reads: it never creates nor comments a discussion. It is
 * the check to run before and after a change of the matching rules.
 *
 * Usage: GITHUB_TOKEN=… pnpm tsx ./scripts/list-feedback-discussions.ts [path]
 */
import { listDiscussions, getCategoryId, findDiscussion } from '../src/feedback'
import { createGraphqlClient } from '../src/github'
import { normalizePagePath, pathFromTitle } from '../src/url'

const token = process.env.GITHUB_TOKEN
if (!token) {
    console.error('Set GITHUB_TOKEN to a token that can read the discussions.')
    process.exit(2)
}

const owner = process.env.REPO_OWNER ?? 'saoudi-h'
const repo = process.env.REPO_NAME ?? 'solar-icons'
const category = process.env.DISCUSSION_CATEGORY ?? 'Docs Feedback'
const path = process.argv[2]

const client = createGraphqlClient(token)
const { categoryId } = await getCategoryId(client, owner, repo, category)
const discussions = await listDiscussions(client, owner, repo, categoryId)

console.log(`${discussions.length} discussions in "${category}":\n`)
for (const discussion of discussions) {
    const discussionPath = pathFromTitle(discussion.title)
    console.log(`  #${discussion.number} ${discussion.title}`)
    console.log(`     ${discussion.url}`)
    console.log(`     normalized path: ${discussionPath ?? '(none)'}`)
}

if (path) {
    const normalized = normalizePagePath(path)
    const match = normalized ? findDiscussion(discussions, normalized) : undefined
    console.log(`\nThe feedback of "${path}" goes to:`)
    console.log(`  normalized path: ${normalized ?? '(none)'}`)
    console.log(match ? `  #${match.number} ${match.url} (reused)` : '  a new discussion')
}
