import { clsx, type ClassValue } from 'clsx'
import { twMerge } from 'tailwind-merge'

export function cn(...inputs: ClassValue[]) {
    return twMerge(clsx(inputs))
}

export type CamelToPascal<T extends string> = T extends `${infer FirstChar}${infer Rest}`
    ? `${Capitalize<FirstChar>}${Rest}`
    : never

export const toCamelCase = <T extends string>(string: T) =>
    string
        .replace(/^[\s\-_]+|[\s\-_]+$/g, '')
        .replace(/^([A-Z])|[\s\-_]+(\w)/g, (_, p1, p2) =>
            p2 ? p2.toUpperCase() : p1.toLowerCase()
        )

export const toPascalCase = <T extends string>(string: T): CamelToPascal<T> => {
    const camelCase = toCamelCase(string)

    return (camelCase.charAt(0).toUpperCase() + camelCase.slice(1)) as CamelToPascal<T>
}
