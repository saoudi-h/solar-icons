// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-ordered` icon in the linear style.
class ListOrderedLinearIcon extends StatelessWidget {
  /// Creates the `list-ordered` icon in the linear style.
  const ListOrderedLinearIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

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

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'list-ordered',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M21 6L13 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 10L13 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 14L13 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 18H13" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.13477 7.5136L7.06207 6V10" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.13477 15.0549C5.13477 14.4723 5.56616 14 6.0983 14C6.63045 14 7.06184 14.4723 7.06184 15.0549C7.06184 15.6375 6.8515 15.9177 6.47963 16.4326L5.13477 18H7.06184" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  SolarIconData get _data => data;

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
