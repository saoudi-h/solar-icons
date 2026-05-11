# Solar Icons Documentation

This is the official documentation website for Solar Icons, built with Next.js 16 and Fumadocs.

## Features

- **7,476+ icon variations** across 6 styles
- **Interactive icon explorer** with search and filtering
- **Framework-specific guides** for React, Vue, Nuxt, Angular, Svelte, SolidJS, and React Native
- **AI-powered documentation** with LLM-friendly routes (`/llms.txt` and `/llms-full.txt`)
- **Server-side rendering** with Next.js App Router
- **Type-safe** with TypeScript

## Development

Run the development server:

```bash
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) to view the documentation.

## LLM Integration

The documentation exposes two special routes for AI/LLM consumption:

- `/llms.txt` - Lightweight index of all documentation pages
- `/llms-full.txt` - Complete documentation content for comprehensive AI context

These routes are automatically generated from the Fumadocs source and are optimized for AI model consumption.

## Tech Stack

- **Framework**: Next.js 16 with App Router
- **Documentation**: Fumadocs (MDX-based documentation framework)
- **Styling**: Tailwind CSS
- **Components**: Radix UI primitives
- **Icons**: Solar Icons (of course!)

## Learn More

- [Next.js Documentation](https://nextjs.org/docs)
- [Fumadocs Documentation](https://fumadocs.vercel.app)
- [Solar Icons Repository](https://github.com/saoudi-h/solar-icons)
