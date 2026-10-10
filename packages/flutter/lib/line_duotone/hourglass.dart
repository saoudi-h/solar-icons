// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNC45NTc3IDkuMDcxMDdMMTIgMTJMOS4wNDIzIDkuMDcxMDdMOS4wNDIzIDkuMDcxMDdDNi4xMTk4MSA2LjE3NyA0LjY1ODU3IDQuNzI5OTcgNS4wNjc2NSAzLjQ4MTQ5QzUuMTAyODIgMy4zNzQxNyA1LjE0NjQ5IDMuMjY5NzcgNS4xOTgyNSAzLjE2OTI2QzUuODAwNDYgMiA3Ljg2Njk3IDIgMTIgMkMxNi4xMzMgMiAxOC4xOTk1IDIgMTguODAxNyAzLjE2OTI2QzE4Ljg1MzUgMy4yNjk3NyAxOC44OTcyIDMuMzc0MTcgMTguOTMyMyAzLjQ4MTQ5QzE5LjM0MTQgNC43Mjk5NyAxNy44ODAyIDYuMTc3IDE0Ljk1NzcgOS4wNzEwN1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik05LjA0MjMgMTQuOTI4OUwxMiAxMkwxNC45NTc3IDE0LjkyODlDMTcuODgwMiAxNy44MjMgMTkuMzQxNCAxOS4yNyAxOC45MzIzIDIwLjUxODVDMTguODk3MiAyMC42MjU4IDE4Ljg1MzUgMjAuNzMwMiAxOC44MDE3IDIwLjgzMDdDMTguMTk5NSAyMiAxNi4xMzMgMjIgMTIgMjJDNy44NjY5NyAyMiA1LjgwMDQ2IDIyIDUuMTk4MjUgMjAuODMwN0M1LjE0NjQ5IDIwLjczMDIgNS4xMDI4MiAyMC42MjU4IDUuMDY3NjUgMjAuNTE4NUM0LjY1ODU3IDE5LjI3IDYuMTE5ODEgMTcuODIzIDkuMDQyMjkgMTQuOTI4OUw5LjA0MjMgMTQuOTI4OVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class HourglassLineDuotoneIcon extends StatelessWidget {
  /// Creates the `hourglass` icon in the lineDuotone style.
  const HourglassLineDuotoneIcon({
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
    name: 'hourglass',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14.9577 9.07107L12 12L9.0423 9.07107L9.0423 9.07107C6.11981 6.177 4.65857 4.72997 5.06765 3.48149C5.10282 3.37417 5.14649 3.26977 5.19825 3.16926C5.80046 2 7.86697 2 12 2C16.133 2 18.1995 2 18.8017 3.16926C18.8535 3.26977 18.8972 3.37417 18.9323 3.48149C19.3414 4.72997 17.8802 6.177 14.9577 9.07107Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.0423 14.9289L12 12L14.9577 14.9289C17.8802 17.823 19.3414 19.27 18.9323 20.5185C18.8972 20.6258 18.8535 20.7302 18.8017 20.8307C18.1995 22 16.133 22 12 22C7.86697 22 5.80046 22 5.19825 20.8307C5.14649 20.7302 5.10282 20.6258 5.06765 20.5185C4.65857 19.27 6.11981 17.823 9.04229 14.9289L9.0423 14.9289Z" stroke="currentColor" stroke-linecap="round"/>''',
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
