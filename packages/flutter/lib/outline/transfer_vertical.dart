// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `transfer-vertical` icon in the outline style.
class TransferVerticalOutlineIcon extends StatelessWidget {
  /// Creates the `transfer-vertical` icon in the outline style.
  const TransferVerticalOutlineIcon({
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
    name: 'transfer-vertical',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M13.698 3.3135C13.9703 3.19374 14.2875 3.24617 14.5068 3.44715L20.5068 8.94715C20.8121 9.22704 20.8328 9.70147 20.5529 10.0068C20.273 10.3121 19.7985 10.3328 19.4932 10.0529L14.75 5.70494L14.75 20C14.75 20.4142 14.4142 20.75 14 20.75C13.5858 20.75 13.25 20.4142 13.25 20L13.25 4.00002C13.25 3.70259 13.4258 3.43327 13.698 3.3135ZM10 3.25002C10.4142 3.25002 10.75 3.5858 10.75 4.00002L10.75 20C10.75 20.2974 10.5743 20.5668 10.302 20.6865C10.0298 20.8063 9.71246 20.7539 9.49321 20.5529L3.49321 15.0529C3.18787 14.773 3.16724 14.2986 3.44714 13.9932C3.72703 13.6879 4.20146 13.6673 4.5068 13.9471L9.25001 18.2951L9.25 4.00002C9.25 3.5858 9.58579 3.25002 10 3.25002Z" fill="currentColor"/>''',
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
