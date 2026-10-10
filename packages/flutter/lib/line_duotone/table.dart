// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTMgMTUuMzMzSDIxTTMgOC42NjY1SDIxTTEyIDJMMTIgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTMgMkMxNi43NzEyIDIgMTguNjU2OSAyIDE5LjgyODQgMy4xNzE1N0MyMSA0LjM0MzE1IDIxIDYuMjI4NzYgMjEgMTBMMjEgMTRDMjEgMTcuNzcxMiAyMSAxOS42NTY5IDE5LjgyODQgMjAuODI4NEMxOC42NTY5IDIyIDE2Ljc3MTIgMjIgMTMgMjJMMTEgMjJDNy4yMjg3NiAyMiA1LjM0MzE1IDIyIDQuMTcxNTcgMjAuODI4NEMzIDE5LjY1NjkgMyAxNy43NzEyIDMgMTRMMyAxMEMzIDYuMjI4NzYgMyA0LjM0MzE1IDQuMTcxNTcgMy4xNzE1N0M1LjM0MzE1IDIgNy4yMjg3NiAyIDExIDJMMTMgMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class TableLineDuotoneIcon extends StatelessWidget {
  /// Creates the `table` icon in the lineDuotone style.
  const TableLineDuotoneIcon({
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
    name: 'table',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 15.333H21M3 8.6665H21M12 2L12 22" stroke="currentColor" stroke-linecap="round"/>''',
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
