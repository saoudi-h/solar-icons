import fs from 'fs/promises'
import path from 'path'

async function renameToLowerCase(dirPath: string): Promise<void> {
    try {
        // Lister les éléments du répertoire
        const items = await fs.readdir(dirPath, { withFileTypes: true })

        for (const item of items) {
            const oldPath = path.join(dirPath, item.name)
            const newName = item.name.toLowerCase()
            const newPath = path.join(dirPath, newName)

            // Vérifier si le renommage est nécessaire
            if (item.name === newName) continue

            // Vérifier les conflits de noms
            try {
                await fs.access(newPath)
                console.warn(`⚠️ Le nom "${newName}" existe déjà. Skipping: "${item.name}"`)
                continue
            } catch {}

            // Renommer l'élément
            await fs.rename(oldPath, newPath)
            console.log(`✅ Renommé: ${item.name} -> ${newName}`)
        }

        console.log('✨ Opération terminée')
    } catch (error) {
        console.error('❌ Erreur:', error instanceof Error ? error.message : String(error))
        process.exit(1)
    }
}

// Démarrer le script
const targetDir = process.argv[2] || '.'
renameToLowerCase(targetDir)
