# Solar Icons - Beta Release Workflow

## Vue d'ensemble

Ce document explique le processus de publication beta pour tester les nouvelles fonctionnalités avant une release stable.

## Pourquoi une branche `beta` ?

La convention d'une branche `beta` est courante dans les projets qui utilisent Changesets. Voici comment ça marche :

- **`main`** : Branche de production, publie les versions stables (ex: `1.0.4`)
- **`beta`** : Branche de pré-production, publie les versions beta (ex: `1.0.5-beta.0`)

> **Note** : Certains projets utilisent `next` ou `canary` au lieu de `beta`. C'est une question de préférence.

## Workflow de publication beta

### 1. Préparer la branche beta

```bash
# Créer la branche beta à partir de main (une seule fois)
git checkout main
git pull
git checkout -b beta

# OU merger une feature branch dans beta
git checkout beta
git merge feat/icon-naming-refactor
```

### 2. Entrer en mode prerelease

```bash
# Activer le mode prerelease avec tag "beta"
pnpm changeset pre enter beta
```

Cela crée un fichier `.changeset/pre.json` qui indique à Changesets de générer des versions `-beta.X`.

### 3. Créer un changeset

```bash
pnpm changeset
```

Répondre aux prompts : packages affectés, type de changement, description.

### 4. Versionner les packages

```bash
pnpm changeset version
```

Cela met à jour les `package.json` avec des versions comme `1.0.5-beta.0`, `1.0.5-beta.1`, etc.

### 5. Publier sur NPM

```bash
# Publier avec le tag "beta"
pnpm changeset publish --tag beta
```

Ou simplement pusher sur la branche `beta` si le workflow CI est configuré.

### 6. Sortir du mode prerelease

Quand prêt pour la release stable :

```bash
pnpm changeset pre exit
```

Puis merger `beta` → `main` pour publier les versions stables.

## Workflows GitHub Actions

### release.yml (branche main)
- Déclenché sur push vers `main`
- Publie des versions stables

### release-beta.yml (branche beta)
- Déclenché sur push vers `beta`
- Publie des versions beta avec `--tag beta`

## Utilisation des versions beta

Les utilisateurs peuvent installer les versions beta avec :

```bash
# Installer la dernière beta
npm install @solar-icons/react@beta

# Installer une version spécifique
npm install @solar-icons/react@1.0.5-beta.0
```

## Résumé des conventions

| Branche | Tag NPM | Versions | Public |
|---------|---------|----------|--------|
| `main` | `latest` | `1.0.4` | Oui, par défaut |
| `beta` | `beta` | `1.0.5-beta.0` | Oui, optionnel |

## Alternatives à la branche beta

Si tu préfères éviter une branche `beta` permanente :

1. **Feature branch + prerelease** : Activer prerelease sur ta feature branch
2. **Publish local** : `pnpm pack` pour tester localement
3. **Verdaccio** : Registry NPM local pour tests internes
