# Solar Icons documentation

The documentation of Solar Icons, served as static assets by a Cloudflare
Worker. The pages are prerendered at build time and the Worker only runs for
the feedback endpoint, so a page view never costs an invocation.

## Build

```sh
pnpm --filter @solar-icons/docs-start build
```

The build writes the prerendered site in `dist/client` and copies the assets
of the current Next app, so both apps render the same pages.

## Test

```sh
pnpm --filter @solar-icons/docs-start test
```

The unit tests cover the feedback Worker, the end to end tests cover the
pages, the search and the explorer.

## Deploy

The Worker needs the credentials of the GitHub App that writes the feedback
of the documentation pages:

```sh
pnpm --filter @solar-icons/docs-start exec wrangler secret put GITHUB_APP_ID
pnpm --filter @solar-icons/docs-start exec wrangler secret put GITHUB_APP_PRIVATE_KEY
pnpm --filter @solar-icons/docs-start deploy
```

`GITHUB_APP_PRIVATE_KEY` is the private key of the app, with its line breaks
intact. The variables of the worker are in `wrangler.jsonc`: the repository
and the category that hold the feedback, and the origins that are allowed to
send a feedback on top of the origin of the site itself.

The endpoint is public, so a rate limit has to be added at the Cloudflare
level before the production cutover.

## Read the feedback discussions

The script lists the discussions of the category and shows which one holds
the feedback of a page. It only reads:

```sh
GITHUB_TOKEN=… pnpm --filter @solar-icons/docs-start feedback:list /docs/v2/packages/react
```
