#!/usr/bin/env node
import fs from 'node:fs';
import path from 'node:path';
import pc from 'picocolors';

import type { SvgMap } from './utils';
import {
    ICONS_PATH,
    INDEX_PATH,
    readSvgsFromDisk,
    toPascalCase,
    verifyIcons,
    WEIGHTS,
} from './utils';

// --- Types ---

interface Icon {
    category: string;
    style: string;
    name: string;
    pascalName: string;
    globalName: string;
    jsx: string;
}

interface FileDefinition {
    path: string;
    content: string;
}

// --- Helpers ---

function getIcons(map: SvgMap): Icon[] {
    const icons: Icon[] = [];
    for (const [category, styles] of Object.entries(map)) {
        for (const [style, names] of Object.entries(styles)) {
            for (const [name, data] of Object.entries(names)) {
                icons.push({
                    category,
                    style,
                    name,
                    pascalName: toPascalCase(name),
                    globalName: toPascalCase(`${name}-${style}`),
                    jsx: data.jsx,
                });
            }
        }
    }
    return icons;
}

function groupBy<T>(array: T[], keySelector: (item: T) => string): Record<string, T[]> {
    return array.reduce(
        (acc, item) => {
            const key = keySelector(item);
            if (!acc[key]) acc[key] = [];
            acc[key].push(item);
            return acc;
        },
        {} as Record<string, T[]>
    );
}

// --- Generators ---

const Generators = {
    component: (icon: Icon): FileDefinition => {
        const content = `<script lang="ts">
import Icon from '../../../lib/IconBase.svelte'
let props = $props()
</script>

<Icon {...props}>
    ${icon.jsx.trim()}
</Icon>
`;
        return {
            path: path.join(ICONS_PATH, icon.category, icon.style, `${icon.pascalName}.svelte`),
            content,
        };
    },

    styleIndex: (style: string, icons: Icon[], folderPath: string): FileDefinition => {
        const parentDir = path.dirname(folderPath);
        const exports = icons
            .map(
                (icon) =>
                    `export { default as ${icon.pascalName} } from './${style}/${icon.pascalName}.svelte';`
            )
            .sort()
            .join('\n');

        return {
            path: path.join(parentDir, `${style}.ts`),
            content: `${exports}\n`,
        };
    },

    styleGlobalIndex: (_style: string, icons: Icon[], folderPath: string): FileDefinition => {
        const exports = icons
            .map(
                (icon) =>
                    `export { default as ${icon.globalName} } from './${icon.pascalName}.svelte';`
            )
            .sort()
            .join('\n');

        return {
            path: path.join(folderPath, 'styled.ts'),
            content: `${exports}\n`,
        };
    },

    categoryIndex: (category: string, styles: string[], folderPath: string): FileDefinition => {
        const parentDir = path.dirname(folderPath);
        const exports = styles
            .map((style) => `export * as ${style} from './${category}/${style}';`)
            .sort()
            .join('\n');

        return {
            path: path.join(parentDir, `${category}.ts`),
            content: `${exports}\n`,
        };
    },

    categoryGlobalIndex: (
        _category: string,
        styles: string[],
        folderPath: string
    ): FileDefinition => {
        const exports = styles
            .map((style) => `export * from './${style}/styled';`)
            .sort()
            .join('\n');

        return {
            path: path.join(folderPath, 'styled.ts'),
            content: `${exports}\n`,
        };
    },

    rootIndex: (categories: string[]): FileDefinition => {
        const exports = categories
            .map((category) => `export * as ${toPascalCase(category)} from './${category}';`)
            .sort()
            .join('\n');

        return {
            path: path.join(ICONS_PATH, 'index.ts'),
            content: `${exports}\n`,
        };
    },

    rootGlobalIndex: (categories: string[]): FileDefinition => {
        const exports = categories
            .map((category) => `export * from './${category}/styled';`)
            .sort()
            .join('\n');

        return {
            path: path.join(ICONS_PATH, 'styled.ts'),
            content: `${exports}\n`,
        };
    },

    weightIndexes: (icons: Icon[]): FileDefinition[] => {
        const files: FileDefinition[] = [];
        const byStyle = groupBy(icons, (i) => i.style);

        for (const weight of WEIGHTS) {
            const iconsForWeight = byStyle[weight] || [];
            const content = iconsForWeight
                .sort((a, b) => a.pascalName.localeCompare(b.pascalName))
                .map(
                    (icon) =>
                        `export { default as ${icon.pascalName} } from '../${icon.category}/${icon.style}/${icon.pascalName}.svelte';`
                )
                .join('\n');

            files.push({
                path: path.join(ICONS_PATH, 'style', `${weight}.ts`),
                content: content ? `${content}\n` : '',
            });
        }

        return files;
    },

    stylesIndex: (): FileDefinition => {
        const exports = WEIGHTS.map((weight) => `export * as ${weight} from './${weight}';`).join(
            '\n'
        );

        return {
            path: path.join(ICONS_PATH, 'style', 'index.ts'),
            content: `${exports}\n`,
        };
    },

    mainEntry: (): FileDefinition => {
        const content = `export type { IconProps } from "./lib"
export { IconBase, type IconStyle } from "./lib"
export * from "./icons/styled"
`;
        return {
            path: INDEX_PATH,
            content,
        };
    },
};

// --- Stages ---

function clean() {
    const pathsToClean = [ICONS_PATH, INDEX_PATH];
    pathsToClean.forEach((p) => {
        if (fs.existsSync(p)) {
            fs.rmSync(p, { recursive: true, force: true });
            console.log(pc.blue(`Removed ${p}`));
        }
    });
}

function generate(icons: Icon[]) {
    const files: FileDefinition[] = [];
    const byCategory = groupBy(icons, (i) => i.category);

    for (const [category, catIcons] of Object.entries(byCategory)) {
        const byStyle = groupBy(catIcons, (i) => i.style);

        for (const [style, styleIcons] of Object.entries(byStyle)) {
            const stylePath = path.join(ICONS_PATH, category, style);

            // Only .svelte components (no .ts re-exports)
            styleIcons.forEach((icon) => {
                files.push(Generators.component(icon));
            });

            files.push(Generators.styleIndex(style, styleIcons, stylePath));
            files.push(Generators.styleGlobalIndex(style, styleIcons, stylePath));
        }

        const styles = Object.keys(byStyle);
        const categoryPath = path.join(ICONS_PATH, category);
        files.push(Generators.categoryIndex(category, styles, categoryPath));
        files.push(Generators.categoryGlobalIndex(category, styles, categoryPath));
    }

    const categories = Object.keys(byCategory);
    files.push(Generators.rootIndex(categories));
    files.push(Generators.rootGlobalIndex(categories));
    files.push(...Generators.weightIndexes(icons));
    files.push(Generators.stylesIndex());
    files.push(Generators.mainEntry());

    return files;
}

function writeFiles(files: FileDefinition[]) {
    files.forEach((file) => {
        fs.mkdirSync(path.dirname(file.path), { recursive: true });
        fs.writeFileSync(file.path, file.content, { flag: 'w' });
    });
    console.log(pc.green(`Successfully generated ${files.length} files.`));
}

// --- Main ---

const main = async () => {
    try {
        clean();
        const svgMap = readSvgsFromDisk();
        if (!verifyIcons(svgMap)) {
            process.exit(1);
        }
        const icons = getIcons(svgMap);
        const files = generate(icons);
        writeFiles(files);
    } catch (err) {
        console.error(pc.red('Build failed'));
        console.error(err);
        process.exit(1);
    }
};

await main();
