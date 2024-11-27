/**
 * A type guard that checks if the given value is a string.
 * @param value - The value to check.
 * @returns True if the value is a string, false otherwise.
 */
export const isString = (value: unknown): value is string => typeof value === 'string'

/**
 * A type guard that checks if the given error is a NodeJS.ErrnoException.
 * This is true if the error is an object with a 'code' property.
 * @param error - The error to check.
 * @returns True if the error is a NodeJS.ErrnoException, false otherwise.
 */
export const isNodeError = (error: unknown): error is NodeJS.ErrnoException => {
    return typeof error === 'object' && error !== null && 'code' in error
}

/**
 * A type guard that checks if the given value is an array of strings.
 * This is true if the given value is an array and every element in it is a string.
 * @param arr - The value to check.
 * @returns True if the given value is an array of strings, false otherwise.
 */
export function isArrayOfStrings(arr: unknown) {
    return Array.isArray(arr) && arr.every(item => typeof item === 'string')
}
