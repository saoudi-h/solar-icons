# @svelte/svelte - Plan de développement

## Objectif principal

Créer un package d'icons `@svelte/svelte` orienté ESM-only pour Svelte 5 (compatible Svelte 4), en suivant l'approche **react-native** pour permettre à tsdown de gérer tout le build sans double étape.

---

## ✅ Ce qui a été fait

### 1. Structure du package créée

- `packages/svelte/package.json` - Configuration du package
- `packages/svelte/tsconfig.json` - Configuration TypeScript
- `packages/svelte/tsconfig.build.json` - Configuration build TypeScript
- `packages/svelte/eslint.config.ts` - Configuration ESLint
- `packages/svelte/prettier.config.mjs` - Configuration Prettier
- `packages/svelte/lint-staged.config.mjs` - Configuration lint-staged
- `packages/svelte/.gitignore` - Fichier gitignore
- `packages/svelte/.prettierignore` - Fichier prettierignore

### 2. Scripts de génération créés et fonctionnels

- `packages/svelte/scripts/generate-assets.ts` - Script principal de génération
- `packages/svelte/scripts/utils.ts` - Utilitaires (lecture SVGs, transformation JSX, etc.)
- ✅ **8004 icônes générées avec succès**

### 3. Composants et types créés et corrigés

- `packages/svelte/src/lib/types.ts` - Types TypeScript corrigés
- `packages/svelte/src/lib/IconBase.svelte` - Composant base avec width/height dérivés
- `packages/svelte/src/lib/index.ts` - Export lib

### 4. Configuration TypeScript partagée

- `packages/tsconfig/svelte.json` - Config TypeScript spécifique à Svelte
- `packages/tsconfig/package.json` - Ajout de `./svelte.json` aux exports

### 5. Configuration de build adaptée (basée sur template tsdown-svelte-package-template)

- `packages/svelte/scripts/tsdown-plugin-svelte-dts.js` - Plugin personnalisé pour générer les types avec svelte2tsx
- `packages/svelte/tsdown.config.ts` - Configuration tsdown avec :
    - `rollup-plugin-svelte` + `svelte-preprocess` pour compiler les `.svelte`
    - Plugin personnalisé `svelteDtsPlugin` avec `svelte2tsx` pour générer les types
    - `dts: false` (les types sont générés par svelte2tsx)
    - Entrées simplifiées (9 seulement : index, lib/index, lib/types, + les 6 styles)
    - External pour `svelte`, `svelte/reactivity`, `svelte/compiler`

### 6. Suppression de l'export `solar` namespace

- ✅ L'export de l'objet `solar` a été retiré du fichier `src/index.ts` généré

### 7. package.json configuré

- Ajouté `svelte2tsx` comme devDependency
- Scripts simplifiés (build sans `tsc --build`, juste tsdown)
- Exports configurés pour pointer vers `./dist/types/` pour les déclarations

---

## 🚨 Problèmes résolus

### Problème 1: tsdown ne supporte pas nativement `.svelte`

**Solution**: Utiliser `rollup-plugin-svelte` + `svelte-preprocess` dans tsdown pour compiler les `.svelte` en JavaScript

### Problème 2: Génération des types pour les fichiers `.svelte`

**Solution**: Créer un plugin personnalisé `svelteDtsPlugin` qui utilise `svelte2tsx` pour générer les déclarations TypeScript

### Problème 3: Erreur `export let style` utilisant le mot réservé `$`

**Solution**: Supprimé la déclaration `const $$restProps = (undefined as any)` et utilisé directement `{...$$restProps}`

### Problème 4: Fichier `src/icons/index.ts` manquant pour l'export `./category`

**Solution**: Ajouté la génération de `src/icons/index.ts` dans le script de génération

---

## 📋 Reste à faire

### Étape 1: Créer l'app de test

- [ ] Créer `apps/svelte-app/` avec la structure similaire à `vue-app/`
- [ ] Configurer Vite + Svelte
- [ ] Installer `@solar-icons/svelte` (workspace)
- [ ] Créer des pages de test pour les différents modes d'import
- [ ] Tester avec Svelte 5
- [ ] Tester avec Svelte 4 (si possible)

### Étape 2: Documentation

- [ ] Créer `packages/svelte/README.md`
- [ ] Documenter les modes d'import
- [ ] Ajouter des exemples d'utilisation

### Étape 3: Tests avancés

- [ ] Créer des tests pour vérifier que les icônes s'affichent correctement
- [ ] Tester le tree-shaking
- [ ] Vérifier la compatibilité SSR

---

## 🔍 Questions à clariser

1. **Compatibilité Svelte 4** : Est-ce un dur requirement ou un "nice to have" ? Si Svelte 5 est prioritaire, on peut se concentrer là-dessus.

2. **App de test** : Vite + Svelte simple (comme vue-app) ou SvelteKit complet ?

---

## 📝 Notes de session

- Date de début : 30 décembre 2025
- Dernière mise à jour : Session en cours
- Statut : ✅ Build fonctionnel ! Tests passants
- Référence : Architecture react-native + template tsdown-svelte-package-template

## 🎯 Objectif final

Un package simple, ESM-only, qui :

- **Build fonctionnel avec tsdown seul** (pas de double build tsc)
- A des **exports simples** (9 exports)
- **1 composant par style** (ex: ArrowLeftBold.svelte)
- **Pas d'objet `solar` namespace**
- Fonctionne avec Svelte 5 (et Svelte 4 si possible)
- Utilise `svelte2tsx` pour la génération des types

## 🏗️ Structure des exports

```json
{
    ".": "./dist/index.mjs",
    "./lib/*": "./dist/lib/*.mjs",
    "./category": "./dist/icons/index.mjs",
    "./category/*": "./dist/icons/*.mjs",
    "./*": "./dist/icons/style/*.mjs"
}
```

## 📂 Structure dist générée

```
dist/
├── icons/
│   ├── index.mjs
│   ├── arrows/
│   ├── ui/
│   ├── ...
│   ├── style/
│   │   ├── Bold.mjs
│   │   ├── BoldDuotone.mjs
│   │   └── ...
│   └── ...
├── lib/
│   ├── index.mjs
│   ├── types.d.ts
│   └── ...
└── types/
│   ├── icons/
│   │   └── ...
└── index.mjs
```

```

```
