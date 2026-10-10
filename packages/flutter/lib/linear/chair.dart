// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chair` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3IDIxVjE2TTcgMjFWMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUuNDk5OCAxMkg4LjQ5OTc3QzYuODQ5ODUgMTIgNi4wMjQ4OSAxMiA1LjUxMjMzIDEyLjU4NThDNS4yMjY0NSAxMi45MTI1IDUuMTAwMDIgMTMuMzUwMyA1LjA0NDEgMTQuMDAwOEM0Ljk2NjY2IDE0LjkwMTggNC45Mjc5MyAxNS4zNTIzIDUuMjI1MTQgMTUuNjc2MkM1LjUyMjM1IDE2IDYuMDE0ODIgMTYgNi45OTk3NyAxNkgxNi45OTk4QzE3Ljk4NDcgMTYgMTguNDc3MiAxNiAxOC43NzQ0IDE1LjY3NjJDMTkuMDcxNiAxNS4zNTIzIDE5LjAzMjkgMTQuOTAxOCAxOC45NTU0IDE0LjAwMDhDMTguODk5NSAxMy4zNTAzIDE4Ljc3MzEgMTIuOTEyNSAxOC40ODcyIDEyLjU4NThDMTcuOTc0NiAxMiAxNy4xNDk3IDEyIDE1LjQ5OTggMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcgOEM3IDYuMTMwNzcgNyA1LjE5NjE1IDcuNDAxOTIgNC41QzcuNjY1MjMgNC4wNDM5NCA4LjA0Mzk0IDMuNjY1MjMgOC41IDMuNDAxOTJDOS4xOTYxNSAzIDEwLjEzMDggMyAxMiAzQzEzLjg2OTIgMyAxNC44MDM4IDMgMTUuNSAzLjQwMTkyQzE1Ljk1NjEgMy42NjUyMyAxNi4zMzQ4IDQuMDQzOTQgMTYuNTk4MSA0LjVDMTcgNS4xOTYxNSAxNyA2LjEzMDc3IDE3IDhWMTJIN1Y4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ChairLinearIcon extends StatelessWidget {
  /// Creates the `chair` icon in the linear style.
  const ChairLinearIcon({
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
    name: 'chair',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M17 21V16M7 21V16" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.4998 12H8.49977C6.84985 12 6.02489 12 5.51233 12.5858C5.22645 12.9125 5.10002 13.3503 5.0441 14.0008C4.96666 14.9018 4.92793 15.3523 5.22514 15.6762C5.52235 16 6.01482 16 6.99977 16H16.9998C17.9847 16 18.4772 16 18.7744 15.6762C19.0716 15.3523 19.0329 14.9018 18.9554 14.0008C18.8995 13.3503 18.7731 12.9125 18.4872 12.5858C17.9746 12 17.1497 12 15.4998 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 8C7 6.13077 7 5.19615 7.40192 4.5C7.66523 4.04394 8.04394 3.66523 8.5 3.40192C9.19615 3 10.1308 3 12 3C13.8692 3 14.8038 3 15.5 3.40192C15.9561 3.66523 16.3348 4.04394 16.5981 4.5C17 5.19615 17 6.13077 17 8V12H7V8Z" stroke="currentColor" stroke-linecap="round"/>''',
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
