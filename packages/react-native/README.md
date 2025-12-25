# @solar-icons/react-native

Solar Icons for React Native - A comprehensive icon library with 1300+ icons in 6 styles.

## Features

- 🎨 **1300+ Icons** across 37 categories
- 🎭 **6 Styles**: Bold, BoldDuotone, Broken, LineDuotone, Linear, Outline
- 📦 **Tree-shakeable** - Only bundle the icons you use
- 🔧 **TypeScript** - Full type safety
- ⚡ **ESM-only** - Modern and optimized
- 📱 **React Native Native** - iOS & Android support (no web)

## Installation

```bash
npm install @solar-icons/react-native react-native-svg
# or
yarn add @solar-icons/react-native react-native-svg
# or
pnpm add @solar-icons/react-native react-native-svg
```

> **Note**: `react-native-svg` is a peer dependency and must be installed separately.

## Usage

### Import by Style

The recommended way to import icons for optimal tree-shaking:

```tsx
import { Home, User, Settings } from '@solar-icons/react-native/Bold';
import { Heart, Star } from '@solar-icons/react-native/Linear';

function App() {
  return (
    <View>
      <Home size={24} color="#000" />
      <User size={32} color="#ff0000" />
      <Heart size={40} color="currentColor" />
    </View>
  );
}
```

### Available Styles

```tsx
import { IconName } from '@solar-icons/react-native/Bold';
import { IconName } from '@solar-icons/react-native/BoldDuotone';
import { IconName } from '@solar-icons/react-native/Broken';
import { IconName } from '@solar-icons/react-native/LineDuotone';
import { IconName } from '@solar-icons/react-native/Linear';
import { IconName } from '@solar-icons/react-native/Outline';
```

## Props

All icons accept the following props:

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `size` | `number` | `24` | Icon size in pixels (width and height) |
| `color` | `string` | `'currentColor'` | Icon color (any valid React Native color) |
| `mirrored` | `boolean` | `false` | Mirror the icon horizontally |
| `alt` | `string` | `undefined` | Accessibility label |

Plus all props from `react-native-svg`'s `SvgProps` (except `width` and `height`).

## Examples

### Basic Usage

```tsx
import { Home } from '@solar-icons/react-native/Bold';

<Home />  // 24x24, currentColor
```

### Custom Size and Color

```tsx
import { User } from '@solar-icons/react-native/Linear';

<User size={48} color="#ff0000" />
```

### Color Inheritance

```tsx
import { Heart } from '@solar-icons/react-native/Bold';

<View style={{ color: '#00ff00' }}>
  <Heart />  // Will be green
</View>
```

### Mirrored Icon

```tsx
import { ArrowRight } from '@solar-icons/react-native/Linear';

<ArrowRight mirrored size={32} />
```

### With Additional SVG Props

```tsx
import { Star } from '@solar-icons/react-native/Bold';

<Star 
  size={40}
  color="#ffd700"
  opacity={0.8}
  style={{ marginTop: 10 }}
/>
```

## Icon Categories

- **Arrows** - Directional arrows and navigation
- **Arrows Action** - Action-related arrows (undo, redo, forward, reply)
- **Astronomy** - Space and celestial objects
- **Building** - Architecture and structures
- **Business** - Business and finance
- **Call** - Phone and communication
- **Devices** - Electronics and gadgets
- **Faces** - Emotions and expressions
- **Files** - Documents and file types
- **Folders** - Folder management
- **Food** - Food and beverages
- **Hands** - Hand gestures
- **Home** - Home and furniture
- **IT** - Technology and programming
- **Like** - Reactions and feedback
- **List** - Lists and organization
- **Map** - Location and navigation
- **Medicine** - Healthcare and medical
- **Messages** - Messaging and chat
- **Money** - Currency and payments
- **Nature** - Plants and environment
- **Notes** - Note-taking and writing
- **Notifications** - Alerts and notifications
- **Parts** - Components and parts
- **School** - Education and learning
- **Search** - Search and discovery
- **Security** - Security and privacy
- **Settings** - Configuration and preferences
- **Shopping** - E-commerce and retail
- **Sports** - Sports and fitness
- **Text Formatting** - Text editing tools
- **Time** - Time and calendar
- **Tools** - Utilities and tools
- **UI** - User interface elements
- **Users** - People and profiles
- **Video** - Video and media
- **Weather** - Weather conditions

## TypeScript

Full TypeScript support with proper types:

```tsx
import type { IconProps } from '@solar-icons/react-native';
import { Home } from '@solar-icons/react-native/Bold';

const MyIcon: React.FC<IconProps> = (props) => {
  return <Home {...props} />;
};
```

## Requirements

- React Native >= 0.72.0
- React >= 16.8
- react-native-svg >= 13.0.0

## License

MIT © [Saoudi Hakim](https://hakimsaoudi.dev)

## Related Packages

- [@solar-icons/react](https://www.npmjs.com/package/@solar-icons/react) - Solar Icons for React (web)
- [@solar-icons/react-perf](https://www.npmjs.com/package/@solar-icons/react-perf) - Performance-optimized React icons
- [@solar-icons/vue](https://www.npmjs.com/package/@solar-icons/vue) - Solar Icons for Vue
- [@solar-icons/nuxt](https://www.npmjs.com/package/@solar-icons/nuxt) - Solar Icons for Nuxt

## Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](../../CONTRIBUTING.md) for details.

## Support

- 🐛 [Report a bug](https://github.com/saoudi-h/solar-icons/issues)
- 💡 [Request a feature](https://github.com/saoudi-h/solar-icons/issues)
- 📖 [Documentation](https://github.com/saoudi-h/solar-icons)
