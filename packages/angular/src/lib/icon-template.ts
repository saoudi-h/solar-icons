/**
 * @internal
 * The template of all Solar icon components.
 */
export const iconTemplate = `@if (alt(); as titleValue) {
  <title>{{ titleValue }}</title>
}
<ng-content select="title"></ng-content>
<ng-container #contentRef></ng-container>
<ng-content />`;
