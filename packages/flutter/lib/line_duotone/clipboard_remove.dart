// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clipboard-remove` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTYgNEMxOC4xNzUgNC4wMTIxMSAxOS4zNTI5IDQuMTA4NTYgMjAuMTIxMyA0Ljg3Njk0QzIxIDUuNzU1NjIgMjEgNy4xNjk4MyAyMSA5Ljk5ODI2VjE1Ljk5ODNDMjEgMTguODI2NyAyMSAyMC4yNDA5IDIwLjEyMTMgMjEuMTE5NkMxOS4yNDI2IDIxLjk5ODMgMTcuODI4NCAyMS45OTgzIDE1IDIxLjk5ODNIOUM2LjE3MTU3IDIxLjk5ODMgNC43NTczNiAyMS45OTgzIDMuODc4NjggMjEuMTE5NkMzIDIwLjI0MDkgMyAxOC44MjY3IDMgMTUuOTk4M1Y5Ljk5ODI2QzMgNy4xNjk4MyAzIDUuNzU1NjIgMy44Nzg2OCA0Ljg3Njk0QzQuNjQ3MDYgNC4xMDg1NiA1LjgyNDk3IDQuMDEyMTEgOCA0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggMy41QzggMi42NzE1NyA4LjY3MTU3IDIgOS41IDJIMTQuNUMxNS4zMjg0IDIgMTYgMi42NzE1NyAxNiAzLjVWNC41QzE2IDUuMzI4NDMgMTUuMzI4NCA2IDE0LjUgNkg5LjVDOC42NzE1NyA2IDggNS4zMjg0MyA4IDQuNVYzLjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0LjUgMTFMOS41MDAwNCAxNk05LjUwMDAyIDExTDE0LjUgMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class ClipboardRemoveLineDuotoneIcon extends StatelessWidget {
  /// Creates the `clipboard-remove` icon in the lineDuotone style.
  const ClipboardRemoveLineDuotoneIcon({
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
    name: 'clipboard-remove',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 11L9.50004 16M9.50002 11L14.5 16" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16 4C18.175 4.01211 19.3529 4.10856 20.1213 4.87694C21 5.75562 21 7.16983 21 9.99826V15.9983C21 18.8267 21 20.2409 20.1213 21.1196C19.2426 21.9983 17.8284 21.9983 15 21.9983H9C6.17157 21.9983 4.75736 21.9983 3.87868 21.1196C3 20.2409 3 18.8267 3 15.9983V9.99826C3 7.16983 3 5.75562 3.87868 4.87694C4.64706 4.10856 5.82497 4.01211 8 4" stroke="currentColor" stroke-linecap="round"/>''',
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
