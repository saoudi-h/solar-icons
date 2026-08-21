# Solar Path Intersections

Plugin Figma interne destiné au dessin précis des icônes Solar. Il ne remplace pas le plugin public et n’a pas vocation à être publié.

## Utilisation

1. Ouvrir Figma Desktop.
2. Aller dans **Plugins → Development → Import from manifest…**.
3. Sélectionner [`manifest.json`](./manifest.json).
4. Sélectionner exactement deux calques `VECTOR` ou `LINE`.
5. Vérifier les intersections détectées, sélectionner celles à traiter, puis choisir l’action.

L’action par défaut ajoute un vrai vertex aux deux tracés sans enlever de segment. Le bouton **Couper** retire la connexion au point choisi sur un seul tracé ; une ouverture optionnelle peut être indiquée en pixels. Chaque action est regroupée dans une opération Figma annulable avec `Ctrl/Cmd + Z`.

Les calques `LINE` sont convertis en `VECTOR` lors de la modification, car l’API Figma ne fournit aucun `vectorNetwork` modifiable pour un `LINE`.

## Précision

Les segments sont lus depuis le `vectorNetwork` et transformés en courbes cubiques Bézier. Le plugin utilise une subdivision récursive adaptative des deux courbes, avec élimination par boîtes englobantes, puis affine chaque candidat par Newton-Raphson sur les deux paramètres Bézier. La tolérance de validation est de `1e-5` unité Figma, largement inférieure à un pixel pour une icône 24×24.

Le manifest utilise l’accès classique au document. L’écriture du réseau est donc synchrone via la propriété `vectorNetwork`; `setVectorNetworkAsync` n’est pas nécessaire ici et devient indispensable lorsque `documentAccess: "dynamic-page"` rend la propriété directement non modifiable.

Les recouvrements colinéaires ne sont pas des intersections ponctuelles et ne sont pas traités dans cette première version.

## Périmètre actuel

- deux calques sélectionnés ;
- calques `VECTOR` et `LINE` ;
- plusieurs intersections affichées avant toute modification ;
- sélection individuelle ou globale ;
- deux sous-chemins dans un même calque vectoriel prévus pour une version ultérieure.
