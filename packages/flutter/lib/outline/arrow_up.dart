// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-up` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS40Njk3IDMuNDY5NjdDMTEuNzYyNiAzLjE3Njc4IDEyLjIzNzQgMy4xNzY3OCAxMi41MzAzIDMuNDY5NjdMMTguNTMwMyA5LjQ2OTY3QzE4LjgyMzIgOS43NjI1NiAxOC44MjMyIDEwLjIzNzQgMTguNTMwMyAxMC41MzAzQzE4LjIzNzQgMTAuODIzMiAxNy43NjI2IDEwLjgyMzIgMTcuNDY5NyAxMC41MzAzTDEyLjc1IDUuODEwNjZMMTIuNzUgMjBDMTIuNzUgMjAuNDE0MiAxMi40MTQyIDIwLjc1IDEyIDIwLjc1QzExLjU4NTggMjAuNzUgMTEuMjUgMjAuNDE0MiAxMS4yNSAyMEwxMS4yNSA1LjgxMDY2TDYuNTMwMzMgMTAuNTMwM0M2LjIzNzQ0IDEwLjgyMzIgNS43NjI1NiAxMC44MjMyIDUuNDY5NjcgMTAuNTMwM0M1LjE3Njc4IDEwLjIzNzQgNS4xNzY3OCA5Ljc2MjU2IDUuNDY5NjcgOS40Njk2N0wxMS40Njk3IDMuNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ArrowUpOutlineIcon extends StatelessWidget {
  /// Creates the `arrow-up` icon in the outline style.
  const ArrowUpOutlineIcon({
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
    name: 'arrow-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.4697 3.46967C11.7626 3.17678 12.2374 3.17678 12.5303 3.46967L18.5303 9.46967C18.8232 9.76256 18.8232 10.2374 18.5303 10.5303C18.2374 10.8232 17.7626 10.8232 17.4697 10.5303L12.75 5.81066L12.75 20C12.75 20.4142 12.4142 20.75 12 20.75C11.5858 20.75 11.25 20.4142 11.25 20L11.25 5.81066L6.53033 10.5303C6.23744 10.8232 5.76256 10.8232 5.46967 10.5303C5.17678 10.2374 5.17678 9.76256 5.46967 9.46967L11.4697 3.46967Z" fill="currentColor"/>''',
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
