// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `alt-arrow-right` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjQwNDQgOC4zMDI3M0wxNS44MzUxIDExLjYyOTZDMTYuMDU0OSAxMS44NDI4IDE2LjA1NDkgMTIuMTU3MyAxNS44MzUxIDEyLjM3MDRMOS4yMDQ2NyAxOC44MDAxQzguNzkwOTQgMTkuMjAxMyA4IDE4Ljk1ODEgOCAxOC40Mjk3VjEyLjcwNzFMMTIuNDA0NCA4LjMwMjczWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik04IDExLjI5MjlMOCA1LjU3MDNDOCA1LjA0MTg5IDguNzkwOTQgNC43OTg2OSA5LjIwNDY3IDUuMTk5OUwxMS42ODY0IDcuNjA2NDhMOCAxMS4yOTI5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class AltArrowRightBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `alt-arrow-right` icon in the boldDuotone style.
  const AltArrowRightBoldDuotoneIcon({
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
    name: 'alt-arrow-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.4044 8.30273L15.8351 11.6296C16.0549 11.8428 16.0549 12.1573 15.8351 12.3704L9.20467 18.8001C8.79094 19.2013 8 18.9581 8 18.4297V12.7071L12.4044 8.30273Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M8 11.2929L8 5.5703C8 5.04189 8.79094 4.79869 9.20467 5.1999L11.6864 7.60648L8 11.2929Z" fill="currentColor"/>''',
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
