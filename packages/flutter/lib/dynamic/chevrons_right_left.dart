// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevrons-right-left` icon in every style.
///
/// Prefer the static widgets (e.g. `ChevronsRightLeftLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ChevronsRightLeftIcon extends StatelessWidget {
  /// Creates the `chevrons-right-left` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ChevronsRightLeftIcon({
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
    name: 'chevrons-right-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M2.46967 5.46967C2.76256 5.17678 3.23732 5.17678 3.53022 5.46967L9.53022 11.4697C9.82305 11.7626 9.82309 12.2373 9.53022 12.5302L3.53022 18.5302C3.23734 18.8231 2.76257 18.8231 2.46967 18.5302C2.17678 18.2373 2.17678 17.7626 2.46967 17.4697L7.9394 11.9999L2.46967 6.53022C2.17678 6.23732 2.17678 5.76256 2.46967 5.46967Z" fill="currentColor"/>
<path d="M20.4697 5.46967C20.7626 5.17678 21.2373 5.17678 21.5302 5.46967C21.8231 5.76257 21.8231 6.23734 21.5302 6.53022L16.0605 11.9999L21.5302 17.4697C21.8231 17.7626 21.8231 18.2373 21.5302 18.5302C21.2373 18.8231 20.7626 18.8231 20.4697 18.5302L14.4697 12.5302C14.1768 12.2373 14.1768 11.7626 14.4697 11.4697L20.4697 5.46967Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'chevrons-right-left',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M5.46967 8.46967C5.76256 8.17678 6.23732 8.17678 6.53022 8.46967L9.53022 11.4697C9.82305 11.7626 9.82309 12.2373 9.53022 12.5302L3.53022 18.5302C3.23734 18.8231 2.76257 18.8231 2.46967 18.5302C2.17678 18.2373 2.17678 17.7626 2.46967 17.4697L7.9394 11.9999L5.46967 9.53022C5.17678 9.23732 5.17678 8.76256 5.46967 8.46967Z" fill="currentColor"/>
<path d="M17.4697 8.46967C17.7626 8.17678 18.2373 8.17678 18.5302 8.46967C18.8231 8.76257 18.8231 9.23734 18.5302 9.53022L16.0605 11.9999L21.5302 17.4697C21.8231 17.7626 21.8231 18.2373 21.5302 18.5302C21.2373 18.8231 20.7626 18.8231 20.4697 18.5302L14.4697 12.5302C14.1768 12.2373 14.1768 11.7626 14.4697 11.4697L17.4697 8.46967Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M2.46967 5.46967C2.76256 5.17678 3.23732 5.17678 3.53022 5.46967L9.53022 11.4697C9.82305 11.7626 9.82309 12.2373 9.53022 12.5302L3.53022 18.5302C3.23734 18.8231 2.76257 18.8231 2.46967 18.5302C2.17678 18.2373 2.17678 17.7626 2.46967 17.4697L7.9394 11.9999L2.46967 6.53022C2.17678 6.23732 2.17678 5.76256 2.46967 5.46967Z" fill="currentColor"/>
<path d="M20.4697 5.46967C20.7626 5.17678 21.2373 5.17678 21.5302 5.46967C21.8231 5.76257 21.8231 6.23734 21.5302 6.53022L16.0605 11.9999L21.5302 17.4697C21.8231 17.7626 21.8231 18.2373 21.5302 18.5302C21.2373 18.8231 20.7626 18.8231 20.4697 18.5302L14.4697 12.5302C14.1768 12.2373 14.1768 11.7626 14.4697 11.4697L20.4697 5.46967Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'chevrons-right-left',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7.5 10.5L9 12L3 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.5 7.5L3 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.5 10.5L15 12L21 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19.5 7.5L21 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'chevrons-right-left',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M21 18L15 12L21 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3 18L9 12L3 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'chevrons-right-left',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M6 9L9 12L3 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 9L15 12L21 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 18L9 12L3 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M21 18L15 12L21 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'chevrons-right-left',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M2.46967 5.46967C2.76256 5.17678 3.23732 5.17678 3.53022 5.46967L9.53022 11.4697C9.82305 11.7626 9.82309 12.2373 9.53022 12.5302L3.53022 18.5302C3.23734 18.8231 2.76257 18.8231 2.46967 18.5302C2.17678 18.2373 2.17678 17.7626 2.46967 17.4697L7.9394 11.9999L2.46967 6.53022C2.17678 6.23732 2.17678 5.76256 2.46967 5.46967Z" fill="currentColor"/>
<path d="M20.4697 5.46967C20.7626 5.17678 21.2373 5.17678 21.5302 5.46967C21.8231 5.76257 21.8231 6.23734 21.5302 6.53022L16.0605 11.9999L21.5302 17.4697C21.8231 17.7626 21.8231 18.2373 21.5302 18.5302C21.2373 18.8231 20.7626 18.8231 20.4697 18.5302L14.4697 12.5302C14.1768 12.2373 14.1768 11.7626 14.4697 11.4697L20.4697 5.46967Z" fill="currentColor"/>''',
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
