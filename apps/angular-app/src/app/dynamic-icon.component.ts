import {
    Component,
    Input,
    OnChanges,
    SimpleChanges,
    ViewContainerRef,
    ViewChild,
    Type,
    OnDestroy,
} from '@angular/core';

// Type for icon component
type IconComponentType = Type<unknown> & {
    // Icons extend IconBase which has size and color inputs
};

/**
 * Dynamic icon component that can render any Solar icon.
 * This component dynamically creates the appropriate icon component
 * based on the icon name and style.
 */
@Component({
    selector: 'app-dynamic-icon',
    standalone: true,
    template: '<ng-template #iconHost></ng-template>',
})
export class DynamicIconComponent implements OnChanges, OnDestroy {
    @ViewChild('iconHost', { read: ViewContainerRef, static: true })
    container!: ViewContainerRef;

    @Input() icon!: IconComponentType;
    @Input() size: number = 24;
    @Input() color: string = 'currentColor';

    private componentRef: ReturnType<ViewContainerRef['createComponent']> | null = null;

    ngOnChanges(changes: SimpleChanges): void {
        if (changes['icon'] || changes['size'] || changes['color']) {
            this.renderIcon();
        }
    }

    ngOnDestroy(): void {
        if (this.componentRef) {
            this.componentRef.destroy();
        }
    }

    private renderIcon(): void {
        if (!this.icon) return;

        this.container.clear();
        this.componentRef = this.container.createComponent(this.icon);

        // Set inputs
        this.componentRef.setInput('size', this.size);
        this.componentRef.setInput('color', this.color);
    }
}
