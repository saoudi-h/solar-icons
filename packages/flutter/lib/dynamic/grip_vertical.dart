// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grip-vertical` icon in every style.
///
/// Prefer the static widgets (e.g. `GripVerticalLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class GripVerticalIcon extends StatelessWidget {
  /// Creates the `grip-vertical` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const GripVerticalIcon({
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
    name: 'grip-vertical',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8.50391 17.5C9.33233 17.5 10.0039 18.1716 10.0039 19C10.0039 19.8284 9.33233 20.5 8.50391 20.5C7.67548 20.5 7.00391 19.8284 7.00391 19C7.00391 18.1716 7.67548 17.5 8.50391 17.5Z" fill="currentColor"/>
<path d="M15.5117 17.5C16.3401 17.5 17.0117 18.1716 17.0117 19C17.0117 19.8284 16.3401 20.5 15.5117 20.5C14.6833 20.5 14.0117 19.8284 14.0117 19C14.0117 18.1716 14.6833 17.5 15.5117 17.5Z" fill="currentColor"/>
<path d="M8.50391 10.5C9.33233 10.5 10.0039 11.1716 10.0039 12C10.0039 12.8284 9.33233 13.5 8.50391 13.5C7.67548 13.5 7.00391 12.8284 7.00391 12C7.00391 11.1716 7.67548 10.5 8.50391 10.5Z" fill="currentColor"/>
<path d="M15.5117 10.5C16.3401 10.5 17.0117 11.1716 17.0117 12C17.0117 12.8284 16.3401 13.5 15.5117 13.5C14.6833 13.5 14.0117 12.8284 14.0117 12C14.0117 11.1716 14.6833 10.5 15.5117 10.5Z" fill="currentColor"/>
<path d="M8.48828 3.5C9.31671 3.5 9.98828 4.17157 9.98828 5C9.98828 5.82843 9.31671 6.5 8.48828 6.5C7.65985 6.5 6.98828 5.82843 6.98828 5C6.98828 4.17157 7.65985 3.5 8.48828 3.5Z" fill="currentColor"/>
<path d="M15.4961 3.5C16.3245 3.5 16.9961 4.17157 16.9961 5C16.9961 5.82843 16.3245 6.5 15.4961 6.5C14.6677 6.5 13.9961 5.82843 13.9961 5C13.9961 4.17157 14.6677 3.5 15.4961 3.5Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'grip-vertical',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.50391 17.5C9.33233 17.5 10.0039 18.1716 10.0039 19C10.0039 19.8284 9.33233 20.5 8.50391 20.5C7.67548 20.5 7.00391 19.8284 7.00391 19C7.00391 18.1716 7.67548 17.5 8.50391 17.5Z" fill="currentColor"/>
<path d="M15.5117 17.5C16.3401 17.5 17.0117 18.1716 17.0117 19C17.0117 19.8284 16.3401 20.5 15.5117 20.5C14.6833 20.5 14.0117 19.8284 14.0117 19C14.0117 18.1716 14.6833 17.5 15.5117 17.5Z" fill="currentColor"/>
<path d="M8.48828 3.5C9.31671 3.5 9.98828 4.17157 9.98828 5C9.98828 5.82843 9.31671 6.5 8.48828 6.5C7.65985 6.5 6.98828 5.82843 6.98828 5C6.98828 4.17157 7.65985 3.5 8.48828 3.5Z" fill="currentColor"/>
<path d="M15.4961 3.5C16.3245 3.5 16.9961 4.17157 16.9961 5C16.9961 5.82843 16.3245 6.5 15.4961 6.5C14.6677 6.5 13.9961 5.82843 13.9961 5C13.9961 4.17157 14.6677 3.5 15.4961 3.5Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M8.50391 10.5C9.33233 10.5 10.0039 11.1716 10.0039 12C10.0039 12.8284 9.33233 13.5 8.50391 13.5C7.67548 13.5 7.00391 12.8284 7.00391 12C7.00391 11.1716 7.67548 10.5 8.50391 10.5Z" fill="currentColor"/>
<path d="M15.5117 10.5C16.3401 10.5 17.0117 11.1716 17.0117 12C17.0117 12.8284 16.3401 13.5 15.5117 13.5C14.6833 13.5 14.0117 12.8284 14.0117 12C14.0117 11.1716 14.6833 10.5 15.5117 10.5Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'grip-vertical',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="8.48828" cy="5" r="0.75" transform="rotate(-90 8.48828 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.48828" cy="12" r="0.75" transform="rotate(-90 8.48828 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.50391" cy="19" r="0.75" transform="rotate(-90 8.50391 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15.4961" cy="5" r="0.75" transform="rotate(-90 15.4961 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15.4961" cy="12" r="0.75" transform="rotate(-90 15.4961 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15.5117" cy="19" r="0.75" transform="rotate(-90 15.5117 19)" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'grip-vertical',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="15.5122" cy="19" r="0.75" transform="rotate(90 15.5122 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15.5122" cy="12" r="0.75" transform="rotate(90 15.5122 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15.4961" cy="5" r="0.75" transform="rotate(90 15.4961 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.50439" cy="19" r="0.75" transform="rotate(90 8.50439 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.50439" cy="12" r="0.75" transform="rotate(90 8.50439 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.48828" cy="5" r="0.75" transform="rotate(90 8.48828 5)" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'grip-vertical',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="15.5117" cy="19" r="0.75" transform="rotate(90 15.5117 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15.4961" cy="5" r="0.75" transform="rotate(90 15.4961 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.50391" cy="19" r="0.75" transform="rotate(90 8.50391 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.48828" cy="5" r="0.75" transform="rotate(90 8.48828 5)" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="15.5117" cy="12" r="0.75" transform="rotate(90 15.5117 12)" stroke="currentColor" stroke-linecap="round"/>

<circle opacity="0.5" cx="8.50391" cy="12" r="0.75" transform="rotate(90 8.50391 12)" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'grip-vertical',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M8.50391 17.5C9.33233 17.5 10.0039 18.1716 10.0039 19C10.0039 19.8284 9.33233 20.5 8.50391 20.5C7.67548 20.5 7.00391 19.8284 7.00391 19C7.00391 18.1716 7.67548 17.5 8.50391 17.5Z" fill="currentColor"/>
<path d="M15.5117 17.5C16.3401 17.5 17.0117 18.1716 17.0117 19C17.0117 19.8284 16.3401 20.5 15.5117 20.5C14.6833 20.5 14.0117 19.8284 14.0117 19C14.0117 18.1716 14.6833 17.5 15.5117 17.5Z" fill="currentColor"/>
<path d="M8.50391 10.5C9.33233 10.5 10.0039 11.1716 10.0039 12C10.0039 12.8284 9.33233 13.5 8.50391 13.5C7.67548 13.5 7.00391 12.8284 7.00391 12C7.00391 11.1716 7.67548 10.5 8.50391 10.5Z" fill="currentColor"/>
<path d="M15.5117 10.5C16.3401 10.5 17.0117 11.1716 17.0117 12C17.0117 12.8284 16.3401 13.5 15.5117 13.5C14.6833 13.5 14.0117 12.8284 14.0117 12C14.0117 11.1716 14.6833 10.5 15.5117 10.5Z" fill="currentColor"/>
<path d="M8.48828 3.5C9.31671 3.5 9.98828 4.17157 9.98828 5C9.98828 5.82843 9.31671 6.5 8.48828 6.5C7.65985 6.5 6.98828 5.82843 6.98828 5C6.98828 4.17157 7.65985 3.5 8.48828 3.5Z" fill="currentColor"/>
<path d="M15.4961 3.5C16.3245 3.5 16.9961 4.17157 16.9961 5C16.9961 5.82843 16.3245 6.5 15.4961 6.5C14.6677 6.5 13.9961 5.82843 13.9961 5C13.9961 4.17157 14.6677 3.5 15.4961 3.5Z" fill="currentColor"/>''',
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
