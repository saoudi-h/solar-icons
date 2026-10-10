// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMC45ODczIDE2LjA4NEMyMC45NDg0IDE4LjUxMTQgMjAuNzYwNSAxOS44OTU3IDE5LjgyODEgMjAuODI4MUMxOC42NTY2IDIxLjk5OTcgMTYuNzcxMiAyMiAxMyAyMkgxMUM3LjIyODc3IDIyIDUuMzQzNDUgMjEuOTk5NyA0LjE3MTg4IDIwLjgyODFDMy4yMzk1IDE5Ljg5NTcgMy4wNTE1NiAxOC41MTE0IDMuMDEyNyAxNi4wODRIMjAuOTg3M1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTExLjI1IDE0LjU4NEgzLjAwMDk4QzMuMDAwOCAxNC4zOTQ1IDMgMTQuMTk5OSAzIDE0VjEwQzMgOS44MDA0NCAzLjAwMDggOS42MDYxNiAzLjAwMDk4IDkuNDE2OTlIMTEuMjVWMTQuNTg0WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjEgMTBWMTRDMjEgMTQuMTk5OSAyMC45OTkyIDE0LjM5NDUgMjAuOTk5IDE0LjU4NEgxMi43NVY5LjQxNjk5SDIwLjk5OUMyMC45OTkyIDkuNjA2MTYgMjEgOS44MDA0NCAyMSAxMFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEzIDJDMTYuNzcxMiAyIDE4LjY1NjYgMi4wMDAzIDE5LjgyODEgMy4xNzE4OEMyMC43NjA2IDQuMTA0MzggMjAuOTQ4NSA1LjQ4ODk5IDIwLjk4NzMgNy45MTY5OUgzLjAxMjdDMy4wNTE1MiA1LjQ4ODk5IDMuMjM5MzcgNC4xMDQzOCA0LjE3MTg4IDMuMTcxODhDNS4zNDM0NSAyLjAwMDMgNy4yMjg3NiAyIDExIDJIMTNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class TableCellsSplitBoldIcon extends StatelessWidget {
  /// Creates the `table-cells-split` icon in the bold style.
  const TableCellsSplitBoldIcon({
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
    name: 'table-cells-split',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M20.9873 16.084C20.9484 18.5114 20.7605 19.8957 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22H11C7.22877 22 5.34345 21.9997 4.17188 20.8281C3.2395 19.8957 3.05156 18.5114 3.0127 16.084H20.9873Z" fill="currentColor"/>
<path d="M11.25 14.584H3.00098C3.0008 14.3945 3 14.1999 3 14V10C3 9.80044 3.0008 9.60616 3.00098 9.41699H11.25V14.584Z" fill="currentColor"/>
<path d="M21 10V14C21 14.1999 20.9992 14.3945 20.999 14.584H12.75V9.41699H20.999C20.9992 9.60616 21 9.80044 21 10Z" fill="currentColor"/>
<path d="M13 2C16.7712 2 18.6566 2.0003 19.8281 3.17188C20.7606 4.10438 20.9485 5.48899 20.9873 7.91699H3.0127C3.05152 5.48899 3.23937 4.10438 4.17188 3.17188C5.34345 2.0003 7.22876 2 11 2H13Z" fill="currentColor"/>''',
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
