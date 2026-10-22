/**
 * Reads the discussions of the feedback category and stores a new feedback in
 * the discussion of its page.
 *
 * A page always resolves to a single discussion: the lookup walks the
 * discussions of the category and compares the normalized path of their
 * title, so the same page never gets a second discussion, whatever the host
 * the feedback comes from.
 */
import type { GraphqlClient } from './github'
import { discussionTitle, feedbackBody, pathFromTitle, type Opinion } from './url'

export type Discussion = {
    id: string
    number: number
    title: string
    url: string
}

export type FeedbackInput = {
    path: string
    opinion: Opinion
    message: string
}

export type StoreResult = {
    githubUrl: string
    reused: boolean
}

const CATEGORY_QUERY = `
query($owner: String!, $name: String!) {
    repository(owner: $owner, name: $name) {
        id
        discussionCategories(first: 50) {
            nodes {
                id
                name
            }
        }
    }
}`

const DISCUSSIONS_QUERY = `
query($owner: String!, $name: String!, $categoryId: ID!, $cursor: String) {
    repository(owner: $owner, name: $name) {
        discussions(first: 50, after: $cursor, categoryId: $categoryId) {
            pageInfo { hasNextPage endCursor }
            nodes {
                id
                number
                title
                url
            }
        }
    }
}`

const CREATE_MUTATION = `
mutation($repositoryId: ID!, $categoryId: ID!, $title: String!, $body: String!) {
    createDiscussion(
        input: { repositoryId: $repositoryId, categoryId: $categoryId, title: $title, body: $body }
    ) {
        discussion {
            id
            number
            title
            url
        }
    }
}`

const COMMENT_MUTATION = `
mutation($discussionId: ID!, $body: String!) {
    addDiscussionComment(input: { discussionId: $discussionId, body: $body }) {
        comment { id }
    }
}`

type Repository = {
    id: string
    discussionCategories: { nodes: { id: string; name: string }[] }
}

type Discussions = {
    discussions: {
        pageInfo: { hasNextPage: boolean; endCursor: string | null }
        nodes: Discussion[]
    }
}

/** Reads the identifier of the category that stores the feedback. */
export async function getCategoryId(
    client: GraphqlClient,
    owner: string,
    repo: string,
    category: string
): Promise<{ repositoryId: string; categoryId: string }> {
    const data: { repository: Repository } = await client.graphql(CATEGORY_QUERY, {
        owner,
        name: repo,
    })

    const repository = data.repository
    const found = repository.discussionCategories.nodes.find(
        node => node.name.toLowerCase() === category.toLowerCase()
    )
    if (!found) throw new Error(`The repository has no "${category}" discussion category`)

    return { repositoryId: repository.id, categoryId: found.id }
}

/** Reads every discussion of the category, page after page. */
export async function listDiscussions(
    client: GraphqlClient,
    owner: string,
    repo: string,
    categoryId: string
): Promise<Discussion[]> {
    const discussions: Discussion[] = []
    let cursor: string | null = null

    do {
        const data: { repository: Discussions } = await client.graphql(DISCUSSIONS_QUERY, {
            owner,
            name: repo,
            categoryId,
            cursor,
        })
        discussions.push(...data.repository.discussions.nodes)
        cursor = data.repository.discussions.pageInfo.hasNextPage
            ? data.repository.discussions.pageInfo.endCursor
            : null
    } while (cursor)

    return discussions
}

/**
 * Finds the discussion of a page, by comparing the normalized path of the
 * titles with the path of the page.
 */
export function findDiscussion(discussions: Discussion[], path: string): Discussion | undefined {
    return discussions.find(discussion => pathFromTitle(discussion.title) === path)
}

/**
 * Stores a feedback in the discussion of its page, and creates the
 * discussion when the page has none yet.
 */
export async function storeFeedback(
    client: GraphqlClient,
    options: {
        owner: string
        repo: string
        category: string
        input: FeedbackInput
        dryRun?: boolean
    }
): Promise<StoreResult> {
    const { owner, repo, category, input, dryRun } = options
    const { repositoryId, categoryId } = await getCategoryId(client, owner, repo, category)
    const discussions = await listDiscussions(client, owner, repo, categoryId)
    const existing = findDiscussion(discussions, input.path)
    const body = feedbackBody(input.opinion, input.message)

    if (existing) {
        if (!dryRun) {
            await client.graphql(COMMENT_MUTATION, { discussionId: existing.id, body })
        }
        return { githubUrl: existing.url, reused: true }
    }

    const title = discussionTitle(input.path)
    if (dryRun) {
        return {
            githubUrl: `https://github.com/${owner}/${repo}/discussions/pending:${title}`,
            reused: false,
        }
    }

    const data: { createDiscussion: { discussion: Discussion } } = await client.graphql(
        CREATE_MUTATION,
        { repositoryId, categoryId, title, body }
    )

    return { githubUrl: data.createDiscussion.discussion.url, reused: false }
}
