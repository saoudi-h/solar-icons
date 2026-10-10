// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `repeat` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuNSAxOUg5LjAwMDI4QzYuNjIxNTMgMTkgNC41MTk4MSAxNy44MTM1IDMuMjU0NzggMTZNOSAzTDExIDVIOUM1LjEzNDAxIDUgMiA4LjEzNDAxIDIgMTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUgMjFMMTMgMTlIMTVDMTguODY2IDE5IDIyIDE1Ljg2NiAyMiAxMk0xNC41IDVIMTVDMTcuMzc4NyA1IDE5LjQ4MDQgNi4xODY1MiAyMC43NDUzIDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class RepeatBrokenIcon extends StatelessWidget {
  /// Creates the `repeat` icon in the broken style.
  const RepeatBrokenIcon({
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
    name: 'repeat',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.5 19H9.00028C6.62153 19 4.51981 17.8135 3.25478 16M9 3L11 5H9C5.13401 5 2 8.13401 2 12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15 21L13 19H15C18.866 19 22 15.866 22 12M14.5 5H15C17.3787 5 19.4804 6.18652 20.7453 8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
