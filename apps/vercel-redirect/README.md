# solar-icons.vercel.app redirect

This folder serves `solar-icons.vercel.app` after the site moves to Cloudflare.
It holds no code: `vercel.json` answers every request with a permanent (308)
redirect to the same path on `https://solar-icons.dev`, query string included.

`solar-icons.vercel.app` can only be served by Vercel, and it has been the
public address for more than a year (search results, links). It must keep
redirecting indefinitely.

Vercel project settings: Root Directory `apps/vercel-redirect`, Framework
Preset `Other`, no build command, no output directory. Keep the existing
project so the `solar-icons` subdomain stays attached to it.
