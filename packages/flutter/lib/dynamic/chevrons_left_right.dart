// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevrons-left-right` icon in every style.
///
/// Prefer the static widgets (e.g. `ChevronsLeftRightLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ChevronsLeftRightIcon extends StatelessWidget {
  /// Creates the `chevrons-left-right` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ChevronsLeftRightIcon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

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
    name: 'chevrons-left-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8.46967 5.46967C8.76256 5.17678 9.23732 5.17678 9.53022 5.46967C9.82305 5.76257 9.82309 6.23734 9.53022 6.53022L4.06049 11.9999L9.53022 17.4697C9.82305 17.7626 9.82309 18.2373 9.53022 18.5302C9.23734 18.8231 8.76257 18.8231 8.46967 18.5302L2.46967 12.5302C2.17678 12.2373 2.17678 11.7626 2.46967 11.4697L8.46967 5.46967Z" fill="currentColor"/>
<path d="M14.4697 5.46967C14.7626 5.17678 15.2373 5.17678 15.5302 5.46967L21.5302 11.4697C21.8231 11.7626 21.8231 12.2373 21.5302 12.5302L15.5302 18.5302C15.2373 18.8231 14.7626 18.8231 14.4697 18.5302C14.1768 18.2373 14.1768 17.7626 14.4697 17.4697L19.9394 11.9999L14.4697 6.53022C14.1768 6.23732 14.1768 5.76256 14.4697 5.46967Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'chevrons-left-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M5.46967 8.46967C5.76256 8.17678 6.23732 8.17678 6.53022 8.46967C6.82305 8.76257 6.82309 9.23734 6.53022 9.53022L4.06049 11.9999L9.53022 17.4697C9.82305 17.7626 9.82309 18.2373 9.53022 18.5302C9.23734 18.8231 8.76257 18.8231 8.46967 18.5302L2.46967 12.5302C2.17678 12.2373 2.17678 11.7626 2.46967 11.4697L5.46967 8.46967Z" fill="currentColor"/>
<path d="M17.4697 8.46967C17.7626 8.17678 18.2373 8.17678 18.5302 8.46967L21.5302 11.4697C21.8231 11.7626 21.8231 12.2373 21.5302 12.5302L15.5302 18.5302C15.2373 18.8231 14.7626 18.8231 14.4697 18.5302C14.1768 18.2373 14.1768 17.7626 14.4697 17.4697L19.9394 11.9999L17.4697 9.53022C17.1768 9.23732 17.1768 8.76256 17.4697 8.46967Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M8.46967 5.46967C8.76256 5.17678 9.23732 5.17678 9.53022 5.46967C9.82305 5.76257 9.82309 6.23734 9.53022 6.53022L4.06049 11.9999L9.53022 17.4697C9.82305 17.7626 9.82309 18.2373 9.53022 18.5302C9.23734 18.8231 8.76257 18.8231 8.46967 18.5302L2.46967 12.5302C2.17678 12.2373 2.17678 11.7626 2.46967 11.4697L8.46967 5.46967Z" fill="currentColor"/>
<path d="M14.4697 5.46967C14.7626 5.17678 15.2373 5.17678 15.5302 5.46967L21.5302 11.4697C21.8231 11.7626 21.8231 12.2373 21.5302 12.5302L15.5302 18.5302C15.2373 18.8231 14.7626 18.8231 14.4697 18.5302C14.1768 18.2373 14.1768 17.7626 14.4697 17.4697L19.9394 11.9999L14.4697 6.53022C14.1768 6.23732 14.1768 5.76256 14.4697 5.46967Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'chevrons-left-right',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19.5 10.5L21 12L15 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.5 7.5L15 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.5 10.5L3 12L9 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7.5 7.5L9 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'chevrons-left-right',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M15 6L21 12L15 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 6L3 12L9 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'chevrons-left-right',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M18 9L21 12L15 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 9L3 12L9 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15 18L21 12L15 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M9 18L3 12L9 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'chevrons-left-right',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M8.46967 5.46967C8.76256 5.17678 9.23732 5.17678 9.53022 5.46967C9.82305 5.76257 9.82309 6.23734 9.53022 6.53022L4.06049 11.9999L9.53022 17.4697C9.82305 17.7626 9.82309 18.2373 9.53022 18.5302C9.23734 18.8231 8.76257 18.8231 8.46967 18.5302L2.46967 12.5302C2.17678 12.2373 2.17678 11.7626 2.46967 11.4697L8.46967 5.46967Z" fill="currentColor"/>
<path d="M14.4697 5.46967C14.7626 5.17678 15.2373 5.17678 15.5302 5.46967L21.5302 11.4697C21.8231 11.7626 21.8231 12.2373 21.5302 12.5302L15.5302 18.5302C15.2373 18.8231 14.7626 18.8231 14.4697 18.5302C14.1768 18.2373 14.1768 17.7626 14.4697 17.4697L19.9394 11.9999L14.4697 6.53022C14.1768 6.23732 14.1768 5.76256 14.4697 5.46967Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

  @override
  Widget build(BuildContext context) {
    return SolarIcon(
      _data,
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
