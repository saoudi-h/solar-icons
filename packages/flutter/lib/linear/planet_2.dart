// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `planet-2` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDEyQzIwIDE2LjQxODMgMTYuNDE4MyAyMCAxMiAyMEM3LjU4MTcyIDIwIDQgMTYuNDE4MyA0IDEyQzQgNy41ODE3MiA3LjU4MTcyIDQgMTIgNEMxNi40MTgzIDQgMjAgNy41ODE3MiAyMCAxMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTcuNjcxMyA2LjIyNDdDMTkuNzczNCA1LjgxMDQ0IDIxLjMyNDggNS45NTcxOCAyMS44MjkxIDYuNzYzMjdDMjIuODQwMyA4LjM3OTQ3IDE5LjI1OTQgMTIuMDM0MiAxMy44MzA5IDE0LjkyNjRDOC40MDI0MiAxNy44MTg1IDMuMTgyMDMgMTguODUyOSAyLjE3MDg1IDE3LjIzNjdDMS42NTUxOSAxNi40MTI1IDIuMzMzNzYgMTUuMDU4MiAzLjg0MjU5IDEzLjU0NTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWRhc2hhcnJheT0iMy41IDIuNSIvPgo8L3N2Zz4K)
class Planet2LinearIcon extends StatelessWidget {
  /// Creates the `planet-2` icon in the linear style.
  const Planet2LinearIcon({
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
    name: 'planet-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20 12C20 16.4183 16.4183 20 12 20C7.58172 20 4 16.4183 4 12C4 7.58172 7.58172 4 12 4C16.4183 4 20 7.58172 20 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.6713 6.2247C19.7734 5.81044 21.3248 5.95718 21.8291 6.76327C22.8403 8.37947 19.2594 12.0342 13.8309 14.9264C8.40242 17.8185 3.18203 18.8529 2.17085 17.2367C1.65519 16.4125 2.33376 15.0582 3.84259 13.5452" stroke="currentColor" stroke-linecap="round" stroke-dasharray="3.5 2.5"/>''',
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
