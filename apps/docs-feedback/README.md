# Solar Icons docs feedback

The endpoint that stores the feedback of the documentation pages.

The site is served as static assets, without a Worker, so the pages never cost
an invocation. The feedback goes to this separate Worker, which writes a
GitHub discussion in the `Docs Feedback` category of the repository.

## How the feedback is stored

A page always resolves to a single discussion. The title of a discussion is
`Feedback for <path>`, with the path of the page and without the host, so the
same page never gets a second discussion, whatever the host the feedback
comes from. A new feedback on a page that already has a discussion is added
as a comment of that discussion.

The lookup walks the discussions of the category and compares the normalized
path of their titles, so it never relies on a fuzzy search.

## Deploy

The Worker needs the credentials of the GitHub App that writes the
discussions:

```sh
pnpm --filter @solar-icons/docs-feedback deploy:dry
pnpm --filter @solar-icons/docs-feedback exec wrangler secret put GITHUB_APP_ID
pnpm --filter @solar-icons/docs-feedback exec wrangler secret put GITHUB_APP_PRIVATE_KEY
pnpm --filter @solar-icons/docs-feedback deploy
```

`GITHUB_APP_PRIVATE_KEY` is the private key of the app, with its line breaks
intact. The variables of the worker are in `wrangler.jsonc`: the repository,
the category and the origins allowed to send a feedback. Add the origin of
the deployment to `ALLOWED_ORIGINS`, otherwise the worker refuses its
requests.

The site needs the address of the worker:

```sh
VITE_FEEDBACK_ENDPOINT=https://solar-icons-docs-feedback.<subdomain>.workers.dev
```

## Read the discussions

The script lists the discussions of the category and shows which one holds
the feedback of a page. It only reads:

```sh
GITHUB_TOKEN=… pnpm --filter @solar-icons/docs-feedback exec tsx ./scripts/list-feedback-discussions.ts /docs/v2/packages/react
```
