// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `box-minimalistic` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE1LjU3NzcgMy4zODE5N0wxNy41Nzc3IDQuNDMxNTJDMTkuNzI5NCA1LjU2MDY2IDIwLjgwNTIgNi4xMjUyMyAyMS40MDI2IDcuMTM5NzRDMjIgOC4xNTQyNSAyMiA5LjQxNjY3IDIyIDExLjk0MTVWMTIuMDU4NUMyMiAxNC41ODMzIDIyIDE1Ljg0NTggMjEuNDAyNiAxNi44NjAzQzIwLjgwNTIgMTcuODc0OCAxOS43Mjk0IDE4LjQzOTMgMTcuNTc3NyAxOS41Njg1TDE1LjU3NzcgMjAuNjE4QzEzLjgyMjEgMjEuNTM5MyAxMi45NDQzIDIyIDEyIDIyQzExLjA1NTcgMjIgMTAuMTc3OSAyMS41MzkzIDguNDIyMjkgMjAuNjE4TDYuNDIyMjkgMTkuNTY4NUM0LjI3MDYzIDE4LjQzOTMgMy4xOTQ3OSAxNy44NzQ4IDIuNTk3NCAxNi44NjAzQzIgMTUuODQ1OCAyIDE0LjU4MzMgMiAxMi4wNTg1VjExLjk0MTVDMiA5LjQxNjY3IDIgOC4xNTQyNSAyLjU5NzQgNy4xMzk3NEMzLjE5NDc5IDYuMTI1MjMgNC4yNzA2MyA1LjU2MDY2IDYuNDIyMjkgNC40MzE1Mkw4LjQyMjI5IDMuMzgxOTdDMTAuMTc3OSAyLjQ2MDY2IDExLjA1NTcgMiAxMiAyQzEyLjk0NDMgMiAxMy44MjIxIDIuNDYwNjYgMTUuNTc3NyAzLjM4MTk3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIxIDcuNUwxMiAxMk0xMiAxMkwzIDcuNU0xMiAxMlYyMS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BoxMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `box-minimalistic` icon in the lineDuotone style.
  const BoxMinimalisticLineDuotoneIcon({
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
    name: 'box-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15.5777 3.38197L17.5777 4.43152C19.7294 5.56066 20.8052 6.12523 21.4026 7.13974C22 8.15425 22 9.41667 22 11.9415V12.0585C22 14.5833 22 15.8458 21.4026 16.8603C20.8052 17.8748 19.7294 18.4393 17.5777 19.5685L15.5777 20.618C13.8221 21.5393 12.9443 22 12 22C11.0557 22 10.1779 21.5393 8.42229 20.618L6.42229 19.5685C4.27063 18.4393 3.19479 17.8748 2.5974 16.8603C2 15.8458 2 14.5833 2 12.0585V11.9415C2 9.41667 2 8.15425 2.5974 7.13974C3.19479 6.12523 4.27063 5.56066 6.42229 4.43152L8.42229 3.38197C10.1779 2.46066 11.0557 2 12 2C12.9443 2 13.8221 2.46066 15.5777 3.38197Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 7.5L12 12M12 12L3 7.5M12 12V21.5" stroke="currentColor" stroke-linecap="round"/>''',
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
