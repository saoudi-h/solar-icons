// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAyMkMxMC45ODA4IDIyIDEwLjYyIDIxLjg0MjQgOS44OTg1NiAyMS41MjczQzcuMjM4OTYgMjAuMzY1NSAzIDE3LjYyOTQgMyAxMS45OTE0VjEwLjQxNjhDMyA3LjIxOTE4IDMgNS42MjAzOSAzLjM3NzUyIDUuMDgyNTJDMy43NTUwMyA0LjU0NDY1IDUuMjU4MjUgNC4wMjk5NiA4LjI2NDg0IDMuMDAwNzlMOC44Mzc2NSAyLjgwNDcyQzEwLjQwNDkgMi4yNjgyNCAxMS4xODg1IDIgMTEuOTk5OSAyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIuMDAwMSAyMkMxMy4wMTkzIDIyIDEzLjM4MDEgMjEuODQyNCAxNC4xMDE1IDIxLjUyNzNDMTYuNzYxMSAyMC4zNjU1IDIxLjAwMDEgMTcuNjI5NCAyMS4wMDAxIDExLjk5MTRWMTAuNDE2OEMyMS4wMDAxIDcuMjE5MTggMjEuMDAwMSA1LjYyMDM5IDIwLjYyMjYgNS4wODI1MkMyMC4yNDUgNC41NDQ2NSAxOC43NDE3IDQuMDI5OTYgMTUuNzM1MSAzLjAwMDc5TDE1LjE2MjMgMi44MDQ3MkMxMy41OTUgMi4yNjgyNCAxMi44MTE0IDIgMTIgMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ShieldMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `shield-minimalistic` icon in the lineDuotone style.
  const ShieldMinimalisticLineDuotoneIcon({
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
    name: 'shield-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 22C10.9808 22 10.62 21.8424 9.89856 21.5273C7.23896 20.3655 3 17.6294 3 11.9914V10.4168C3 7.21918 3 5.62039 3.37752 5.08252C3.75503 4.54465 5.25825 4.02996 8.26484 3.00079L8.83765 2.80472C10.4049 2.26824 11.1885 2 11.9999 2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.0001 22C13.0193 22 13.3801 21.8424 14.1015 21.5273C16.7611 20.3655 21.0001 17.6294 21.0001 11.9914V10.4168C21.0001 7.21918 21.0001 5.62039 20.6226 5.08252C20.245 4.54465 18.7417 4.02996 15.7351 3.00079L15.1623 2.80472C13.595 2.26824 12.8114 2 12 2" stroke="currentColor" stroke-linecap="round"/>''',
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
