import { describe, expect, it } from 'vitest';
import { render } from 'svelte/server';
import ArrowUp from '../src/icons/linear/arrow-up.svelte';

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
            expect(body).toContain('width="var(--solar-size, 24px)"');
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
});
