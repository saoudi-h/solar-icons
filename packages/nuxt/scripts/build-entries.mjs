import { writeFileSync, mkdirSync } from 'node:fs'

const entries = [
  { file: 'icons', from: '@solar-icons/vue' },
  { file: 'dynamic', from: '@solar-icons/vue/dynamic' },
  { file: 'lib', from: '@solar-icons/vue/lib' },
]

const iconStyles = ['bold', 'bold-duotone', 'broken', 'linear', 'line-duotone', 'outline']

mkdirSync('dist/entries', { recursive: true })
mkdirSync('dist/entries/icons', { recursive: true })
mkdirSync('dist/entries/dynamic', { recursive: true })

for (const { file, from } of entries) {
  const content = `export * from '${from}';\n`
  writeFileSync(`dist/entries/${file}.mjs`, content)
  writeFileSync(`dist/entries/${file}.d.mts`, content)
}

for (const style of iconStyles) {
  const content = `export * from '@solar-icons/vue/${style}';\n`
  writeFileSync(`dist/entries/icons/${style}.mjs`, content)
  writeFileSync(`dist/entries/icons/${style}.d.mts`, content)
}

console.log('Entry points generated:', [...entries.map(e => e.file), ...iconStyles.map(s => `icons/${s}`)].join(', '))
