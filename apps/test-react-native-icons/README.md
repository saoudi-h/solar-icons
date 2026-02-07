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
import { Home } from '@solar-icons/react-native/Bold';
import { Home as HomeLinear } from '@solar-icons/react-native/Linear';
import { Home as HomeOutline } from '@solar-icons/react-native/Outline';
import { Home as HomeBroken } from '@solar-icons/react-native/Broken';
import { Home as HomeBoldDuotone } from '@solar-icons/react-native/BoldDuotone';
import { Home as HomeLineDuotone } from '@solar-icons/react-native/LineDuotone';
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
