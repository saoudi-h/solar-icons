import { describe, expect, it } from 'vitest';
import { render } from 'svelte/server';
import ArrowUp from '../src/icons/linear/arrow-up.svelte';
import ArrowUpDynamic from '../src/icons/dynamic/arrow-up.svelte';

function renderIcon(props = {}) {
    const { body } = render(ArrowUp, { props });
    return body;
}

describe('Linear icon rendering', () => {
    describe('default rendering', () => {
        it('renders an <svg> element', () => {
            const body = renderIcon();
            expect(body).toContain('<svg');
        });

        it('has the solar class with icon name', () => {
            const body = renderIcon();
            expect(body).toContain('class="solar solar-arrow-up-linear"');
        });

        it('has the correct SVG attributes', () => {
            const body = renderIcon();
            expect(body).toContain('xmlns="http://www.w3.org/2000/svg"');
            expect(body).toContain('viewBox="0 0 24 24"');
            expect(body).toContain('fill="none"');
            expect(body).toContain('aria-hidden="true"');
        });
    });

    describe('default CSS variable fallbacks', () => {
        it('uses CSS var fallbacks for size', () => {
            const body = renderIcon();
            expect(body).toContain('width="1em"');
            expect(body).toContain('font-size: var(--solar-size, 24px)');
        });

        it('uses CSS var fallbacks for color', () => {
            const body = renderIcon();
            expect(body).toContain('color="var(--solar-color, currentColor)"');
        });

        it('uses CSS var fallbacks for stroke-width', () => {
            const body = renderIcon();
            expect(body).toContain('stroke-width="var(--solar-stroke-width, 1.5)"');
        });
    });

    describe('explicit props', () => {
        const body = renderIcon({ color: 'red', size: 48, strokeWidth: 3 });

        it('applies explicit color to the style attribute', () => {
            expect(body).toMatch(/style="[^"]*color:\s*red/);
        });

        it('applies explicit size as width and height in style', () => {
            expect(body).toMatch(/style="[^"]*width:\s*48px/);
            expect(body).toMatch(/style="[^"]*height:\s*48px/);
        });

        it('applies explicit strokeWidth in style', () => {
            expect(body).toMatch(/style="[^"]*stroke-width:\s*3/);
        });
    });

    describe('isolated prop', () => {
        const body = renderIcon({ isolated: true });

        it('uses literal fallbacks instead of CSS vars', () => {
            expect(body).toContain('width="24px"');
            expect(body).toContain('color="currentColor"');
            expect(body).toContain('stroke-width="1.5"');
        });

        it('applies --solar-secondary-color:initial in style', () => {
            expect(body).toContain('--solar-secondary-color: initial');
        });
    });

    describe('isolated + explicit props', () => {
        const body = renderIcon({ isolated: true, secondaryColor: 'red' });

        it('contains both --solar-secondary-color entries in style', () => {
            expect(body).toContain('--solar-secondary-color: initial');
            expect(body).toContain('--solar-secondary-color: red');
        });
    });

    describe('className merge', () => {
        it('merges custom class with solar classes', () => {
            const body = renderIcon({ class: 'my-extra' });
            expect(body).toContain('class="solar solar-arrow-up-linear my-extra"');
        });
    });

    describe('SVG attribute passthrough', () => {
        it('passes through standard SVG attributes', () => {
            const body = renderIcon({ 'data-testid': 'my-icon', role: 'img', tabindex: 0 });
            expect(body).toContain('data-testid="my-icon"');
            expect(body).toContain('role="img"');
            expect(body).toContain('tabindex="0"');
        });

        it('passes through aria attributes', () => {
            const body = renderIcon({ 'aria-label': 'Arrow up' });
            expect(body).toContain('aria-label="Arrow up"');
            expect(body).not.toContain('aria-hidden="true"');
        });
    });
});

describe('Dynamic icon rendering', () => {
    function renderDynamic(props = {}) {
        const { body } = render(ArrowUpDynamic, { props });
        return body;
    }

    describe('default rendering', () => {
        it('renders with default weight (linear) and correct CSS class', () => {
            const body = renderDynamic();
            expect(body).toContain('<svg');
            expect(body).toContain('class="solar solar-arrow-up-linear"');
        });

        it('renders with explicit weight and correct CSS class', () => {
            const body = renderDynamic({ weight: 'Bold' });
            expect(body).toContain('class="solar solar-arrow-up-bold"');
        });

        it('switches CSS class when weight changes', () => {
            const linear = renderDynamic();
            const bold = renderDynamic({ weight: 'Bold' });
            const outline = renderDynamic({ weight: 'Outline' });

            expect(linear).toContain('class="solar solar-arrow-up-linear"');
            expect(bold).toContain('class="solar solar-arrow-up-bold"');
            expect(outline).toContain('class="solar solar-arrow-up-outline"');
        });
    });

    describe('className merge', () => {
        it('merges custom class with solar classes on dynamic icon', () => {
            const body = renderDynamic({ class: 'text-blue-500' });
            expect(body).toContain('class="solar solar-arrow-up-linear text-blue-500"');
        });

        it('merges custom class with solar classes on dynamic icon with explicit weight', () => {
            const body = renderDynamic({ weight: 'Bold', class: 'text-blue-500' });
            expect(body).toContain('class="solar solar-arrow-up-bold text-blue-500"');
        });
    });
});
