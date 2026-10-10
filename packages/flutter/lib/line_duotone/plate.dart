// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE1IDQuMDAwOThDMTguMTE0MyA0LjAxMDA5IDE5Ljc2NTMgNC4xMDg1MyAyMC44Mjg0IDUuMTcxNjJDMjIgNi4zNDMxOSAyMiA4LjIyODgxIDIyIDEyQzIyIDE1Ljc3MTMgMjIgMTcuNjU2OSAyMC44Mjg0IDE4LjgyODVDMTkuNjU2OSAyMCAxNy43NzEyIDIwIDE0IDIwSDEwQzYuMjI4NzYgMjAgNC4zNDMxNSAyMCAzLjE3MTU3IDE4LjgyODVDMiAxNy42NTY5IDIgMTUuNzcxMyAyIDEyQzIgOC4yMjg4MSAyIDYuMzQzMTkgMy4xNzE1NyA1LjE3MTYyQzQuMjM0NjcgNC4xMDg1MyA1Ljg4NTcgNC4wMTAwOSA5IDQuMDAwOTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgNUwxMiAzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggMTAuNUgxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDE0SDEzLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PlateLineDuotoneIcon extends StatelessWidget {
  /// Creates the `plate` icon in the lineDuotone style.
  const PlateLineDuotoneIcon({
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
    name: 'plate',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 5L12 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 10.5H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 14H13.5" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15 4.00098C18.1143 4.01009 19.7653 4.10853 20.8284 5.17162C22 6.34319 22 8.22881 22 12C22 15.7713 22 17.6569 20.8284 18.8285C19.6569 20 17.7712 20 14 20H10C6.22876 20 4.34315 20 3.17157 18.8285C2 17.6569 2 15.7713 2 12C2 8.22881 2 6.34319 3.17157 5.17162C4.23467 4.10853 5.8857 4.01009 9 4.00098" stroke="currentColor" stroke-linecap="round"/>''',
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
