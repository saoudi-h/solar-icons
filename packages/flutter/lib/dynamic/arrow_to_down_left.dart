// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-to-down-left` icon in every style.
///
/// Prefer the static widgets (e.g. `ArrowToDownLeftLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ArrowToDownLeftIcon extends StatelessWidget {
  /// Creates the `arrow-to-down-left` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ArrowToDownLeftIcon({
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
    name: 'arrow-to-down-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5303 13.9697C17.8232 14.2626 17.8232 14.7374 17.5303 15.0303L12.5303 20.0303C12.2374 20.3232 11.7626 20.3232 11.4697 20.0303L6.46967 15.0303C6.17678 14.7374 6.17678 14.2626 6.46967 13.9697C6.76256 13.6768 7.23744 13.6768 7.53033 13.9697L11.25 17.6893L11.25 9.5C11.25 8.78668 11.0298 7.70001 10.3913 6.81323C9.7804 5.96468 8.75556 5.25 7 5.25C6.58579 5.25 6.25 4.91421 6.25 4.5C6.25 4.08579 6.58579 3.75 7 3.75C9.24444 3.75 10.7196 4.70198 11.6087 5.93677C12.4702 7.13332 12.75 8.54665 12.75 9.5L12.75 17.6893L16.4697 13.9697C16.7626 13.6768 17.2374 13.6768 17.5303 13.9697Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'arrow-to-down-left',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5303 13.9697C17.8232 14.2626 17.8232 14.7374 17.5303 15.0303L12.5303 20.0303C12.2374 20.3232 11.7626 20.3232 11.4697 20.0303L6.46967 15.0303C6.17678 14.7374 6.17678 14.2626 6.46967 13.9697C6.76256 13.6768 7.23744 13.6768 7.53033 13.9697L12 18.4393L16.4697 13.9697C16.7626 13.6768 17.2374 13.6768 17.5303 13.9697Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M12.75 9.5C12.75 8.54665 12.4702 7.13332 11.6087 5.93677C10.7196 4.70198 9.24444 3.75 7 3.75C6.58579 3.75 6.25 4.08579 6.25 4.5C6.25 4.91421 6.58579 5.25 7 5.25C8.75556 5.25 9.7804 5.96468 10.3913 6.81323C11.0298 7.70002 11.25 8.78668 11.25 9.5L11.25 17.6893L12 18.4393L12.75 17.6893V9.5Z" fill="currentColor"/>
<path d="M12.1977 20.2236C12.0432 20.2656 11.878 20.2575 11.7278 20.199C11.8122 20.2319 11.904 20.25 12 20.25C12.0684 20.25 12.1347 20.2408 12.1977 20.2236Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'arrow-to-down-left',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7 14.5L12 19.5L17 14.5M12 19.5L12 13M12 9.5C12 7.83333 11 4.5 7 4.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'arrow-to-down-left',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M7 14.5L12 19.5L17 14.5M12 19.5C12 19.5 12 11.1667 12 9.5C12 7.83333 11 4.5 7 4.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'arrow-to-down-left',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M17 14.5L12 19.5L7 14.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 19.5C12 19.5 12 11.1667 12 9.5C12 7.83333 11 4.5 7 4.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'arrow-to-down-left',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5303 13.9697C17.8232 14.2626 17.8232 14.7374 17.5303 15.0303L12.5303 20.0303C12.2374 20.3232 11.7626 20.3232 11.4697 20.0303L6.46967 15.0303C6.17678 14.7374 6.17678 14.2626 6.46967 13.9697C6.76256 13.6768 7.23744 13.6768 7.53033 13.9697L11.25 17.6893L11.25 9.5C11.25 8.78668 11.0298 7.70001 10.3913 6.81323C9.7804 5.96468 8.75556 5.25 7 5.25C6.58579 5.25 6.25 4.91421 6.25 4.5C6.25 4.08579 6.58579 3.75 7 3.75C9.24444 3.75 10.7196 4.70198 11.6087 5.93677C12.4702 7.13332 12.75 8.54665 12.75 9.5L12.75 17.6893L16.4697 13.9697C16.7626 13.6768 17.2374 13.6768 17.5303 13.9697Z" fill="currentColor"/>''',
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
