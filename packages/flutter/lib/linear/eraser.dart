// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMy43NzEzIDE3LjMxNEw2LjY4NTk2IDEwLjIyODdNMTEuNDA5NiA1LjUwNTA2QzEzLjA3OTYgMy44MzUwMiAxMy45MTQ2IDMgMTQuOTUyMiAzQzE1Ljk4OTkgMyAxNi44MjQ5IDMuODM1MDIgMTguNDk0OSA1LjUwNTA2QzIwLjE2NSA3LjE3NTEgMjEgOC4wMTAxMiAyMSA5LjA0Nzc2QzIxIDEwLjA4NTQgMjAuMTY1IDEwLjkyMDQgMTguNDk0OSAxMi41OTA0TDEyLjU5MDQgMTguNDk0OUMxMC45MjA0IDIwLjE2NSAxMC4wODU0IDIxIDkuMDQ3NzYgMjFDOC4wMTAxMiAyMSA3LjE3NTEgMjAuMTY1IDUuNTA1MDYgMTguNDk0OUMzLjgzNTAyIDE2LjgyNDkgMyAxNS45ODk5IDMgMTQuOTUyMkMzIDEzLjkxNDYgMy44MzUwMiAxMy4wNzk2IDUuNTA1MDYgMTEuNDA5NkwxMS40MDk2IDUuNTA1MDZaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkgMjFIMjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class EraserLinearIcon extends StatelessWidget {
  /// Creates the `eraser` icon in the linear style.
  const EraserLinearIcon({
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
    name: 'eraser',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13.7713 17.314L6.68596 10.2287M11.4096 5.50506C13.0796 3.83502 13.9146 3 14.9522 3C15.9899 3 16.8249 3.83502 18.4949 5.50506C20.165 7.1751 21 8.01012 21 9.04776C21 10.0854 20.165 10.9204 18.4949 12.5904L12.5904 18.4949C10.9204 20.165 10.0854 21 9.04776 21C8.01012 21 7.1751 20.165 5.50506 18.4949C3.83502 16.8249 3 15.9899 3 14.9522C3 13.9146 3.83502 13.0796 5.50506 11.4096L11.4096 5.50506Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 21H21" stroke="currentColor" stroke-linecap="round"/>''',
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
