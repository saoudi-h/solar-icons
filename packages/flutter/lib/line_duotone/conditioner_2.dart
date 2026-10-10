// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `conditioner-2` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTFDMiA4LjE3MTU3IDIgNi43NTczNiAyLjg3ODY4IDUuODc4NjhDMy43NTczNiA1IDUuMTcxNTcgNSA4IDVIMTZDMTguODI4NCA1IDIwLjI0MjYgNSAyMS4xMjEzIDUuODc4NjhDMjIgNi43NTczNiAyMiA4LjE3MTU3IDIyIDExQzIyIDE0Ljc3MTIgMjIgMTYuNjU2OSAyMC44Mjg0IDE3LjgyODRDMTkuNjU2OSAxOSAxNy43NzEyIDE5IDE0IDE5SDEwQzYuMjI4NzYgMTkgNC4zNDMxNSAxOSAzLjE3MTU3IDE3LjgyODRDMiAxNi42NTY5IDIgMTQuNzcxMiAyIDExWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE4IDE4LjVDMTggMTcuMDk1NSAxOCAxNi4zOTMzIDE3LjY2MjkgMTUuODg4OUMxNy41MTcgMTUuNjcwNSAxNy4zMjk1IDE1LjQ4MyAxNy4xMTExIDE1LjMzNzFDMTYuNjA2NyAxNSAxNS45MDQ1IDE1IDE0LjUgMTVIOS41QzguMDk1NTQgMTUgNy4zOTMzMSAxNSA2Ljg4ODg2IDE1LjMzNzFDNi42NzA0OCAxNS40ODMgNi40ODI5OCAxNS42NzA1IDYuMzM3MDYgMTUuODg4OUM2IDE2LjM5MzMgNiAxNy4wOTU1IDYgMTguNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik02IDExLjVIMTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNiA5SDE4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Conditioner2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `conditioner-2` icon in the lineDuotone style.
  const Conditioner2LineDuotoneIcon({
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
    name: 'conditioner-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 11C2 8.17157 2 6.75736 2.87868 5.87868C3.75736 5 5.17157 5 8 5H16C18.8284 5 20.2426 5 21.1213 5.87868C22 6.75736 22 8.17157 22 11C22 14.7712 22 16.6569 20.8284 17.8284C19.6569 19 17.7712 19 14 19H10C6.22876 19 4.34315 19 3.17157 17.8284C2 16.6569 2 14.7712 2 11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 11.5H18" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 9H18" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M18 18.5C18 17.0955 18 16.3933 17.6629 15.8889C17.517 15.6705 17.3295 15.483 17.1111 15.3371C16.6067 15 15.9045 15 14.5 15H9.5C8.09554 15 7.39331 15 6.88886 15.3371C6.67048 15.483 6.48298 15.6705 6.33706 15.8889C6 16.3933 6 17.0955 6 18.5" stroke="currentColor" stroke-linecap="round"/>''',
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
