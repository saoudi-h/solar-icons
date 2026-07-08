import { writeFileSync, mkdirSync } from 'node:fs'

const iconStyles = ['bold', 'bold-duotone', 'broken', 'linear', 'line-duotone', 'outline']

mkdirSync('src/runtime/icons', { recursive: true })

for (const style of iconStyles) {
  const content = `export * from '@solar-icons/vue/${style}';\n`
  writeFileSync(`src/runtime/icons/${style}.ts`, content)
}

console.log('Entry points generated:', iconStyles.map(s => `icons/${s}`).join(', '))
