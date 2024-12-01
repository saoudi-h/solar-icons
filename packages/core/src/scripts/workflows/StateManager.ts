import fs from 'node:fs'
import path from 'node:path'

/**
 * A class for managing the state of a pipeline execution.
 * The state is stored in a single file in the given directory.
 * The state contains a list of icon keys that have been processed successfully, and a list of icon keys that have failed.
 * The class provides methods to mark an icon key as successful or failed, and to determine if an icon key has been processed.
 * The class also provides methods to clear the state, and to clear the state only if there are no failed icon keys.
 * @param stateId - The id of the state, used to create the file name for the state file.
 * @param directory - The directory where the state file should be stored.
 */
export class StateManager {
    private successes: Set<string>
    private failures: Set<string>
    private stateFilePath: string

    constructor(stateId: string, directory: string) {
        this.stateFilePath = path.join(directory, `temp-${stateId}.json`)
        if (!fs.existsSync(directory)) {
            fs.mkdirSync(directory, { recursive: true })
        }
        const { successes, failures } = this.loadState()
        this.successes = successes
        this.failures = failures
    }

    private loadState(): { successes: Set<string>; failures: Set<string> } {
        try {
            const data = fs.readFileSync(this.stateFilePath, 'utf-8')
            const { successes, failures } = JSON.parse(data)
            return {
                successes: new Set(successes || []),
                failures: new Set(failures || []),
            }
        } catch (error) {
            if ((error as NodeJS.ErrnoException).code === 'ENOENT') {
                return { successes: new Set(), failures: new Set() }
            }
            throw error
        }
    }

    private saveState(): void {
        const data = {
            successes: Array.from(this.successes),
            failures: Array.from(this.failures),
        }
        fs.writeFileSync(this.stateFilePath, JSON.stringify(data, null, 2), 'utf-8')
    }

    public markSuccess(iconKey: string): void {
        this.successes.add(iconKey)
        this.failures.delete(iconKey)
        this.saveState()
    }

    public markFailure(iconKey: string): void {
        this.failures.add(iconKey)
        this.successes.delete(iconKey)
        this.saveState()
    }

    public hasProcessed(iconKey: string): boolean {
        return this.successes.has(iconKey) || this.failures.has(iconKey)
    }

    public clear(): void {
        if (fs.existsSync(this.stateFilePath)) {
            fs.unlinkSync(this.stateFilePath)
        }
    }

    public safeClear(): void {
        if (this.failures.size === 0) {
            this.clear()
        }
    }
}
