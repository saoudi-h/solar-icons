// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMCAxOVYxOE00IDE5VjE4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTUuNTU1NTYgMThIMTguNDQ0NEMyMC40MDgxIDE4IDIyIDE2LjQwODEgMjIgMTQuNDQ0NFYxMkMyMiAxMC44OTU0IDIxLjEwNDYgMTAgMjAgMTBDMTguODk1NCAxMCAxOCAxMC44OTU0IDE4IDEyVjEzLjJDMTggMTMuNjQxOCAxNy42NDE4IDE0IDE3LjIgMTRIMTJINi44QzYuMzU4MTcgMTQgNiAxMy42NDE4IDYgMTMuMlYxMkM2IDEwLjg5NTQgNS4xMDQ1NyAxMCA0IDEwQzIuODk1NDMgMTAgMiAxMC44OTU0IDIgMTJWMTQuNDQ0NEMyIDE2LjQwODEgMy41OTE4OCAxOCA1LjU1NTU2IDE4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOS45OTk5IDEwQzE5Ljk5OTkgOS4wNzA2OSAxOS45OTk5IDguNjA2MDMgMTkuOTIzIDguMjE5NjRDMTkuNjA3NCA2LjYzMjg4IDE4LjM2NyA1LjM5MjQ5IDE2Ljc4MDIgNS4wNzY4NkMxNi4zOTM4IDUgMTUuOTI5MiA1IDE0Ljk5OTkgNUgxMS45OTk5SDguOTk5ODhDOC4wNzA1NyA1IDcuNjA1OTEgNSA3LjIxOTUyIDUuMDc2ODZDNS42MzI3NiA1LjM5MjQ5IDQuMzkyMzYgNi42MzI4OCA0LjA3Njc0IDguMjE5NjRDMy45OTk4OCA4LjYwNjAzIDQgOS4wNzA2OSA0IDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SofaLinearIcon extends StatelessWidget {
  /// Creates the `sofa` icon in the linear style.
  const SofaLinearIcon({
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
    name: 'sofa',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20 19V18M4 19V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.55556 18H18.4444C20.4081 18 22 16.4081 22 14.4444V12C22 10.8954 21.1046 10 20 10C18.8954 10 18 10.8954 18 12V13.2C18 13.6418 17.6418 14 17.2 14H12H6.8C6.35817 14 6 13.6418 6 13.2V12C6 10.8954 5.10457 10 4 10C2.89543 10 2 10.8954 2 12V14.4444C2 16.4081 3.59188 18 5.55556 18Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.9999 10C19.9999 9.07069 19.9999 8.60603 19.923 8.21964C19.6074 6.63288 18.367 5.39249 16.7802 5.07686C16.3938 5 15.9292 5 14.9999 5H11.9999H8.99988C8.07057 5 7.60591 5 7.21952 5.07686C5.63276 5.39249 4.39236 6.63288 4.07674 8.21964C3.99988 8.60603 4 9.07069 4 10" stroke="currentColor" stroke-linecap="round"/>''',
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
