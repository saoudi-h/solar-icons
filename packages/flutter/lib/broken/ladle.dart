// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ladle` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgNS42ODQyMUMyIDMuNjQ5NDggMy42NDk0OCAyIDUuNjg0MjEgMkM3LjcxODk0IDIgOS4zNjg0MiAzLjY0OTQ4IDkuMzY4NDIgNS42ODQyMU0yMiAxNC41VjE1LjY4NDJDMjIgMTkuMTcyMyAxOS4xNzIzIDIyIDE1LjY4NDIgMjJDMTIuMTk2MSAyMiA5LjM2ODQyIDE5LjE3MjMgOS4zNjg0MiAxNS42ODQyVjE0LjYzMTZWOS4xNTc5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE2IDEyQzEyLjk0NjEgMTIgOS41IDEzLjExOTMgOS41IDE0LjVDOS41IDE1Ljg4MDcgMTIuOTQ2MSAxNyAxNiAxN0MxOS4wNTM5IDE3IDIyIDE1Ljg4MDcgMjIgMTQuNUMyMiAxMy43ODAyIDIxLjE5OTMgMTMuMTMxNCAyMCAxMi42NzUzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class LadleBrokenIcon extends StatelessWidget {
  /// Creates the `ladle` icon in the broken style.
  const LadleBrokenIcon({
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
    name: 'ladle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 5.68421C2 3.64948 3.64948 2 5.68421 2C7.71894 2 9.36842 3.64948 9.36842 5.68421M22 14.5V15.6842C22 19.1723 19.1723 22 15.6842 22C12.1961 22 9.36842 19.1723 9.36842 15.6842V14.6316V9.1579" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 12C12.9461 12 9.5 13.1193 9.5 14.5C9.5 15.8807 12.9461 17 16 17C19.0539 17 22 15.8807 22 14.5C22 13.7802 21.1993 13.1314 20 12.6753" stroke="currentColor" stroke-linecap="round"/>''',
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
