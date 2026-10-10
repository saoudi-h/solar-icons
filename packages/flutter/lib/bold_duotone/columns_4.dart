// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIgMTFDMiA3LjIyODc2IDIgNS4zNDMxNSAzLjE3MTU3IDQuMTcxNTdDNC4zNDMxNSAzIDYuMjI4NzYgMyAxMCAzSDE0QzE3Ljc3MTIgMyAxOS42NTY5IDMgMjAuODI4NCA0LjE3MTU3QzIyIDUuMzQzMTUgMjIgNy4yMjg3NiAyMiAxMVYxM0MyMiAxNi43NzEyIDIyIDE4LjY1NjkgMjAuODI4NCAxOS44Mjg0QzE5LjY1NjkgMjEgMTcuNzcxMiAyMSAxNCAyMUgxMEM2LjIyODc2IDIxIDQuMzQzMTUgMjEgMy4xNzE1NyAxOS44Mjg0QzIgMTguNjU2OSAyIDE2Ljc3MTIgMiAxM1YxMVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyLjc1IDIxSDExLjI1VjNIMTIuNzVWMjFaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik03Ljc1IDIwLjk4NDRDNy4xOTY4MyAyMC45NzM2IDYuNjk5MzYgMjAuOTU0OSA2LjI1IDIwLjkxODlWMy4wODAwOEM2LjY5OTM1IDMuMDQ0MDkgNy4xOTY4NiAzLjAyNTM4IDcuNzUgMy4wMTQ2NVYyMC45ODQ0WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTYuMjUgMy4wMTQ2NUMxNi44MDMxIDMuMDI1MzggMTcuMzAwNyAzLjA0NDA5IDE3Ljc1IDMuMDgwMDhWMjAuOTE4OUMxNy4zMDA2IDIwLjk1NDkgMTYuODAzMiAyMC45NzM2IDE2LjI1IDIwLjk4NDRWMy4wMTQ2NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class Columns4BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `columns-4` icon in the boldDuotone style.
  const Columns4BoldDuotoneIcon({
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
    name: 'columns-4',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M12.75 21H11.25V3H12.75V21Z" fill="currentColor"/>
<path d="M7.75 20.9844C7.19683 20.9736 6.69936 20.9549 6.25 20.9189V3.08008C6.69935 3.04409 7.19686 3.02538 7.75 3.01465V20.9844Z" fill="currentColor"/>
<path d="M16.25 3.01465C16.8031 3.02538 17.3007 3.04409 17.75 3.08008V20.9189C17.3006 20.9549 16.8032 20.9736 16.25 20.9844V3.01465Z" fill="currentColor"/>''',
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
