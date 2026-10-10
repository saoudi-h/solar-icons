// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-to-down-right` icon in every style.
///
/// Prefer the static widgets (e.g. `ArrowToDownRightLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ArrowToDownRightIcon extends StatelessWidget {
  /// Creates the `arrow-to-down-right` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ArrowToDownRightIcon({
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
    name: 'arrow-to-down-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.46967 13.9697C6.17678 14.2626 6.17678 14.7374 6.46967 15.0303L11.4697 20.0303C11.7626 20.3232 12.2374 20.3232 12.5303 20.0303L17.5303 15.0303C17.8232 14.7374 17.8232 14.2626 17.5303 13.9697C17.2374 13.6768 16.7626 13.6768 16.4697 13.9697L12.75 17.6893L12.75 9.5C12.75 8.78668 12.9702 7.70001 13.6087 6.81323C14.2196 5.96468 15.2444 5.25 17 5.25C17.4142 5.25 17.75 4.91421 17.75 4.5C17.75 4.08579 17.4142 3.75 17 3.75C14.7556 3.75 13.2804 4.70198 12.3913 5.93677C11.5298 7.13332 11.25 8.54665 11.25 9.5L11.25 17.6893L7.53033 13.9697C7.23744 13.6768 6.76256 13.6768 6.46967 13.9697Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'arrow-to-down-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.46967 13.9697C6.17678 14.2626 6.17678 14.7374 6.46967 15.0303L11.4697 20.0303C11.7626 20.3232 12.2374 20.3232 12.5303 20.0303L17.5303 15.0303C17.8232 14.7374 17.8232 14.2626 17.5303 13.9697C17.2374 13.6768 16.7626 13.6768 16.4697 13.9697L12 18.4393L7.53033 13.9697C7.23744 13.6768 6.76256 13.6768 6.46967 13.9697Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M11.25 9.5C11.25 8.54665 11.5298 7.13332 12.3913 5.93677C13.2804 4.70198 14.7556 3.75 17 3.75C17.4142 3.75 17.75 4.08579 17.75 4.5C17.75 4.91421 17.4142 5.25 17 5.25C15.2444 5.25 14.2196 5.96468 13.6087 6.81323C12.9702 7.70002 12.75 8.78668 12.75 9.5L12.75 17.6893L12 18.4393L11.25 17.6893V9.5Z" fill="currentColor"/>
<path d="M11.8023 20.2236C11.9568 20.2656 12.122 20.2575 12.2722 20.199C12.1879 20.2319 12.096 20.25 12 20.25C11.9316 20.25 11.8653 20.2408 11.8023 20.2236Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'arrow-to-down-right',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M17 14.5L12 19.5L7 14.5M12 19.5L12 13M12 9.5C12 7.83333 13 4.5 17 4.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'arrow-to-down-right',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M17 14.5L12 19.5L7 14.5M12 19.5C12 19.5 12 11.1667 12 9.5C12 7.83333 13 4.5 17 4.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'arrow-to-down-right',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7 14.5L12 19.5L17 14.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 19.5C12 19.5 12 11.1667 12 9.5C12 7.83333 13 4.5 17 4.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'arrow-to-down-right',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.46967 13.9697C6.17678 14.2626 6.17678 14.7374 6.46967 15.0303L11.4697 20.0303C11.7626 20.3232 12.2374 20.3232 12.5303 20.0303L17.5303 15.0303C17.8232 14.7374 17.8232 14.2626 17.5303 13.9697C17.2374 13.6768 16.7626 13.6768 16.4697 13.9697L12.75 17.6893L12.75 9.5C12.75 8.78668 12.9702 7.70001 13.6087 6.81323C14.2196 5.96468 15.2444 5.25 17 5.25C17.4142 5.25 17.75 4.91421 17.75 4.5C17.75 4.08579 17.4142 3.75 17 3.75C14.7556 3.75 13.2804 4.70198 12.3913 5.93677C11.5298 7.13332 11.25 8.54665 11.25 9.5L11.25 17.6893L7.53033 13.9697C7.23744 13.6768 6.76256 13.6768 6.46967 13.9697Z" fill="currentColor"/>''',
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
