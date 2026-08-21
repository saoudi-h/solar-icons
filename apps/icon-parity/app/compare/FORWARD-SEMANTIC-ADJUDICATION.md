# Adjudication sémantique Solar → Lucide

Cette étape corrige le biais de la première passe : une différence de contour, d'orientation du
dessin, de détail interne ou de glyphes d'état ne suffit pas à refuser un remplacement lorsque le
symbole exprime le même objet, la même action ou le même état.

## Projection binaire actuelle

La projection consommée par `/lucide-map` est calculée par
`app/compare/forward-map.ts` :

- `equivalent` → `MATCH` ;
- `variant` → `MATCH`, car la production a déjà établi le même concept et l'écart est graphique,
  sauf les identifiants listés dans `SEMANTIC_VARIANT_NO_MATCH_IDS` lorsqu'un état ou un objet
  primaire change réellement ;
- `related` → `MATCH` uniquement si son `solarId` figure dans
  `forward-semantic-promotions.ts` ;
- une ligne sans référence de production peut être rétablie par
  `FORWARD_REFERENCE_OVERRIDES` lorsqu'un candidat Lucide a été retrouvé lors du rappel ;
- les autres `related` et `no-match` → `NO MATCH`.

Les décisions des feuilles de production restent inchangées. Elles sont conservées comme trace
d'audit (`auditDecision`) afin qu'une décision binaire puisse être contestée sans perdre le travail
précédent.

État calculé : 1 247 icônes Solar, 887 MATCH et 360 NO MATCH. Les exemples confirmés par la revue
incluent `alarm-turn-off → alarm-clock-off`, `album → album`, `armchair-2 → armchair` et
`bag-3 → shopping-bag`, ainsi que `bluetooth-wave → bluetooth-searching` et
`bookmark-square-minimalistic → bookmark`.
La même règle donne `call-cancel-rounded → phone-missed`, `camera-rotate → switch-camera` et
`cardholder → wallet-cards`.

Dans le sens Solar → Lucide, un logo Lucide reste utilisable si le symbole rendu est réellement le
même (exemple `basketball → dribbble`). Cette règle ne préjuge pas du sens inverse : Lucide → Solar
devra vérifier l'identité de marque et ne pourra pas remplacer automatiquement un logo par un simple
symbole générique.

## Règle de contrôle

Un MATCH sémantique doit conserver le noyau que l'utilisateur lit dans l'icône :

1. objet principal ;
2. action ou état ;
3. direction lorsque celle-ci fait partie de l'action.

La forme exacte, le nombre de traits, le type de contour, la taille, l'orientation du dessin et un
détail décoratif peuvent différer. Une composition qui remplace l'objet principal, supprime une
action ou change un état reste NO MATCH.

Pour auditer une ligne, ouvrir `/lucide-map`, rechercher le nom ou l'identifiant Solar, puis comparer
les deux glyphes dans le panneau central. Le petit libellé `audit:` indique si le MATCH provient de
`equivalent`, `variant` ou d'une promotion `related`. Une promotion `related` se retire uniquement
en supprimant son identifiant de `forward-semantic-promotions.ts`.

Avant de conclure `NO MATCH` sur une ligne sans référence, lancer le rappel de candidats :

```bash
pnpm --filter icon-parity forward:recall-candidates
```

Le résultat `.atlas/forward-recall-candidates.json` recherche dans tout l'index Lucide, avec les
synonymes et familles de noms. Il sert à trouver les candidats oubliés (`bluetooth-searching` pour
`bluetooth-wave`, par exemple) ; il ne transforme jamais automatiquement une ligne en MATCH.

## Reprise par un autre agent

Lire dans cet ordre :

1. `mapping-state.json` ;
2. ce document ;
3. `forward-semantic-promotions.ts` ;
4. `/lucide-map`.

Ne pas recommencer la production, ne pas modifier `/compare`, ne pas traiter le sens Lucide → Solar
et ne pas muter `verified-matches.json`. La prochaine tâche utile est l'audit visuel des 370 NO MATCH,
par lots, en ajoutant seulement des promotions explicites lorsqu'un équivalent sémantique est
confirmé.
