import { describe, expect, it } from 'vitest';
import { renderToString } from 'solid-js/web';
import { ArrowUpIcon } from '../src/icons/linear/arrow-up';

describe('ArrowUpIcon rendering', () => {
    it('renders default SVG attributes', () => {
        const html = renderToString(() => <ArrowUpIcon />);

        expect(html).toContain('<svg');
        expect(html).toContain('class="solar solar-arrow-up-linear');
        expect(html).toContain('xmlns="http://www.w3.org/2000/svg"');
        expect(html).toContain('viewBox="0 0 24 24"');
        expect(html).toContain('fill="none"');
        expect(html).toContain('aria-hidden="true"');
    });

    it('renders default CSS var fallbacks as SVG attrs', () => {
        const html = renderToString(() => <ArrowUpIcon />);

        expect(html).toContain('width="var(--solar-size, 24px)"');
        expect(html).toContain('height="var(--solar-size, 24px)"');
        expect(html).toContain('color="var(--solar-color, currentColor)"');
    });

    it('renders explicit props as inline style', () => {
        const html = renderToString(() => <ArrowUpIcon color="red" size={48} strokeWidth={3} />);

        expect(html).toContain('color:red');
        expect(html).toContain('width:48px');
        expect(html).toContain('height:48px');
    });

    it('renders isolated prop with hardcoded defaults', () => {
        const html = renderToString(() => <ArrowUpIcon isolated={true} />);

        expect(html).toContain('width="24px"');
        expect(html).toContain('height="24px"');
        expect(html).toContain('color="currentColor"');
        expect(html).toContain('--solar-secondary-color:initial');
    });

    it('isolated + explicit color does not override duotone', () => {
        const html = renderToString(() => <ArrowUpIcon isolated={true} color="red" />);

        expect(html).toContain('color:red');
        expect(html).toContain('--solar-secondary-color:initial');
    });

    it('merges className with base solar class', () => {
        const html = renderToString(() => <ArrowUpIcon class="my-extra" />);

        expect(html).toContain('class="solar solar-arrow-up-linear my-extra');
    });
});
