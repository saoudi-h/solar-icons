/** Complete v1-to-v2 breaking rename table. */
export const iconRenames: Record<string, string> = {
    Accumulator: 'CarBattery',
    BellBing: 'BellRing',
    BoneBroken: 'BoneFracture',
    Clound: 'Cloud',
    Condicioner: 'Conditioner',
    Essentional: 'Essential',
    FileFavourite: 'FileFavorite',
    FolderFavouriteBookmark: 'FolderFavoriteBookmark',
    FolderFavouriteStar: 'FolderFavoriteStar',
    GalleryFavourite: 'GalleryFavorite',
    Globus: 'Globe',
    Happly: 'Happy',
    HeartBroken: 'HeartCrack',
    Horizontall: 'Horizontal',
    Infinity: 'Infinite',
    LinkBroken: 'Unlink',
    LinkBrokenMinimalistic: 'UnlinkMinimalistic',
    MagicStick: 'MagicWand',
    MagicStick2: 'MagicWand2',
    MagicStick3: 'MagicWand3',
    Magnifer: 'Magnifier',
    MapPointFavourite: 'MapPointFavorite',
    Minimlistic: 'Minimalistic',
    Pallete: 'Palette',
    Plain: 'Plane',
    Plain2: 'Plane2',
    Plain3: 'Plane3',
    Plaaylist: 'Playlist',
    Recive: 'Receive',
    Siderbar: 'Sidebar',
    SortByAlphabet: 'SortAlphabetically',
    Spedometer: 'Speedometer',
    Text: 'TextFormat',
    Trellis: 'Vanity',
    Tuneing: 'Tuning',
    WadOfMoney: 'MoneyRoll',
    Weigher: 'Scale',
}

/**
 * Current catalogue normalizations retained as deprecated aliases by the
 * packages. The codemod still moves migrated code to the canonical names so
 * new code does not keep accumulating deprecated spellings.
 */
const catalogIconRenames: Record<string, string> = {
    ChatDots: 'ChatSquareDots',
    ChatLine: 'ChatSquareLine',
    ChatUnread: 'ChatSquareUnread',
    CloudFile: 'FileCloud',
    CodeFile: 'FileCode',
    FigmaFile: 'FileFigma',
}

/**
 * Typo corrections which can also occur inside a compound icon name, such as
 * `MinimalisticMagnifer`. Renames that change an icon's meaning stay exact.
 */
const compoundIconRenames: Record<string, string> = {
    Clound: 'Cloud',
    Condicioner: 'Conditioner',
    Essentional: 'Essential',
    Happly: 'Happy',
    Magnifer: 'Magnifier',
    Minimlistic: 'Minimalistic',
    Pallete: 'Palette',
    Plaaylist: 'Playlist',
    Recive: 'Receive',
    Siderbar: 'Sidebar',
    Spedometer: 'Speedometer',
    Tuneing: 'Tuning',
}

export function renameIcon(name: string): string {
    if (iconRenames[name]) return iconRenames[name]
    if (catalogIconRenames[name]) return catalogIconRenames[name]

    const typoCorrected = Object.entries(compoundIconRenames).reduce(
        (renamed, [legacyName, nextName]) => renamed.replaceAll(legacyName, nextName),
        name
    )

    return Object.entries(catalogIconRenames).reduce(
        (renamed, [legacyName, nextName]) => renamed.replaceAll(legacyName, nextName),
        typoCorrected
    )
}
