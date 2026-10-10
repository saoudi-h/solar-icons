// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `refresh-circle` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTcuMzc3NjkgMTEuNjI5NkM3LjM3NzY5IDkuMDcyNzYgOS40NjY3OSA3IDEyLjA0MzggN0MxMy40MDQ2IDcgMTQuNjI5NCA3LjU3Nzk3IDE1LjQ4MjQgOC41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkgMTFMNy4zNzc1NiAxMi41NTU2TDYgMTFNNy4zNzc1NiAxMi41NTU2TDcuMzc3NTYgMTEuNjI5NiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi42MTg4IDEyLjM3MTFDMTYuNjE4OCAxNC45MjggMTQuNTIxNyAxNy4wMDA3IDExLjkzNDggMTcuMDAwN0MxMC41Nzc3IDE3LjAwMDcgOS4zNTU0NCAxNi40MzAzIDguNSAxNS41MTg4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDEzTDE2LjYxODggMTEuNDQ1M0wxOCAxM00xNi42MTg4IDExLjQ0NTNWMTIuMzcxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTIiIGN5PSIxMiIgcj0iMTAiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class RefreshCircleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `refresh-circle` icon in the lineDuotone style.
  const RefreshCircleLineDuotoneIcon({
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
    name: 'refresh-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7.37769 11.6296C7.37769 9.07276 9.46679 7 12.0438 7C13.4046 7 14.6294 7.57797 15.4824 8.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 11L7.37756 12.5556L6 11M7.37756 12.5556L7.37756 11.6296" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.6188 12.3711C16.6188 14.928 14.5217 17.0007 11.9348 17.0007C10.5777 17.0007 9.35544 16.4303 8.5 15.5188" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 13L16.6188 11.4453L18 13M16.6188 11.4453V12.3712" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
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
