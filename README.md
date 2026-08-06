[![Solar Icons](apps/docs/ressources/solar-icons-banner.png 'Solar-icons Banner')](https://solar-icons.vercel.app)

# Solar Icons

1,246 icons in 6 styles, packaged for modern web and mobile frameworks.

🔗 **Explore the icons & docs:** [solar-icons.vercel.app](https://solar-icons.vercel.app)

---

## Features

- **7,476 variations**: 1,246 unique icons across 30+ categories, each available in six styles (`Bold`, `Linear`, `Outline`, `BoldDuotone`, `LineDuotone`, and `Broken`).
- **Framework support**: Native packages for React, React Native, Vue, Nuxt, Svelte 5, SolidJS, and Angular.
- **CSS variable cascade**: `SolarProvider` + `useSolar` set global defaults for size, color, and stroke width.
- **Built-in duotone**: `secondaryColor` and `secondaryOpacity` control the duotone accent path.
- **Framework-free options**: `@solar-icons/static` (raw SVGs, sprite, string modules) and `@solar-icons/js` (vanilla DOM injection).
- **TypeScript**: Typed components and props everywhere.

---

## Packages

| Package                         | Description                                                                |
| ------------------------------- | -------------------------------------------------------------------------- |
| **`@solar-icons/react`**        | React 18+ components. One component per icon per style, tree-shakable.     |
| **`@solar-icons/react-native`** | React Native and Expo SVG components.                                      |
| **`@solar-icons/vue`**          | Vue 3 components. One component per icon per style, tree-shakable.         |
| **`@solar-icons/nuxt`**         | Nuxt 3 module with auto-import and configuration support.                  |
| **`@solar-icons/svelte`**       | Svelte 5 components using runes.                                           |
| **`@solar-icons/solid`**        | SolidJS components.                                                        |
| **`@solar-icons/angular`**      | Angular 17+ standalone components using Signals.                           |
| **`@solar-icons/static`**       | Framework-free static assets: individual SVGs, SVG sprite, string modules. |
| **`@solar-icons/js`**           | Vanilla JavaScript DOM injection, no framework required.                   |
| **`@solar-icons/codemod`**      | Opt-in migration CLI for the v2 breaking changes.                          |

---

## Quick Install

```sh
# Install React components
npm install @solar-icons/react
```

For Nuxt:

```sh
nuxi module add @solar-icons/nuxt
```

Migrating from v1? Run the [codemod](https://solar-icons.vercel.app/docs/v2/migration-to-v2/codemod) to rewrite imports and component names automatically.

---

## Figma plugin

Browse the complete Solar Icons collection in Figma, preview editable strokes, and insert the same SVGs used by the packages.

[Install the Figma plugin](https://www.figma.com/community/plugin/1664759238792120976)

---

## AI/LLM Integration

The documentation site exposes LLM-friendly routes:

- **`/llms.txt`**: Document index.
- **`/llms-full.txt`**: Full documentation text.

---

## License

- **Code**: MIT
- **Icons**: CC BY 4.0 by [480 Design](https://www.figma.com/community/file/1166831539721848736) (requires attribution)

---

## Credits

- **480 Design**: Original Solar icon set.
- **Phosphor Icons** & **Lucide Icons**: Inspiration for package structure.
