// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zIDExLjI1TDMgMTBDMyA5LjE2MDk0IDMuMDAyNzIgOC40MTUyOCAzLjAxNTYyIDcuNzVMMjAuOTg1NCA3Ljc1QzIwLjk5ODMgOC40MTUyNyAyMSA5LjE2MDk1IDIxIDEwTDIxIDExLjI1TDMgMTEuMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMSAxNEMyMSAxNC44MzkgMjAuOTk4MyAxNS41ODQ3IDIwLjk4NTQgMTYuMjVMMy4wMTU2MiAxNi4yNUMzLjAwMjcyIDE1LjU4NDcgMyAxNC44MzkxIDMgMTRMMyAxMi43NUwyMSAxMi43NUwyMSAxNFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIwLjkxOTkgMTcuNzVDMjAuODA0NyAxOS4xODkzIDIwLjUyMjMgMjAuMTMzOSAxOS44MjgxIDIwLjgyODFDMTguNjU2NiAyMS45OTk3IDE2Ljc3MTIgMjIgMTMgMjJMMTEgMjJDNy4yMjg3NiAyMiA1LjM0MzQ1IDIxLjk5OTcgNC4xNzE4NyAyMC44MjgxQzMuNDc3NyAyMC4xMzM5IDMuMTk2MzIgMTkuMTg5MiAzLjA4MTA1IDE3Ljc1TDIwLjkxOTkgMTcuNzVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0zLjA4MTA1IDYuMjVDMy4xOTYzMiA0LjgxMDc1IDMuNDc3NyAzLjg2NjA1IDQuMTcxODcgMy4xNzE4N0M1LjM0MzQ1IDIuMDAwMyA3LjIyODc2IDIgMTEgMkwxMyAyQzE2Ljc3MTIgMiAxOC42NTY2IDIuMDAwMyAxOS44MjgxIDMuMTcxODdDMjAuNTIyMyAzLjg2NjA2IDIwLjgwNDcgNC44MTA3MSAyMC45MTk5IDYuMjVMMy4wODEwNSA2LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class Rows4BoldIcon extends StatelessWidget {
  /// Creates the `rows-4` icon in the bold style.
  const Rows4BoldIcon({
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
    name: 'rows-4',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3 11.25L3 10C3 9.16094 3.00272 8.41528 3.01562 7.75L20.9854 7.75C20.9983 8.41527 21 9.16095 21 10L21 11.25L3 11.25Z" fill="currentColor"/>
<path d="M21 14C21 14.839 20.9983 15.5847 20.9854 16.25L3.01562 16.25C3.00272 15.5847 3 14.8391 3 14L3 12.75L21 12.75L21 14Z" fill="currentColor"/>
<path d="M20.9199 17.75C20.8047 19.1893 20.5223 20.1339 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22L11 22C7.22876 22 5.34345 21.9997 4.17187 20.8281C3.4777 20.1339 3.19632 19.1892 3.08105 17.75L20.9199 17.75Z" fill="currentColor"/>
<path d="M3.08105 6.25C3.19632 4.81075 3.4777 3.86605 4.17187 3.17187C5.34345 2.0003 7.22876 2 11 2L13 2C16.7712 2 18.6566 2.0003 19.8281 3.17187C20.5223 3.86606 20.8047 4.81071 20.9199 6.25L3.08105 6.25Z" fill="currentColor"/>''',
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
