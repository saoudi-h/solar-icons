// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik02LjE0MjE0IDYuMTQyMTRDOC45MDM1NiAzLjM4MDcxIDEwLjI4NDMgMiAxMiAyQzEzLjcxNTcgMiAxNS4wOTY0IDMuMzgwNzEgMTcuODU3OSA2LjE0MjE0QzIwLjYxOTMgOC45MDM1NiAyMiAxMC4yODQzIDIyIDEyQzIyIDEzLjcxNTcgMjAuNjE5MyAxNS4wOTY0IDE3Ljg1NzkgMTcuODU3OUMxNS4wOTY0IDIwLjYxOTMgMTMuNzE1NyAyMiAxMiAyMkMxMC4yODQzIDIyIDguOTAzNTYgMjAuNjE5MyA2LjE0MjE0IDE3Ljg1NzlDMy4zODA3MSAxNS4wOTY0IDIgMTMuNzE1NyAyIDEyQzIgMTAuMjg0MyAzLjM4MDcxIDguOTAzNTYgNi4xNDIxNCA2LjE0MjE0WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMy4zMzMzIDE0TDE2IDExLjVMMTMuMzMzMyA5TTE2IDExLjVMMTAuNjY2NyAxMS41QzkuNzc3NzggMTEuNSA4IDEyIDggMTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class RouteLinearIcon extends StatelessWidget {
  /// Creates the `route` icon in the linear style.
  const RouteLinearIcon({
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
    name: 'route',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6.14214 6.14214C8.90356 3.38071 10.2843 2 12 2C13.7157 2 15.0964 3.38071 17.8579 6.14214C20.6193 8.90356 22 10.2843 22 12C22 13.7157 20.6193 15.0964 17.8579 17.8579C15.0964 20.6193 13.7157 22 12 22C10.2843 22 8.90356 20.6193 6.14214 17.8579C3.38071 15.0964 2 13.7157 2 12C2 10.2843 3.38071 8.90356 6.14214 6.14214Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.3333 14L16 11.5L13.3333 9M16 11.5L10.6667 11.5C9.77778 11.5 8 12 8 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
