// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `microphone-3` icon in every style.
///
/// Prefer the static widgets (e.g. `Microphone3LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Microphone3Icon extends StatelessWidget {
  /// Creates the `microphone-3` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Microphone3Icon({
    super.key,
    this.style,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].
  final SolarIconStyle? style;

  /// Width and height.
  final double? size;

  /// Primary color.
  final Color? color;

  /// Stroke width for stroked styles.
  final double? strokeWidth;

  /// Accent color for duotone styles.
  final Color? secondaryColor;

  /// Accent opacity for duotone styles, from 0 to 1.
  final double? secondaryOpacity;

  /// Accessibility label.
  final String? semanticLabel;

  /// When true, ignores [SolarProvider] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'microphone-3',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4 9C4.41421 9 4.75 9.33579 4.75 9.75V10.75C4.75 14.7541 7.99594 18 12 18C16.0041 18 19.25 14.7541 19.25 10.75V9.75C19.25 9.33579 19.5858 9 20 9C20.4142 9 20.75 9.33579 20.75 9.75V10.75C20.75 15.3298 17.2314 19.0879 12.75 19.4683V21.75C12.75 22.1642 12.4142 22.5 12 22.5C11.5858 22.5 11.25 22.1642 11.25 21.75V19.4683C6.7686 19.0879 3.25 15.3298 3.25 10.75V9.75C3.25 9.33579 3.58579 9 4 9Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C8.82436 2 6.25 4.57436 6.25 7.75V10.75C6.25 13.9256 8.82436 16.5 12 16.5C15.1756 16.5 17.75 13.9256 17.75 10.75V7.75C17.75 4.57436 15.1756 2 12 2ZM14 11.5C14.4142 11.5 14.75 11.1642 14.75 10.75C14.75 10.3358 14.4142 10 14 10H10C9.58579 10 9.25 10.3358 9.25 10.75C9.25 11.1642 9.58579 11.5 10 11.5H14ZM13.75 7.75C13.75 8.16421 13.4142 8.5 13 8.5H11C10.5858 8.5 10.25 8.16421 10.25 7.75C10.25 7.33579 10.5858 7 11 7H13C13.4142 7 13.75 7.33579 13.75 7.75Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'microphone-3',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20 9C20.4142 9 20.75 9.33579 20.75 9.75V10.75C20.75 15.3298 17.2314 19.0883 12.75 19.4688V21.75C12.75 22.1642 12.4142 22.5 12 22.5C11.5858 22.5 11.25 22.1642 11.25 21.75V19.4688C6.7686 19.0883 3.25 15.3298 3.25 10.75V9.75C3.25 9.33579 3.58579 9 4 9C4.41421 9 4.75 9.33579 4.75 9.75V10.75C4.75 14.7541 7.99594 18 12 18C16.0041 18 19.25 14.7541 19.25 10.75V9.75C19.25 9.33579 19.5858 9 20 9Z" fill="currentColor"/>
<path d="M14 10C14.4142 10 14.75 10.3358 14.75 10.75C14.75 11.1642 14.4142 11.5 14 11.5H10C9.58579 11.5 9.25 11.1642 9.25 10.75C9.25 10.3358 9.58579 10 10 10H14Z" fill="currentColor"/>
<path d="M13 7C13.4142 7 13.75 7.33579 13.75 7.75C13.75 8.16421 13.4142 8.5 13 8.5H11C10.5858 8.5 10.25 8.16421 10.25 7.75C10.25 7.33579 10.5858 7 11 7H13Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M12 2C8.82436 2 6.25 4.57436 6.25 7.75V10.75C6.25 13.9256 8.82436 16.5 12 16.5C15.1756 16.5 17.75 13.9256 17.75 10.75V7.75C17.75 4.57436 15.1756 2 12 2ZM14 11.5C14.4142 11.5 14.75 11.1642 14.75 10.75C14.75 10.3358 14.4142 10 14 10H10C9.58579 10 9.25 10.3358 9.25 10.75C9.25 11.1642 9.58579 11.5 10 11.5H14ZM13.75 7.75C13.75 8.16421 13.4142 8.5 13 8.5H11C10.5858 8.5 10.25 8.16421 10.25 7.75C10.25 7.33579 10.5858 7 11 7H13C13.4142 7 13.75 7.33579 13.75 7.75Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'microphone-3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8V11C17 13.7614 14.7614 16 12 16C9.23858 16 7 13.7614 7 11V8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 8H13" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 11L14 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 10V11C20 14.012 18.3354 16.6353 15.876 18M4 10V11C4 15.4183 7.58172 19 12 19" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19V22" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'microphone-3',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8V11C17 13.7614 14.7614 16 12 16C9.23858 16 7 13.7614 7 11V8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 8H13" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 11L14 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 10V11C20 15.4183 16.4183 19 12 19C7.58172 19 4 15.4183 4 11V10" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19V22" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'microphone-3',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8V11C17 13.7614 14.7614 16 12 16C9.23858 16 7 13.7614 7 11V8Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M11 8H13" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 11L14 11" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20 10V11C20 15.4183 16.4183 19 12 19M4 10V11C4 15.4183 7.58172 19 12 19M12 19V22" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'microphone-3',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.25 8C6.25 4.82436 8.82436 2.25 12 2.25C15.1756 2.25 17.75 4.82436 17.75 8V11C17.75 14.1756 15.1756 16.75 12 16.75C8.82436 16.75 6.25 14.1756 6.25 11V8ZM12 3.75C9.65279 3.75 7.75 5.65279 7.75 8V11C7.75 13.3472 9.65279 15.25 12 15.25C14.3472 15.25 16.25 13.3472 16.25 11V8C16.25 5.65279 14.3472 3.75 12 3.75ZM10.25 8C10.25 7.58579 10.5858 7.25 11 7.25H13C13.4142 7.25 13.75 7.58579 13.75 8C13.75 8.41421 13.4142 8.75 13 8.75H11C10.5858 8.75 10.25 8.41421 10.25 8ZM4 9.25C4.41421 9.25 4.75 9.58579 4.75 10V11C4.75 15.0041 7.99594 18.25 12 18.25C16.0041 18.25 19.25 15.0041 19.25 11V10C19.25 9.58579 19.5858 9.25 20 9.25C20.4142 9.25 20.75 9.58579 20.75 10V11C20.75 15.5798 17.2314 19.3379 12.75 19.7183V22C12.75 22.4142 12.4142 22.75 12 22.75C11.5858 22.75 11.25 22.4142 11.25 22V19.7183C6.7686 19.3379 3.25 15.5798 3.25 11V10C3.25 9.58579 3.58579 9.25 4 9.25ZM9.25 11C9.25 10.5858 9.58579 10.25 10 10.25H14C14.4142 10.25 14.75 10.5858 14.75 11C14.75 11.4142 14.4142 11.75 14 11.75H10C9.58579 11.75 9.25 11.4142 9.25 11Z" fill="currentColor"/>''',
  );

  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback = isolated
        ? SolarIconStyle.linear
        : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
      size: size,
      color: color,
      strokeWidth: strokeWidth,
      secondaryColor: secondaryColor,
      secondaryOpacity: secondaryOpacity,
      semanticLabel: semanticLabel,
      isolated: isolated,
    );
  }
}
