// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMS4yNSAyMUgxMEM2LjIyODc2IDIxIDQuMzQzNDUgMjAuOTk5NyAzLjE3MTg4IDE5LjgyODFDMi4wMDAzIDE4LjY1NjYgMiAxNi43NzEyIDIgMTNWMTFDMiA3LjIyODc2IDIuMDAwMyA1LjM0MzQ1IDMuMTcxODggNC4xNzE4OEM0LjM0MzQ1IDMuMDAwMyA2LjIyODc2IDMgMTAgM0gxMS4yNVYyMVpNMTQgM0MxNy43NzEyIDMgMTkuNjU2NiAzLjAwMDMgMjAuODI4MSA0LjE3MTg4QzIxLjk5OTcgNS4zNDM0NSAyMiA3LjIyODc2IDIyIDExVjEzQzIyIDE2Ljc3MTIgMjEuOTk5NyAxOC42NTY2IDIwLjgyODEgMTkuODI4MUMxOS42NTY2IDIwLjk5OTcgMTcuNzcxMiAyMSAxNCAyMUgxMi43NVYzSDE0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class Columns2BoldIcon extends StatelessWidget {
  /// Creates the `columns-2` icon in the bold style.
  const Columns2BoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.25 21H10C6.22876 21 4.34345 20.9997 3.17188 19.8281C2.0003 18.6566 2 16.7712 2 13V11C2 7.22876 2.0003 5.34345 3.17188 4.17188C4.34345 3.0003 6.22876 3 10 3H11.25V21ZM14 3C17.7712 3 19.6566 3.0003 20.8281 4.17188C21.9997 5.34345 22 7.22876 22 11V13C22 16.7712 21.9997 18.6566 20.8281 19.8281C19.6566 20.9997 17.7712 21 14 21H12.75V3H14Z" fill="currentColor"/>''',
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
