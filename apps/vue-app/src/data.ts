export interface GridItem {
    id: number
    value: {
        avatar: string
    }
}

export function getData(count: number): GridItem[] {
    return Array.from({ length: count }, (_, id) => ({
        id,
        value: { avatar: `https://picsum.photos/seed/solar-${id}/128/128` },
    }))
}
