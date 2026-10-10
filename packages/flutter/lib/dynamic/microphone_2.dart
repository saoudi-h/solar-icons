// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `microphone-2` icon in every style.
///
/// Prefer the static widgets (e.g. `Microphone2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Microphone2Icon extends StatelessWidget {
  /// Creates the `microphone-2` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Microphone2Icon({
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
    name: 'microphone-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M9.75 7.75C9.75 7.33579 9.41421 7 9 7H7.81597H6.29847C6.66598 4.17873 9.07855 2 12 2C14.9214 2 17.334 4.17873 17.7015 7H16.184L13.5 7C13.0858 7 12.75 7.33579 12.75 7.75C12.75 8.16421 13.0858 8.5 13.5 8.5L16.25 8.5H17.75V10H16.25H13.5C13.0858 10 12.75 10.3358 12.75 10.75C12.75 11.1642 13.0858 11.5 13.5 11.5H16.184H17.7015C17.334 14.3213 14.9214 16.5 12 16.5C9.07855 16.5 6.66598 14.3213 6.29847 11.5H7.81597H9C9.41421 11.5 9.75 11.1642 9.75 10.75C9.75 10.3358 9.41421 10 9 10H7.75H6.25V8.5H7.75H9C9.41421 8.5 9.75 8.16421 9.75 7.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M4 9C4.41421 9 4.75 9.33579 4.75 9.75V10.75C4.75 14.7541 7.99594 18 12 18C16.0041 18 19.25 14.7541 19.25 10.75V9.75C19.25 9.33579 19.5858 9 20 9C20.4142 9 20.75 9.33579 20.75 9.75V10.75C20.75 15.3298 17.2314 19.0879 12.75 19.4683V21.75C12.75 22.1642 12.4142 22.5 12 22.5C11.5858 22.5 11.25 22.1642 11.25 21.75V19.4683C6.7686 19.0879 3.25 15.3298 3.25 10.75V9.75C3.25 9.33579 3.58579 9 4 9Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'microphone-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20 9C20.4142 9 20.75 9.33579 20.75 9.75V10.75C20.75 15.3298 17.2314 19.0883 12.75 19.4688V21.75C12.75 22.1642 12.4142 22.5 12 22.5C11.5858 22.5 11.25 22.1642 11.25 21.75V19.4688C6.7686 19.0883 3.25 15.3298 3.25 10.75V9.75C3.25 9.33579 3.58579 9 4 9C4.41421 9 4.75 9.33579 4.75 9.75V10.75C4.75 14.7541 7.99594 18 12 18C16.0041 18 19.25 14.7541 19.25 10.75V9.75C19.25 9.33579 19.5858 9 20 9Z" fill="currentColor"/>
<path d="M9 10C9.41421 10 9.75 10.3358 9.75 10.75C9.75 11.1642 9.41421 11.5 9 11.5H6.29883L6.25 10H9Z" fill="currentColor"/>
<path d="M17.7012 11.5H13.5C13.0858 11.5 12.75 11.1642 12.75 10.75C12.75 10.3358 13.0858 10 13.5 10H17.75L17.7012 11.5Z" fill="currentColor"/>
<path d="M9 7C9.41421 7 9.75 7.33579 9.75 7.75C9.75 8.16421 9.41421 8.5 9 8.5H6.25L6.29883 7H9Z" fill="currentColor"/>
<path d="M17.75 8.5H13.5C13.0858 8.5 12.75 8.16421 12.75 7.75C12.75 7.33579 13.0858 7 13.5 7H17.7012L17.75 8.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.75 7.75C9.75 7.33579 9.41421 7 9 7H7.81597H6.29847C6.66598 4.17873 9.07855 2 12 2C14.9214 2 17.334 4.17873 17.7015 7H16.184L13.5 7C13.0858 7 12.75 7.33579 12.75 7.75C12.75 8.16421 13.0858 8.5 13.5 8.5L16.25 8.5H17.75V10H16.25H13.5C13.0858 10 12.75 10.3358 12.75 10.75C12.75 11.1642 13.0858 11.5 13.5 11.5H16.184H17.7015C17.334 14.3213 14.9214 16.5 12 16.5C9.07855 16.5 6.66598 14.3213 6.29847 11.5H7.81597H9C9.41421 11.5 9.75 11.1642 9.75 10.75C9.75 10.3358 9.41421 10 9 10H7.75H6.25V8.5H7.75H9C9.41421 8.5 9.75 8.16421 9.75 7.75Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'microphone-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8V11C17 13.7614 14.7614 16 12 16C9.23858 16 7 13.7614 7 11V8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 8L17 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 11L17 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 8L9 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 11L9 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 10V11C20 14.012 18.3354 16.6353 15.876 18M4 10V11C4 15.4183 7.58172 19 12 19" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'microphone-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8V11C17 13.7614 14.7614 16 12 16C9.23858 16 7 13.7614 7 11V8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 8L17 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 11L17 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 8L9 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 11L9 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 10V11C20 15.4183 16.4183 19 12 19C7.58172 19 4 15.4183 4 11V10" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19V22" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'microphone-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8V11C17 13.7614 14.7614 16 12 16C9.23858 16 7 13.7614 7 11V8Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13.5 8L17 8" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M13.5 11L17 11" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M7 8L9 8" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M7 11L9 11" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20 10V11C20 15.4183 16.4183 19 12 19M4 10V11C4 15.4183 7.58172 19 12 19M12 19V22" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'microphone-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.25 8C6.25 4.82436 8.82436 2.25 12 2.25C15.1756 2.25 17.75 4.82436 17.75 8V11C17.75 14.1756 15.1756 16.75 12 16.75C8.82436 16.75 6.25 14.1756 6.25 11V8ZM7.81597 7.25H9C9.41421 7.25 9.75 7.58579 9.75 8C9.75 8.41421 9.41421 8.75 9 8.75H7.75V10.25H9C9.41421 10.25 9.75 10.5858 9.75 11C9.75 11.4142 9.41421 11.75 9 11.75H7.81597C8.1702 13.7395 9.9087 15.25 12 15.25C14.0913 15.25 15.8298 13.7395 16.184 11.75L13.5 11.75C13.0858 11.75 12.75 11.4142 12.75 11C12.75 10.5858 13.0858 10.25 13.5 10.25L16.25 10.25V8.75H13.5C13.0858 8.75 12.75 8.41421 12.75 8C12.75 7.58579 13.0858 7.25 13.5 7.25H16.184C15.8298 5.26049 14.0913 3.75 12 3.75C9.9087 3.75 8.1702 5.26049 7.81597 7.25ZM4 9.25C4.41421 9.25 4.75 9.58579 4.75 10V11C4.75 15.0041 7.99594 18.25 12 18.25C16.0041 18.25 19.25 15.0041 19.25 11V10C19.25 9.58579 19.5858 9.25 20 9.25C20.4142 9.25 20.75 9.58579 20.75 10V11C20.75 15.5798 17.2314 19.3379 12.75 19.7183V22C12.75 22.4142 12.4142 22.75 12 22.75C11.5858 22.75 11.25 22.4142 11.25 22V19.7183C6.7686 19.3379 3.25 15.5798 3.25 11V10C3.25 9.58579 3.58579 9.25 4 9.25Z" fill="currentColor"/>''',
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
