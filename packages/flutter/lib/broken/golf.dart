// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `golf` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2Ljk3ODUgMjEuNTM2MUMxNS41MTI1IDIxLjgzMTIgMTMuODEyNiAyMiAxMiAyMkM2LjQ3NzE1IDIyIDIgMjAuNDMzIDIgMTguNUMyIDE2LjU2NyA2LjQ3NzE1IDE1IDEyIDE1QzE3LjUyMjggMTUgMjIgMTYuNTY3IDIyIDE4LjVDMjIgMTkuMDQ3NiAyMS42NDA3IDE5LjU2NTkgMjEgMjAuMDI3NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAxOFYyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTExLjk5OTggMy41TDE3LjQyMjEgNi4yMTExNEMxOC45ODMyIDYuOTkxNjkgMTkuNzYzOCA3LjM4MTk2IDE5Ljc2MzggOEMxOS43NjM4IDguNjE4MDQgMTguOTgzMiA5LjAwODMxIDE3LjQyMjEgOS43ODg4NkwxMS45OTk4IDEyLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class GolfBrokenIcon extends StatelessWidget {
  /// Creates the `golf` icon in the broken style.
  const GolfBrokenIcon({
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
    name: 'golf',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16.9785 21.5361C15.5125 21.8312 13.8126 22 12 22C6.47715 22 2 20.433 2 18.5C2 16.567 6.47715 15 12 15C17.5228 15 22 16.567 22 18.5C22 19.0476 21.6407 19.5659 21 20.0274" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 18V2" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.9998 3.5L17.4221 6.21114C18.9832 6.99169 19.7638 7.38196 19.7638 8C19.7638 8.61804 18.9832 9.00831 17.4221 9.78886L11.9998 12.5" stroke="currentColor" stroke-linecap="round"/>''',
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
