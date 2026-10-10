// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `mirror-right` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDIxSDEzQzE2Ljc3MTIgMjEgMTguNjU2OSAyMSAxOS44Mjg0IDE5LjgyODRDMjEgMTguNjU2OSAyMSAxNi43NzEyIDIxIDEzVjExQzIxIDcuMjI4NzYgMjEgNS4zNDMxNSAxOS44Mjg0IDQuMTcxNTdDMTguNjU2OSAzIDE2Ljc3MTIgMyAxMyAzTDEyIDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMyAyMUg5QzYuMTcxNTcgMjEgNC43NTczNiAyMSAzLjg3ODY4IDIwLjEyMTNDMyAxOS4yNDI2IDMgMTcuODI4NCAzIDE1TDMgOUMzIDYuMTcxNTcgMyA0Ljc1NzM2IDMuODc4NjggMy44Nzg2OEM0Ljc1NzM2IDMgNi4xNzE1NyAzIDkgM0wxMyAzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1kYXNoYXJyYXk9IjIuNSAzIi8+CjxwYXRoIGQ9Ik0xMiAyMkwxMiAyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MirrorRightLineDuotoneIcon extends StatelessWidget {
  /// Creates the `mirror-right` icon in the lineDuotone style.
  const MirrorRightLineDuotoneIcon({
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
    name: 'mirror-right',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 21H13C16.7712 21 18.6569 21 19.8284 19.8284C21 18.6569 21 16.7712 21 13V11C21 7.22876 21 5.34315 19.8284 4.17157C18.6569 3 16.7712 3 13 3L12 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22L12 2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 21H9C6.17157 21 4.75736 21 3.87868 20.1213C3 19.2426 3 17.8284 3 15L3 9C3 6.17157 3 4.75736 3.87868 3.87868C4.75736 3 6.17157 3 9 3L13 3" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2.5 3"/>''',
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
