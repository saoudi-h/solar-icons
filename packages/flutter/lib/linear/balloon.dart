// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `balloon` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDE3Ljk5OThDMTYuMTQyIDE4LjAzNDMgMTkuNTkzNyAxNC4wNzk4IDE5LjU2MDMgOS44MDQzQzE5LjUyNjggNS41Mjg3NSAxNi4xNDIgMi4wMzQ3NiAxMiAyLjAwMDI2QzcuODU4IDEuOTY1NzYgNC41MjczNCA1LjQwMzggNC41NjA3NyA5LjY3OTM2QzQuNTk0MTkgMTMuOTU0OSA3Ljg1OCAxNy45NjUzIDEyIDE3Ljk5OThaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1LjUgOUMxNS40ODY3IDcuMzU2NDEgMTQuMTQzNiA2LjAxMzI2IDEyLjUgNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAyMC4zNTAyQzEyLjMyMTIgMjAuMzUwMiAxMi40ODE4IDIwLjM1MDIgMTIuNTkzMyAyMC4zMjgzQzEzLjI0NjYgMjAuMTk5OSAxMy42NDQxIDE5LjU1NTcgMTMuNDUxMSAxOC45Mzg0QzEzLjQxODEgMTguODMzIDEzLjM0MiAxOC42OTYyIDEzLjE4OTYgMTguNDIyN00xMiAyMC4zNTAyQzExLjY3ODggMjAuMzUwMiAxMS41MTgyIDIwLjM1MDIgMTEuNDA2NyAyMC4zMjgzQzEwLjc1MzQgMjAuMTk5OSAxMC4zNTU5IDE5LjU1NTcgMTAuNTQ4OSAxOC45Mzg0QzEwLjU4MTkgMTguODMzIDEwLjY1OCAxOC42OTYyIDEwLjgxMDQgMTguNDIyN00xMiAyMC4zNTAyVjIyLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BalloonLinearIcon extends StatelessWidget {
  /// Creates the `balloon` icon in the linear style.
  const BalloonLinearIcon({
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
    name: 'balloon',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 17.9998C16.142 18.0343 19.5937 14.0798 19.5603 9.8043C19.5268 5.52875 16.142 2.03476 12 2.00026C7.858 1.96576 4.52734 5.4038 4.56077 9.67936C4.59419 13.9549 7.858 17.9653 12 17.9998Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 9C15.4867 7.35641 14.1436 6.01326 12.5 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 20.3502C12.3212 20.3502 12.4818 20.3502 12.5933 20.3283C13.2466 20.1999 13.6441 19.5557 13.4511 18.9384C13.4181 18.833 13.342 18.6962 13.1896 18.4227M12 20.3502C11.6788 20.3502 11.5182 20.3502 11.4067 20.3283C10.7534 20.1999 10.3559 19.5557 10.5489 18.9384C10.5819 18.833 10.658 18.6962 10.8104 18.4227M12 20.3502V22.5" stroke="currentColor" stroke-linecap="round"/>''',
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
