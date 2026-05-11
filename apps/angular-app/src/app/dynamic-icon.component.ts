import {
  Component,
  Input,
  OnChanges,
  SimpleChanges,
  ViewContainerRef,
  ViewChild,
  Type,
  OnDestroy,
  inject,
  EnvironmentInjector,
} from '@angular/core';

/**
 * Dynamic icon component that can render any Solar icon.
 * Passes the EnvironmentInjector explicitly so that icon components
 * compiled with ngc --partial can resolve their own DI dependencies
 * (fixes NG0203 "inject() called outside injection context").
 */
@Component({
  selector: 'app-dynamic-icon',
  standalone: true,
  template: '<ng-template #iconHost></ng-template>',
})
export class DynamicIconComponent implements OnChanges, OnDestroy {
  @ViewChild('iconHost', { read: ViewContainerRef, static: true })
  container!: ViewContainerRef;

  @Input() icon!: Type<unknown>;
  @Input() size: number = 24;
  @Input() color: string = 'currentColor';

  private readonly envInjector = inject(EnvironmentInjector);
  private componentRef: ReturnType<ViewContainerRef['createComponent']> | null = null;

  ngOnChanges(changes: SimpleChanges): void {
    if (changes['icon'] || changes['size'] || changes['color']) {
      this.renderIcon();
    }
  }

  ngOnDestroy(): void {
    this.componentRef?.destroy();
  }

  private renderIcon(): void {
    if (!this.icon) return;

    this.container.clear();
    this.componentRef = this.container.createComponent(this.icon, {
      environmentInjector: this.envInjector,
    });

    this.componentRef.setInput('size', this.size);
    this.componentRef.setInput('color', this.color);
  }
}
