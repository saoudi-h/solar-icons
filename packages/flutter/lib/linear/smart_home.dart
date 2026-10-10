// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smart-home` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEzLjk5OTkgMjJDMTcuNzcxMSAyMiAxOS42NTY3IDIyIDIwLjgyODMgMjAuNzg4MUMyMS45OTk5IDE5LjU3NjMgMjEuOTk5OSAxNy42MjU4IDIxLjk5OTkgMTMuNzI1VjEyLjIwMzlDMjEuOTk5OSA5LjkxNTQ5IDIxLjk5OTkgOC43NzEyOCAyMS40ODA3IDcuODIyNzRDMjAuOTYxNSA2Ljg3NDIxIDIwLjAxMjkgNi4yODU1MSAxOC4xMTU4IDUuMTA4MTJMMTYuMTE1OCAzLjg2Njg3QzE0LjExMDUgMi42MjIyOSAxMy4xMDc4IDIgMTEuOTk5OSAyQzEwLjg5MTkgMiA5Ljg4OTI1IDIuNjIyMjkgNy44ODM5IDMuODY2ODdMNS44ODM5IDUuMTA4MTNDMy45ODY4MSA2LjI4NTUxIDMuMDM4MjcgNi44NzQyMSAyLjUxOTA3IDcuODIyNzRDMi4yMDE0OSA4LjQwMjkzIDIuMDc4MTcgOS4wNTYzMiAyLjAzMDI3IDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTExIDIyQzExIDE3LjAyOTQgNi45NzA1NiAxMyAyIDEzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggMjJDOCAxOC42ODYzIDUuMzEzNzEgMTYgMiAxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik01IDIyQzUgMjAuMzQzMSAzLjY1Njg1IDE5IDIgMTkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class SmartHomeLinearIcon extends StatelessWidget {
  /// Creates the `smart-home` icon in the linear style.
  const SmartHomeLinearIcon({
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
    name: 'smart-home',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13.9999 22C17.7711 22 19.6567 22 20.8283 20.7881C21.9999 19.5763 21.9999 17.6258 21.9999 13.725V12.2039C21.9999 9.91549 21.9999 8.77128 21.4807 7.82274C20.9615 6.87421 20.0129 6.28551 18.1158 5.10812L16.1158 3.86687C14.1105 2.62229 13.1078 2 11.9999 2C10.8919 2 9.88925 2.62229 7.8839 3.86687L5.8839 5.10813C3.98681 6.28551 3.03827 6.87421 2.51907 7.82274C2.20149 8.40293 2.07817 9.05632 2.03027 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 22C11 17.0294 6.97056 13 2 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 22C8 18.6863 5.31371 16 2 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 22C5 20.3431 3.65685 19 2 19" stroke="currentColor" stroke-linecap="round"/>''',
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
