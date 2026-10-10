// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `double-alt-arrow-up` icon in every style.
///
/// Prefer the static widgets (e.g. `DoubleAltArrowUpLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class DoubleAltArrowUpIcon extends StatelessWidget {
  /// Creates the `double-alt-arrow-up` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const DoubleAltArrowUpIcon({
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
    name: 'double-alt-arrow-up',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.43057 13.4881C4.70014 13.8026 5.17361 13.839 5.48811 13.5694L12 7.98781L18.5119 13.5694C18.8264 13.839 19.2999 13.8026 19.5695 13.4881C19.839 13.1736 19.8026 12.7001 19.4881 12.4306L12.4881 6.43056C12.2072 6.18981 11.7928 6.18981 11.5119 6.43056L4.51192 12.4306C4.19743 12.7001 4.161 13.1736 4.43057 13.4881Z" fill="currentColor"/>
<path d="M5.00005 17.75C4.68619 17.75 4.40553 17.5546 4.29664 17.2602C4.18774 16.9658 4.27366 16.6348 4.51196 16.4306L11.512 10.4306C11.7928 10.1898 12.2073 10.1898 12.4881 10.4306L19.4881 16.4306C19.7264 16.6348 19.8124 16.9658 19.7035 17.2602C19.5946 17.5546 19.3139 17.75 19 17.75H5.00005Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'double-alt-arrow-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.43057 13.4881C4.70014 13.8026 5.17361 13.839 5.48811 13.5694L12 7.98781L18.5119 13.5694C18.8264 13.839 19.2999 13.8026 19.5695 13.4881C19.839 13.1736 19.8026 12.7001 19.4881 12.4306L12.4881 6.43056C12.2072 6.18981 11.7928 6.18981 11.5119 6.43056L4.51192 12.4306C4.19743 12.7001 4.161 13.1736 4.43057 13.4881Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.00004 17.75C4.68618 17.75 4.40551 17.5546 4.29662 17.2602C4.18773 16.9658 4.27364 16.6348 4.51194 16.4306L11.5119 10.4306C11.7928 10.1898 12.2073 10.1898 12.4881 10.4306L19.4881 16.4306C19.7264 16.6348 19.8123 16.9658 19.7035 17.2602C19.5946 17.5546 19.3139 17.75 19 17.75H5.00004Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'double-alt-arrow-up',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19 13L12 7L10.25 8.5M5 13L7.33333 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 17L12 11L13.75 12.5M19 17L16.6667 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'double-alt-arrow-up',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19 13L12 7L5 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 17L12 11L5 17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'double-alt-arrow-up',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M19 13L12 7L5 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19 17L12 11L5 17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'double-alt-arrow-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5119 6.43056C11.7928 6.18981 12.2072 6.18981 12.4881 6.43056L19.4881 12.4306C19.8026 12.7001 19.839 13.1736 19.5695 13.4881C19.2999 13.8026 18.8264 13.839 18.5119 13.5694L12 7.98781L5.48811 13.5694C5.17361 13.839 4.70014 13.8026 4.43057 13.4881C4.161 13.1736 4.19743 12.7001 4.51192 12.4306L11.5119 6.43056ZM4.51192 16.4306L11.5119 10.4306C11.7928 10.1898 12.2072 10.1898 12.4881 10.4306L19.4881 16.4306C19.8026 16.7001 19.839 17.1736 19.5695 17.4881C19.2999 17.8026 18.8264 17.839 18.5119 17.5694L12 11.9878L5.48811 17.5694C5.17361 17.839 4.70014 17.8026 4.43057 17.4881C4.161 17.1736 4.19743 16.7001 4.51192 16.4306Z" fill="currentColor"/>''',
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
