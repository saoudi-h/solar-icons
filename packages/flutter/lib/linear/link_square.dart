// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `link-square` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTggMThDNS4xNzE1NyAxOCAzLjc1NzM2IDE4IDIuODc4NjggMTcuMTIxM0MyIDE2LjI0MjYgMiAxNC44Mjg0IDIgMTJDMiA5LjE3MTU3IDIgNy43NTczNiAyLjg3ODY4IDYuODc4NjhDMy43NTczNiA2IDUuMTcxNTcgNiA4IDZDMTAuODI4NCA2IDEyLjI0MjYgNiAxMy4xMjEzIDYuODc4NjhDMTQgNy43NTczNiAxNCA5LjE3MTU3IDE0IDEyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTEwIDEyQzEwIDE0LjgyODQgMTAgMTYuMjQyNiAxMC44Nzg3IDE3LjEyMTNDMTEuNzU3NCAxOCAxMy4xNzE2IDE4IDE2IDE4QzE4LjgyODQgMTggMjAuMjQyNiAxOCAyMS4xMjEzIDE3LjEyMTNDMjIgMTYuMjQyNiAyMiAxNC44Mjg0IDIyIDEyQzIyIDkuMTcxNTcgMjIgNy43NTczNiAyMS4xMjEzIDYuODc4NjhDMjAuMjQyNiA2IDE4LjgyODQgNiAxNiA2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class LinkSquareLinearIcon extends StatelessWidget {
  /// Creates the `link-square` icon in the linear style.
  const LinkSquareLinearIcon({
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
    name: 'link-square',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8 18C5.17157 18 3.75736 18 2.87868 17.1213C2 16.2426 2 14.8284 2 12C2 9.17157 2 7.75736 2.87868 6.87868C3.75736 6 5.17157 6 8 6C10.8284 6 12.2426 6 13.1213 6.87868C14 7.75736 14 9.17157 14 12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10 12C10 14.8284 10 16.2426 10.8787 17.1213C11.7574 18 13.1716 18 16 18C18.8284 18 20.2426 18 21.1213 17.1213C22 16.2426 22 14.8284 22 12C22 9.17157 22 7.75736 21.1213 6.87868C20.2426 6 18.8284 6 16 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
