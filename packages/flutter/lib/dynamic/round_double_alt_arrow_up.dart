// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-double-alt-arrow-up` icon in every style.
///
/// Prefer the static widgets (e.g. `RoundDoubleAltArrowUpLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class RoundDoubleAltArrowUpIcon extends StatelessWidget {
  /// Creates the `round-double-alt-arrow-up` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const RoundDoubleAltArrowUpIcon({
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
    name: 'round-double-alt-arrow-up',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12ZM8.46967 14.9697C8.17678 15.2626 8.17678 15.7374 8.46967 16.0303C8.76256 16.3232 9.23744 16.3232 9.53033 16.0303L12 13.5607L14.4697 16.0303C14.7626 16.3232 15.2374 16.3232 15.5303 16.0303C15.8232 15.7374 15.8232 15.2626 15.5303 14.9697L12.5303 11.9697C12.2374 11.6768 11.7626 11.6768 11.4697 11.9697L8.46967 14.9697ZM8.46967 12.0303C8.17678 11.7374 8.17678 11.2626 8.46967 10.9697L11.4697 7.96967C11.7626 7.67678 12.2374 7.67678 12.5303 7.96967L15.5303 10.9697C15.8232 11.2626 15.8232 11.7374 15.5303 12.0303C15.2374 12.3232 14.7626 12.3232 14.4697 12.0303L12 9.56066L9.53033 12.0303C9.23744 12.3232 8.76256 12.3232 8.46967 12.0303Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'round-double-alt-arrow-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.46967 14.9697C8.17678 15.2626 8.17678 15.7374 8.46967 16.0303C8.76256 16.3232 9.23744 16.3232 9.53033 16.0303L12 13.5607L14.4697 16.0303C14.7626 16.3232 15.2374 16.3232 15.5303 16.0303C15.8232 15.7374 15.8232 15.2626 15.5303 14.9697L12.5303 11.9697C12.2374 11.6768 11.7626 11.6768 11.4697 11.9697L8.46967 14.9697Z" fill="currentColor"/>
<path d="M8.46967 10.9697C8.17678 11.2626 8.17678 11.7374 8.46967 12.0303C8.76256 12.3232 9.23744 12.3232 9.53033 12.0303L12 9.56066L14.4697 12.0303C14.7626 12.3232 15.2374 12.3232 15.5303 12.0303C15.8232 11.7374 15.8232 11.2626 15.5303 10.9697L12.5303 7.96967C12.2374 7.67678 11.7626 7.67678 11.4697 7.96967L8.46967 10.9697Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'round-double-alt-arrow-up',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 15.5L12 12.5L15 15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 11.5L12 8.5L15 11.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'round-double-alt-arrow-up',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 15.5L12 12.5L15 15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 11.5L12 8.5L15 11.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'round-double-alt-arrow-up',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 15.5L12 12.5L15 15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 11.5L12 8.5L15 11.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'round-double-alt-arrow-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM12 9.56066L9.53033 12.0303C9.23744 12.3232 8.76256 12.3232 8.46967 12.0303C8.17678 11.7374 8.17678 11.2626 8.46967 10.9697L11.4697 7.96967C11.7626 7.67678 12.2374 7.67678 12.5303 7.96967L15.5303 10.9697C15.8232 11.2626 15.8232 11.7374 15.5303 12.0303C15.2374 12.3232 14.7626 12.3232 14.4697 12.0303L12 9.56066ZM12 13.5607L9.53033 16.0303C9.23744 16.3232 8.76256 16.3232 8.46967 16.0303C8.17678 15.7374 8.17678 15.2626 8.46967 14.9697L11.4697 11.9697C11.7626 11.6768 12.2374 11.6768 12.5303 11.9697L15.5303 14.9697C15.8232 15.2626 15.8232 15.7374 15.5303 16.0303C15.2374 16.3232 14.7626 16.3232 14.4697 16.0303L12 13.5607Z" fill="currentColor"/>''',
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
