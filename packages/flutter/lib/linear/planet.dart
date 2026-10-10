// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `planet` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDEyQzIwIDE2LjQxODMgMTYuNDE4MyAyMCAxMiAyMEM3LjU4MTcyIDIwIDQgMTYuNDE4MyA0IDEyQzQgNy41ODE3MiA3LjU4MTcyIDQgMTIgNEMxNi40MTgzIDQgMjAgNy41ODE3MiAyMCAxMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTcuODQ4NiA2LjE5MDg1QzE5Ljg2MDUgNS44MTkyOSAyMS4zMzkxIDUuOTgwMDEgMjEuODI5MSA2Ljc2MzI3QzIyLjg0MDMgOC4zNzk0NyAxOS4yNTk0IDEyLjAzNDIgMTMuODMwOSAxNC45MjY0QzguNDAyNDIgMTcuODE4NSAzLjE4MjAzIDE4Ljg1MjkgMi4xNzA4NSAxNy4yMzY3QzEuNjM3NTggMTYuMzg0NCAyLjM4MTQ4IDE0Ljk2NTEgNCAxMy4zODk3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PlanetLinearIcon extends StatelessWidget {
  /// Creates the `planet` icon in the linear style.
  const PlanetLinearIcon({
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
    name: 'planet',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20 12C20 16.4183 16.4183 20 12 20C7.58172 20 4 16.4183 4 12C4 7.58172 7.58172 4 12 4C16.4183 4 20 7.58172 20 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.8486 6.19085C19.8605 5.81929 21.3391 5.98001 21.8291 6.76327C22.8403 8.37947 19.2594 12.0342 13.8309 14.9264C8.40242 17.8185 3.18203 18.8529 2.17085 17.2367C1.63758 16.3844 2.38148 14.9651 4 13.3897" stroke="currentColor" stroke-linecap="round"/>''',
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
