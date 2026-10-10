// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `columns-4` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxMUMyIDcuMjI4NzYgMiA1LjM0MzE1IDMuMTcxNTcgNC4xNzE1N0M0LjM0MzE1IDMgNi4yMjg3NiAzIDEwIDNIMTRDMTcuNzcxMiAzIDE5LjY1NjkgMyAyMC44Mjg0IDQuMTcxNTdDMjIgNS4zNDMxNSAyMiA3LjIyODc2IDIyIDExVjEzQzIyIDE2Ljc3MTIgMjIgMTguNjU2OSAyMC44Mjg0IDE5LjgyODRDMTkuNjU2OSAyMSAxNy43NzEyIDIxIDE0IDIxSDEwQzYuMjI4NzYgMjEgNC4zNDMxNSAyMSAzLjE3MTU3IDE5LjgyODRDMiAxOC42NTY5IDIgMTYuNzcxMiAyIDEzVjExWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIuNzUgMjFIMTEuMjVWM0gxMi43NVYyMVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTcuNzUgMjAuOTg0NEM3LjE5NjgzIDIwLjk3MzYgNi42OTkzNiAyMC45NTQ5IDYuMjUgMjAuOTE4OVYzLjA4MDA4QzYuNjk5MzUgMy4wNDQwOSA3LjE5Njg2IDMuMDI1MzggNy43NSAzLjAxNDY1VjIwLjk4NDRaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNi4yNSAzLjAxNDY1QzE2LjgwMzEgMy4wMjUzOCAxNy4zMDA3IDMuMDQ0MDkgMTcuNzUgMy4wODAwOFYyMC45MTg5QzE3LjMwMDYgMjAuOTU0OSAxNi44MDMyIDIwLjk3MzYgMTYuMjUgMjAuOTg0NFYzLjAxNDY1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
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
