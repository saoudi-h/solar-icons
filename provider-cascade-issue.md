# Solar Icons — Provider CSS Cascade

## Contexte

Solar Icons est une bibliothèque d'icônes SVG distribuée en packages par framework. Chaque icône est un composant indépendant, importable statiquement.

Un composant `SolarProvider` a été introduit pour permettre un paramétrage global (couleur, taille, épaisseur de trait) sans re-render des icônes. Le mécanisme repose sur la cascade CSS plutôt que sur un contexte React.

## Implémentation actuelle du Provider

Le Provider est un composant React qui définit des CSS custom properties sur l'attribut `style` d'un élément `<div>` englobant ses enfants.

```tsx
export function SolarProvider({ color, size, strokeWidth, children }) {
    const [color, setColor] = useState(color)
    const [size, setSize] = useState(size)
    const [strokeWidth, setStrokeWidth] = useState(strokeWidth)

    const wrapperStyle = {}
    if (color !== undefined) wrapperStyle['--solar-color'] = color
    if (size != null) wrapperStyle['--solar-size'] = `${size}px`
    if (strokeWidth != null) wrapperStyle['--solar-stroke-width'] = String(strokeWidth)

    return (
        <SolarContext.Provider value={{ color, setColor, size, setSize, strokeWidth, setStrokeWidth }}>
            <div style={wrapperStyle}>{children}</div>
        </SolarContext.Provider>
    )
}
```

Un hook `useSolar()` expose les setters `setColor`, `setSize`, `setStrokeWidth`. Le `<div>` wrapper est re-rendu lorsque ces valeurs changent. Les icônes ne se re-rendent pas.

## Implémentation actuelle de l'icône

Chaque icône rend un `<svg>` dont les propriétés de présentation lisent les custom properties du Provider via `var()`.

```tsx
<svg
    width={size === undefined ? 'var(--solar-size, 24px)' : undefined}
    height={size === undefined ? 'var(--solar-size, 24px)' : undefined}
    color={color === undefined ? 'var(--solar-color, currentColor)' : undefined}
    strokeWidth={strokeWidth === undefined ? 'var(--solar-stroke-width, 1.5)' : undefined}
>
```

En l'absence de Provider, les fallbacks s'appliquent (`24px`, `currentColor`, `1.5`).

Lorsqu'une prop est passée explicitement (`color="green"`, `size={32}`), l'icône place la valeur dans l'attribut `style` inline du `<svg>`. L'attribut `style` ayant la spécificité la plus élevée, cette valeur l'emporte sur toute autre.

## Scénario étudié

```tsx
<SolarProvider color="red">
    <Button className="text-foreground">
        <RestartIcon className="size-4" size={32} />
    </Button>
</SolarProvider>
```

### Description du DOM généré

```html
<div style="--solar-color: red; --solar-size: 32px; --solar-stroke-width: 1.5">
    <button class="text-foreground">
        <svg class="solar solar-restart size-4"
             width="32px"
             height="32px"
             color="var(--solar-color, currentColor)"
             stroke-width="var(--solar-stroke-width, 1.5)">
        </svg>
    </button>
</div>
```

### Observations

- Le `<svg>` porte l'attribut `color="var(--solar-color, currentColor)"`.
- Cet attribut est résolu par le navigateur à la valeur `red` (lue depuis `--solar-color` sur le `<div>` wrapper).
- Le `<button>` parent a la classe `text-foreground` qui définit une couleur de texte.
- Le `<svg>` a sa propre valeur pour `color`. En CSS, la propriété `color` est héritée, mais un élément n'hérite de son parent que s'il n'a pas de valeur directe pour cette propriété.
- La valeur du `<button>` parent n'est pas appliquée au `<svg>`.

### Variante avec classe directe sur l'icône

```tsx
<SolarProvider color="red">
    <Button className="text-foreground">
        <RestartIcon className="text-green-500" />
    </Button>
</SolarProvider>
```

Dans ce cas, le `<svg>` reçoit la classe `text-green-500`. La classe CSS a une spécificité supérieure à l'attribut de présentation SVG. Le `<svg>` est vert.

### Variante sans Provider

```tsx
<Button className="text-foreground">
    <RestartIcon />
</Button>
```

Le `<svg>` porte `color="var(--solar-color, currentColor)"`. La variable `--solar-color` n'étant pas définie, le navigateur utilise le fallback `currentColor`. La valeur de `currentColor` est déterminée par l'ancêtre le plus proche ayant `color` défini.

