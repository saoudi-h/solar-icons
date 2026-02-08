 
/**
 * Interface representing an icon.
 */
export interface IconData {
    iconName: string
    category: string
    tags: string[]
    [key: string]: any
}

/**
 * Context object for icon processing.
 */
export interface Context extends IconData {
    svgsPath: string
    pngsPath: string
    status?: 'success' | 'failure'
    error?: string
}

/**
 * Interface representing an icon data extractor function.
 * @returns An iterable of icon data objects or an async iterable of icon data objects.
 */
export type IconDataExtractor = (data: any) => Iterable<IconData> | AsyncIterable<IconData>

/**
 * Interface representing a processing step.
 */
export type ProcessorStep = (context: Context) => Promise<Context> | Context

export type Predicate = (context: Context) => boolean | Promise<boolean>
