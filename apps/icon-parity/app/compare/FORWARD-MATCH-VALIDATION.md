# Validation visuelle Solar → Lucide

La priorité actuelle est le mapping dans ce seul sens : chaque icône Solar reçoit une décision
binaire.

- `MATCH` : une icône Lucide interchangeable est enregistrée dans `referenceId`.
- `NO MATCH` : aucune icône Lucide interchangeable n'est retenue.

Les feuilles de production conservent leurs anciennes étiquettes pour l'audit. La projection binaire
est maintenant sémantique :

- `equivalent` est `MATCH` ;
- `variant` est `MATCH` lorsque la note confirme le même objet, la même action ou le même état avec
  une forme différente, sauf les exceptions sémantiques explicites de
  `SEMANTIC_VARIANT_NO_MATCH_IDS` ;
- une sélection explicite de `related` est `MATCH` lorsque le symbole principal reste interchangeable
  (par exemple `bag-3 → shopping-bag`) ;
- les autres `related` et `no-match` restent `NO MATCH`.

Les références retrouvées après la première passe sont enregistrées dans
`FORWARD_REFERENCE_OVERRIDES`. Cela couvre les candidats qui n'avaient pas été retenus lors de la
recherche initiale, notamment `bluetooth-wave → bluetooth-searching` et les variantes de bookmark.

La liste des promotions `related` est versionnée dans
`apps/icon-parity/app/compare/forward-semantic-promotions.ts`. Elle est volontairement explicite et
modifiable ligne par ligne. Les feuilles historiques ne sont pas réécrites.

## Générer les planches

Depuis la racine :

```bash
pnpm --filter icon-parity generate:atlases
pnpm --filter icon-parity generate:forward-match-boards
```

Les planches positives sont générées dans :

```text
apps/icon-parity/.atlas/forward-matches/matches-01.png
...
apps/icon-parity/.atlas/forward-matches/matches-32.png
```

Chaque ligne montre côte à côte l'icône Solar, l'icône Lucide enregistrée et les deux identifiants.
Le fichier `binary-map.json` contient les 1 247 lignes, mais il sert seulement de support de contrôle :
la validation doit se faire à partir des images.

Après recalibrage sémantique et rappel des candidats, la projection contient 887 `MATCH` et 360
`NO MATCH` sur 1 247 icônes.
Les planches et `/lucide-map` doivent servir à contrôler ces décisions binaires avant de commencer le
sens inverse Lucide → Solar ou toute modification de la map acceptée.

La validation interactive se fait dans `/lucide-map`. Le filtre `MATCH / NO MATCH` permet de parcourir
uniquement les correspondances ou uniquement les icônes sans équivalent. La recherche porte sur le
nom Solar et le nom Lucide enregistré. En sélectionnant une icône, le panneau central affiche la
décision binaire et, lorsqu'il existe, l'icône Lucide associée.
