// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cloud-bolt-minimalistic` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNOC42NjY2NyAxMC4yNDI2QzguMjA1MjggOS45Mzc0IDcuNjgwNTkgOS43MTgzOSA3LjExNjE2IDkuNjA4ODdDNi44NDc1IDkuNTU2NzMgNi41Njk4MyA5LjUyOTQxIDYuMjg1NzEgOS41Mjk0MUMzLjkxODc4IDkuNTI5NDEgMiAxMS40MjU2IDIgMTMuNzY0N0MyIDE2LjEwMzggMy45MTg3OCAxOCA2LjI4NTcxIDE4TTE0LjM4MSA3LjAyNzIxQzE0Ljk3NjcgNi44MTkxMSAxNS42MTc4IDYuNzA1ODggMTYuMjg1NyA2LjcwNTg4QzE2Ljk0MDQgNi43MDU4OCAxNy41NjkzIDYuODE0NjggMTguMTU1MSA3LjAxNDk4TTcuMTE2MTYgOS42MDg4N0M2Ljg4NzA2IDguOTk3OCA2Ljc2MTkgOC4zMzY4NyA2Ljc2MTkgNy42NDcwNkM2Ljc2MTkgNC41MjgyNyA5LjMyMDI4IDIgMTIuNDc2MiAyQzE1LjQxNTkgMiAxNy44MzcxIDQuMTkzNzEgMTguMTU1MSA3LjAxNDk4TTE4LjE1NTEgNy4wMTQ5OEMyMC4zOTMgNy43ODAyNCAyMiA5Ljg4MTEzIDIyIDEyLjM1MjlDMjIgMTUuMDU5OSAyMC4wNzI2IDE3LjMyMjEgMTcuNSAxNy44NzIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwIDIyLjAwMDJMMTQuMjg1NyAxOC4zMDc4SDEwTDE0LjI4NTcgMTQuNjE1MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class CloudBoltMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `cloud-bolt-minimalistic` icon in the lineDuotone style.
  const CloudBoltMinimalisticLineDuotoneIcon({
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
    name: 'cloud-bolt-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M10 22.0002L14.2857 18.3078H10L14.2857 14.6152" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.66667 10.2426C8.20528 9.9374 7.68059 9.71839 7.11616 9.60887C6.8475 9.55673 6.56983 9.52941 6.28571 9.52941C3.91878 9.52941 2 11.4256 2 13.7647C2 16.1038 3.91878 18 6.28571 18M14.381 7.02721C14.9767 6.81911 15.6178 6.70588 16.2857 6.70588C16.9404 6.70588 17.5693 6.81468 18.1551 7.01498M7.11616 9.60887C6.88706 8.9978 6.7619 8.33687 6.7619 7.64706C6.7619 4.52827 9.32028 2 12.4762 2C15.4159 2 17.8371 4.19371 18.1551 7.01498M18.1551 7.01498C20.393 7.78024 22 9.88113 22 12.3529C22 15.0599 20.0726 17.3221 17.5 17.8722" stroke="currentColor" stroke-linecap="round"/>''',
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
