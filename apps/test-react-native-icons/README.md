# Solar Icons React Native - Test App

Test application to validate the `@solar-icons/react-native` package.

## Features

This test app allows you to:

- ✅ **Display all icons** imported by style
- ✅ **Test all styles** (Bold, Linear, Outline, Broken, BoldDuotone, LineDuotone)
- ✅ **Control props** interactively (size, color, mirrored)
- ✅ **Validate imports** from different paths
- ✅ **Test currentColor** and color inheritance
- ✅ **Compare styles** side by side

## Installation

```bash
npm install
```

## Running the App

### iOS (requires macOS)

```bash
npm run ios
```

### Android

```bash
npm run android
```

### Web (for quick development)

```bash
npm run web
```

## Tests Included

### 1. Imports by Style

The app tests all import paths:

```tsx
import * as BoldIcons from '@solar-icons/react-native/bold'
import * as BoldDuotoneIcons from '@solar-icons/react-native/bold-duotone'
import * as BrokenIcons from '@solar-icons/react-native/broken'
import * as LinearIcons from '@solar-icons/react-native/linear'
import * as LineDuotoneIcons from '@solar-icons/react-native/line-duotone'
import * as OutlineIcons from '@solar-icons/react-native/outline'

// Individual icon components carry the `Icon` suffix:
import { HomeIcon } from '@solar-icons/react-native/bold'
```

### 2. Default Props

- Size: 24px
- Color: currentColor

### 3. Custom Props

- Size: 16-96px (adjustable)
- Color: Color palette
- Mirrored: ON/OFF

### 4. Color Inheritance

Test of `currentColor` with a colored parent.

### 5. Style Comparison

Side by side display of all styles for the same icon.

## Validation Checklist

- [ ] Icons display correctly
- [ ] All styles work (Bold, Linear, Outline, Broken, BoldDuotone, LineDuotone)
- [ ] Default size (24) works
- [ ] Custom sizes work
- [ ] Custom colors work
- [ ] currentColor works
- [ ] Mirroring works
- [ ] TypeScript autocomplete works
- [ ] No warnings in console
- [ ] No errors in console

## App Structure

```
App.tsx
├── Header
├── Style Selector (6 styles)
├── Controls
│   ├── Size (16-96px)
│   ├── Color (palette)
│   └── Mirrored (ON/OFF)
├── Icon Gallery
│   └── Icon grid for selected style
└── Test Cases
    ├── Default Props
    ├── Custom Size
    ├── Custom Color
    ├── currentColor Inheritance
    ├── Mirrored Icon
    └── All Styles Comparison
```

## Notes

- The app uses the local package via `file:../../packages/react-native`
- Any package modification requires a rebuild (`pnpm build` in the package)
- The app tests a representative subset of icons for each style
