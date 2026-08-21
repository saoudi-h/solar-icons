# AGENT: packages/figma-intersection-plugin

- **Type:** plugin Figma interne, sans dépendances ni étape de build.
- **Entrée:** `code.js` dans le sandbox principal Figma.
- **Interface:** `ui.html`, entièrement autonome et communiquant par `postMessage`.
- **Sélection:** exactement deux nœuds `VECTOR` ou `LINE`.
- **Géométrie:** les segments sont convertis en cubiques, détectés par subdivision adaptative et affinés par Newton-Raphson.
- **Écriture:** le manifest utilise l’accès classique, donc les nouveaux sommets sont écrits directement dans la propriété `vectorNetwork`. Ne pas réintroduire `setVectorNetworkAsync` sans passer le manifest à `documentAccess: "dynamic-page"`. Un `LINE` est remplacé par un `VECTOR`, car les lignes Figma n’exposent pas de réseau de vecteurs.
- **Sécurité:** les actions sont appliquées après prévisualisation et regroupées pour l’annulation Figma.

Ne pas modifier `dist` d’un autre plugin et ne pas ajouter ce plugin au plugin public `packages/figma-plugin` sans décision explicite : il s’agit d’un outil de développement pour la source Figma.
