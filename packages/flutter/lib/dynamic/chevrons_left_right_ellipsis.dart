// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevrons-left-right-ellipsis` icon in every style.
///
/// Prefer the static widgets (e.g. `ChevronsLeftRightEllipsisLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ChevronsLeftRightEllipsisIcon extends StatelessWidget {
  /// Creates the `chevrons-left-right-ellipsis` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ChevronsLeftRightEllipsisIcon({
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
    name: 'chevrons-left-right-ellipsis',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M7.46967 5.46967C7.76256 5.17678 8.23732 5.17678 8.53022 5.46967C8.82305 5.76257 8.82309 6.23734 8.53022 6.53022L3.06049 11.9999L8.53022 17.4697C8.82305 17.7626 8.82309 18.2373 8.53022 18.5302C8.23734 18.8231 7.76257 18.8231 7.46967 18.5302L1.46967 12.5302C1.17678 12.2373 1.17678 11.7626 1.46967 11.4697L7.46967 5.46967Z" fill="currentColor"/>
<path d="M15.4697 5.46967C15.7626 5.17678 16.2373 5.17678 16.5302 5.46967L22.5302 11.4697C22.8231 11.7626 22.8231 12.2373 22.5302 12.5302L16.5302 18.5302C16.2373 18.8231 15.7626 18.8231 15.4697 18.5302C15.1768 18.2373 15.1768 17.7626 15.4697 17.4697L20.9394 11.9999L15.4697 6.53022C15.1768 6.23732 15.1768 5.76256 15.4697 5.46967Z" fill="currentColor"/>
<path d="M8.00873 11.2499C8.42292 11.25 8.75873 11.5857 8.75873 11.9999C8.7587 12.4141 8.4229 12.7499 8.00873 12.7499H7.99994C7.58575 12.7499 7.24997 12.4141 7.24994 11.9999C7.24994 11.5857 7.58573 11.2499 7.99994 11.2499H8.00873Z" fill="currentColor"/>
<path d="M11.9999 11.2499C12.4141 11.25 12.7499 11.5857 12.7499 11.9999C12.7499 12.4141 12.4141 12.7499 11.9999 12.7499H11.9912C11.577 12.7499 11.2412 12.4141 11.2412 11.9999C11.2412 11.5857 11.5769 11.2499 11.9912 11.2499H11.9999Z" fill="currentColor"/>
<path d="M15.9999 11.2499C16.4141 11.25 16.7499 11.5857 16.7499 11.9999C16.7499 12.4141 16.4141 12.7499 15.9999 12.7499H15.9912C15.577 12.7499 15.2412 12.4141 15.2412 11.9999C15.2412 11.5857 15.5769 11.2499 15.9912 11.2499H15.9999Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'chevrons-left-right-ellipsis',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7.46967 5.46967C7.76256 5.17678 8.23732 5.17678 8.53022 5.46967C8.82305 5.76257 8.82309 6.23734 8.53022 6.53022L3.06049 11.9999L8.53022 17.4697C8.82305 17.7626 8.82309 18.2373 8.53022 18.5302C8.23734 18.8231 7.76257 18.8231 7.46967 18.5302L1.46967 12.5302C1.17678 12.2373 1.17678 11.7626 1.46967 11.4697L7.46967 5.46967Z" fill="currentColor"/>
<path d="M15.4697 5.46967C15.7626 5.17678 16.2373 5.17678 16.5302 5.46967L22.5302 11.4697C22.8231 11.7626 22.8231 12.2373 22.5302 12.5302L16.5302 18.5302C16.2373 18.8231 15.7626 18.8231 15.4697 18.5302C15.1768 18.2373 15.1768 17.7626 15.4697 17.4697L20.9394 11.9999L15.4697 6.53022C15.1768 6.23732 15.1768 5.76256 15.4697 5.46967Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M8.00879 11.25C8.423 11.25 8.75879 11.5858 8.75879 12C8.75879 12.4142 8.423 12.75 8.00879 12.75H8C7.58579 12.75 7.25 12.4142 7.25 12C7.25 11.5858 7.58579 11.25 8 11.25H8.00879Z" fill="currentColor"/>
<path d="M12 11.25C12.4142 11.25 12.75 11.5858 12.75 12C12.75 12.4142 12.4142 12.75 12 12.75H11.9912C11.577 12.75 11.2412 12.4142 11.2412 12C11.2412 11.5858 11.577 11.25 11.9912 11.25H12Z" fill="currentColor"/>
<path d="M16 11.25C16.4142 11.25 16.75 11.5858 16.75 12C16.75 12.4142 16.4142 12.75 16 12.75H15.9912C15.577 12.75 15.2412 12.4142 15.2412 12C15.2412 11.5858 15.577 11.25 15.9912 11.25H16Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'chevrons-left-right-ellipsis',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 12H8.009M11.991 12H12M15.991 12H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 10.5L22 12L16 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17.5 7.5L16 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3.5 10.5L2 12L8 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6.5 7.5L8 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'chevrons-left-right-ellipsis',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16 6L22 12L16 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8 6L2 12L8 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8 12H8.009M11.991 12H12M15.991 12H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'chevrons-left-right-ellipsis',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M16 6L22 12L16 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8 6L2 12L8 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M8 12H8.009M11.991 12H12M15.991 12H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'chevrons-left-right-ellipsis',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M7.46967 5.46967C7.76256 5.17678 8.23732 5.17678 8.53022 5.46967C8.82305 5.76257 8.82309 6.23734 8.53022 6.53022L3.06049 11.9999L8.53022 17.4697C8.82305 17.7626 8.82309 18.2373 8.53022 18.5302C8.23734 18.8231 7.76257 18.8231 7.46967 18.5302L1.46967 12.5302C1.17678 12.2373 1.17678 11.7626 1.46967 11.4697L7.46967 5.46967Z" fill="currentColor"/>
<path d="M15.4697 5.46967C15.7626 5.17678 16.2373 5.17678 16.5302 5.46967L22.5302 11.4697C22.8231 11.7626 22.8231 12.2373 22.5302 12.5302L16.5302 18.5302C16.2373 18.8231 15.7626 18.8231 15.4697 18.5302C15.1768 18.2373 15.1768 17.7626 15.4697 17.4697L20.9394 11.9999L15.4697 6.53022C15.1768 6.23732 15.1768 5.76256 15.4697 5.46967Z" fill="currentColor"/>
<path d="M8.00873 11.2499C8.42292 11.25 8.75873 11.5857 8.75873 11.9999C8.7587 12.4141 8.4229 12.7499 8.00873 12.7499H7.99994C7.58575 12.7499 7.24997 12.4141 7.24994 11.9999C7.24994 11.5857 7.58573 11.2499 7.99994 11.2499H8.00873Z" fill="currentColor"/>
<path d="M11.9999 11.2499C12.4141 11.25 12.7499 11.5857 12.7499 11.9999C12.7499 12.4141 12.4141 12.7499 11.9999 12.7499H11.9912C11.577 12.7499 11.2412 12.4141 11.2412 11.9999C11.2412 11.5857 11.5769 11.2499 11.9912 11.2499H11.9999Z" fill="currentColor"/>
<path d="M15.9999 11.2499C16.4141 11.25 16.7499 11.5857 16.7499 11.9999C16.7499 12.4141 16.4141 12.7499 15.9999 12.7499H15.9912C15.577 12.7499 15.2412 12.4141 15.2412 11.9999C15.2412 11.5857 15.5769 11.2499 15.9912 11.2499H15.9999Z" fill="currentColor"/>''',
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
