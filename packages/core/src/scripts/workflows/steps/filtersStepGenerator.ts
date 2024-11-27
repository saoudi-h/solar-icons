import type { Context, Predicate } from '../types'

/**
 * Given a predicate or an array of predicates, generates a step that marks
 * an icon as 'success' if the predicate(s) don't match. Otherwise, the icon
 * is left untouched.
 * @param predicate - The predicate or array of predicates to apply.
 * @returns - A promise that resolves to the updated context.
 */
export const filtersStepGenerator = (predicate: Predicate | Predicate[]) => {
    return async (context: Context) => {
        if (Array.isArray(predicate)) {
            let meetsCriteria = false
            for (const p of predicate) {
                if (await p(context)) {
                    meetsCriteria = true
                    break
                }
            }
            if (!meetsCriteria) {
                context.status = 'success'
            }
        } else {
            if (!(await predicate(context))) {
                context.status = 'success'
            }
        }

        return context
    }
}
