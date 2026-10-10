// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `mirror-left` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDNIMTFDNy4yMjg3NiAzIDUuMzQzMTUgMyA0LjE3MTU3IDQuMTcxNTdDMyA1LjM0MzE1IDMgNy4yMjg3NiAzIDExVjEzQzMgMTYuNzcxMiAzIDE4LjY1NjkgNC4xNzE1NyAxOS44Mjg0QzUuMzQzMTUgMjEgNy4yMjg3NiAyMSAxMSAyMUgxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMSAzSDE1QzE3LjgyODQgMyAxOS4yNDI2IDMgMjAuMTIxMyAzLjg3ODY4QzIxIDQuNzU3MzYgMjEgNi4xNzE1NyAyMSA5VjE1QzIxIDE3LjgyODQgMjEgMTkuMjQyNiAyMC4xMjEzIDIwLjEyMTNDMTkuMjQyNiAyMSAxNy44Mjg0IDIxIDE1IDIxSDExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1kYXNoYXJyYXk9IjIuNSAzIi8+CjxwYXRoIGQ9Ik0xMiAyVjIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MirrorLeftLinearIcon extends StatelessWidget {
  /// Creates the `mirror-left` icon in the linear style.
  const MirrorLeftLinearIcon({
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
    name: 'mirror-left',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 3H11C7.22876 3 5.34315 3 4.17157 4.17157C3 5.34315 3 7.22876 3 11V13C3 16.7712 3 18.6569 4.17157 19.8284C5.34315 21 7.22876 21 11 21H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 3H15C17.8284 3 19.2426 3 20.1213 3.87868C21 4.75736 21 6.17157 21 9V15C21 17.8284 21 19.2426 20.1213 20.1213C19.2426 21 17.8284 21 15 21H11" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2.5 3"/>
<path d="M12 2V22" stroke="currentColor" stroke-linecap="round"/>''',
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
