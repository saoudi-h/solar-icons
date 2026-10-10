// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `table-cells-merge` icon in the bold style.
class TableCellsMergeBoldIcon extends StatelessWidget {
  /// Creates the `table-cells-merge` icon in the bold style.
  const TableCellsMergeBoldIcon({
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
    name: 'table-cells-merge',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.25 22H11C7.22877 22 5.34345 21.9997 4.17188 20.8281C3.23937 19.8956 3.05152 18.511 3.0127 16.083H11.25V22Z" fill="currentColor"/>
<path d="M20.9873 16.083C20.9485 18.511 20.7606 19.8956 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22H12.75V16.083H20.9873Z" fill="currentColor"/>
<path d="M21 10V14C21 14.1996 20.9992 14.3938 20.999 14.583H3.00098C3.0008 14.3938 3 14.1996 3 14V10C3 9.80044 3.0008 9.60616 3.00098 9.41699H20.999C20.9992 9.60616 21 9.80044 21 10Z" fill="currentColor"/>
<path d="M11.25 7.91699H3.0127C3.05152 5.48899 3.23937 4.10438 4.17188 3.17188C5.34345 2.0003 7.22876 2 11 2H11.25V7.91699Z" fill="currentColor"/>
<path d="M13 2C16.7712 2 18.6566 2.0003 19.8281 3.17188C20.7606 4.10438 20.9485 5.48899 20.9873 7.91699H12.75V2H13Z" fill="currentColor"/>''',
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
