import { CamelToPascal } from './types';



/**
 * Converts string to kebab case
 *
 * @param {string} str
 * @returns {string} A kebabized string
 */
export const toKebabCase = (str: string): string => {
  return str
    .replace(/([a-z])([A-Z])/g, '$1-$2') // Separate uppercase letters without altering the first letter.
    .replace(/[\s,]+/g, '-') // Replace spaces and commas with dashes.
    .replace(/[^a-zA-Z0-9\-]/g, '') // Remove non-alphanumeric characters (including uppercase).
    .toLowerCase(); // Convert to lowercase at the end.
};


/**
 * Converts string to camel case
 *
 * @param {string} string
 * @returns {string} A camelized string
 */
export const toCamelCase = <T extends string>(string: T) =>
  string.replace(/^([A-Z])|[\s-_]+(\w)/g, (match, p1, p2) =>
    p2 ? p2.toUpperCase() : p1.toLowerCase(),
  );

/**
 * Converts string to pascal case
 *
 * @param {string} string
 * @returns {string} A pascalized string
 */
export const toPascalCase = <T extends string>(string: T): CamelToPascal<T> => {
  const camelCase = toCamelCase(string);

  return (camelCase.charAt(0).toUpperCase() + camelCase.slice(1)) as CamelToPascal<T>;
};