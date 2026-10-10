// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `columns-2` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExLjI1IDNMMTIuNzUgM0wxMi43NSAyMUwxMS4yNSAyMUwxMS4yNSAzWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0yIDExQzIgNy4yMjg3NiAyIDUuMzQzMTUgMy4xNzE1NyA0LjE3MTU3QzQuMzQzMTUgMyA2LjIyODc2IDMgMTAgM0gxNEMxNy43NzEyIDMgMTkuNjU2OSAzIDIwLjgyODQgNC4xNzE1N0MyMiA1LjM0MzE1IDIyIDcuMjI4NzYgMjIgMTFWMTNDMjIgMTYuNzcxMiAyMiAxOC42NTY5IDIwLjgyODQgMTkuODI4NEMxOS42NTY5IDIxIDE3Ljc3MTIgMjEgMTQgMjFIMTBDNi4yMjg3NiAyMSA0LjM0MzE1IDIxIDMuMTcxNTcgMTkuODI4NEMyIDE4LjY1NjkgMiAxNi43NzEyIDIgMTNWMTFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class Columns2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `columns-2` icon in the boldDuotone style.
  const Columns2BoldDuotoneIcon({
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
    name: 'columns-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.25 3L12.75 3L12.75 21L11.25 21L11.25 3Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" fill="currentColor"/>''',
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
