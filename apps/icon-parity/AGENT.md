# AGENT: apps/icon-parity

Workbench Next.js séparé de `apps/react-app`. `react-app` reste uniquement le
laboratoire visuel du package `@solar-icons/react`; cette app contient les
artefacts et outils expérimentaux de parité, actuellement centrés sur Lucide.

## Reprendre le travail

Depuis la racine du dépôt :

```sh
pnpm --filter icon-parity dev
pnpm --filter icon-parity typecheck
pnpm --filter icon-parity lint
```

Avant toute reprise sans historique de conversation, lire aussi
`.agent/workflows/session.md`, puis `app/compare/mapping-state.json` et
`app/compare/LUCIDE-COVERAGE-RUNBOOK.md` dans cet ordre.

Pages utiles :

- `/lucide-map` : revue Solar → Lucide, une ligne à la fois;
- `/lucide-gap` : revue Lucide → Solar (exact, fallback, reverse, gap);
- `/compare` : archive de la première comparaison multi-packs, à ne pas
  utiliser pour modifier la production Lucide.

## Méthode et sources

- `app/compare/lucide-production/` est la source des décisions Solar → Lucide;
- `app/compare/lucide-coverage/coverage.json` est le rapport dérivé Lucide →
  Solar;
- `app/compare/forward-map.ts` projette les lots de production vers l’interface;
- les JSON de revue sont des artefacts versionnés : une décision doit rester
  binaire (`equivalent` ou `no-match`), avec une note d’audit;
- `@iconify-json/lucide` est épinglé pour rendre les atlas reproductibles.

Les scripts sont regroupés dans `scripts/` et leurs chemins sont relatifs à
cette app. Utiliser le filtre `icon-parity`, jamais `react-app`, pour générer ou
valider les lots Lucide.

Les autres packs restent hors du nouveau flux de production. Les fichiers de
`/compare` sont conservés comme historique afin de ne pas perdre les décisions
du travail initial.
