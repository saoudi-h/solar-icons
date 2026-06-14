[![Solar Icons](apps/docs/ressources/solar-icons-banner.png 'Solar-icons Banner')](https://solar-icons.vercel.app)

# Solar Icons

1,246 icons in 6 styles, packaged for modern web and mobile frameworks.

🔗 **Explore the icons & docs:** [solar-icons.vercel.app](https://solar-icons.vercel.app)

---

## Features

- **7,476 variations**: 1,246 unique icons across 30+ categories, each available in six styles (`Bold`, `Linear`, `Outline`, `BoldDuotone`, `LineDuotone`, and `Broken`).
- **Framework support**: Native packages for React, React Native, Vue, Nuxt, Svelte 5, SolidJS, and Angular.
- **Optimization choices**: Choose standard packages for dynamic style switching, or performance packages (`-perf`) for minimal bundle sizes.
- **Developer-friendly**: TypeScript types, JSDoc definitions, and categorized imports.

---

## Packages

| Package                         | Description                                                                |
| ------------------------------- | -------------------------------------------------------------------------- |
| **`@solar-icons/react`**        | Standard React package. Supports global configuration and dynamic weights. |
| **`@solar-icons/react-perf`**   | Performance React package. Includes one style per component.              |
| **`@solar-icons/react-native`** | React Native and Expo SVG components.                                      |
| **`@solar-icons/vue`**          | Standard Vue 3 package. Supports global configuration and dynamic weights. |
| **`@solar-icons/nuxt`**         | Nuxt 3 module with auto-import and configuration support.                  |
| **`@solar-icons/svelte`**       | Svelte 5 components using runes.                                           |
| **`@solar-icons/solid`**        | Lightweight SolidJS components.                                            |
| **`@solar-icons/angular`**      | Angular 17+ standalone components using Signals.                           |

---

## Quick Install

```sh
# Install standard React components
npm install @solar-icons/react
```

For Nuxt:

```sh
nuxi module add @solar-icons/nuxt
```

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
