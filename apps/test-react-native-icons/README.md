# Solar Icons React Native - Test App

Application de test pour valider le package `@solar-icons/react-native`.

## Fonctionnalités

Cette app de test permet de:

- ✅ **Afficher toutes les icônes** importées par style
- ✅ **Tester tous les styles** (Bold, Linear, Outline, Broken, BoldDuotone, LineDuotone)
- ✅ **Contrôler les props** interactivement (size, color, mirrored)
- ✅ **Valider les imports** depuis différents chemins
- ✅ **Tester currentColor** et l'héritage de couleur
- ✅ **Comparer les styles** côte à côte

## Installation

```bash
npm install
```

## Lancer l'app

### iOS (nécessite macOS)

```bash
npm run ios
```

### Android

```bash
npm run android
```

### Web (pour développement rapide)

```bash
npm run web
```

## Tests Inclus

### 1. Imports par Style

L'app teste tous les chemins d'import:

```tsx
import { Home } from '@solar-icons/react-native/Bold';
import { Home as HomeLinear } from '@solar-icons/react-native/Linear';
import { Home as HomeOutline } from '@solar-icons/react-native/Outline';
import { Home as HomeBroken } from '@solar-icons/react-native/Broken';
import { Home as HomeBoldDuotone } from '@solar-icons/react-native/BoldDuotone';
import { Home as HomeLineDuotone } from '@solar-icons/react-native/LineDuotone';
```

### 2. Props par Défaut

- Size: 24px
- Color: currentColor

### 3. Props Personnalisées

- Size: 16-96px (ajustable)
- Color: Palette de couleurs
- Mirrored: ON/OFF

### 4. Héritage de Couleur

Test de `currentColor` avec un parent coloré.

### 5. Comparaison des Styles

Affichage côte à côte de tous les styles pour la même icône.

## Checklist de Validation

- [ ] Les icônes s'affichent correctement
- [ ] Tous les styles fonctionnent (Bold, Linear, Outline, Broken, BoldDuotone, LineDuotone)
- [ ] La taille par défaut (24) fonctionne
- [ ] Les tailles personnalisées fonctionnent
- [ ] Les couleurs personnalisées fonctionnent
- [ ] currentColor fonctionne
- [ ] Le mirroring fonctionne
- [ ] TypeScript autocomplete fonctionne
- [ ] Aucun warning dans la console
- [ ] Aucune erreur dans la console

## Structure de l'App

```
App.tsx
├── Header
├── Style Selector (6 styles)
├── Controls
│   ├── Size (16-96px)
│   ├── Color (palette)
│   └── Mirrored (ON/OFF)
├── Icon Gallery
│   └── Grille d'icônes du style sélectionné
└── Test Cases
    ├── Default Props
    ├── Custom Size
    ├── Custom Color
    ├── currentColor Inheritance
    ├── Mirrored Icon
    └── All Styles Comparison
```

## Notes

- L'app utilise le package local via `file:../../packages/react-native`
- Toute modification du package nécessite un rebuild (`pnpm build` dans le package)
- L'app teste un sous-ensemble d'icônes représentatif de chaque style
