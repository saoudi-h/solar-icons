// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `alt-arrow-down` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTguMzAyNzMgMTIuNDA0NEwxMS42Mjk2IDE1LjgzNTFDMTEuODQyOCAxNi4wNTQ5IDEyLjE1NzMgMTYuMDU0OSAxMi4zNzA0IDE1LjgzNTFMMTguODAwMSA5LjIwNDY3QzE5LjIwMTMgOC43OTA5NCAxOC45NTgxIDggMTguNDI5NyA4SDEyLjcwNzFMOC4zMDI3MyAxMi40MDQ0WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMS4yOTI5IDhINS41NzAzQzUuMDQxODkgOCA0Ljc5ODY5IDguNzkwOTQgNS4xOTk5IDkuMjA0NjdMNy42MDY0OCAxMS42ODY0TDExLjI5MjkgOFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class AltArrowDownBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `alt-arrow-down` icon in the boldDuotone style.
  const AltArrowDownBoldDuotoneIcon({
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
    name: 'alt-arrow-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.30273 12.4044L11.6296 15.8351C11.8428 16.0549 12.1573 16.0549 12.3704 15.8351L18.8001 9.20467C19.2013 8.79094 18.9581 8 18.4297 8H12.7071L8.30273 12.4044Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.2929 8H5.5703C5.04189 8 4.79869 8.79094 5.1999 9.20467L7.60648 11.6864L11.2929 8Z" fill="currentColor"/>''',
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
