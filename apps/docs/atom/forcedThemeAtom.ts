import { atom } from 'jotai'

export const forcedThemeAtom = atom<'light' | 'dark' | undefined>(undefined)
