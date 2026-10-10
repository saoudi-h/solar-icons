// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rows-3` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuMDAwOTggMTQuNTgzQzMuMDAwOCAxNC4zOTM4IDMgMTQuMTk5NiAzIDE0TDMgMTBDMyA5LjgwMDQ0IDMuMDAwOCA5LjYwNjE2IDMuMDAwOTggOS40MTY5OUwyMSA5LjQxNjk5TDIxIDE0LjU4M0wzLjAwMDk4IDE0LjU4M1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTMuMDEzNjcgNy45MTY5OUMzLjA1MjUgNS40ODkgMy4yMzkzNyA0LjEwNDM4IDQuMTcxODcgMy4xNzE4N0M1LjM0MzQ1IDIuMDAwMyA3LjIyODc2IDIgMTEgMkwxMyAyQzE2Ljc3MTIgMiAxOC42NTY2IDIuMDAwMyAxOS44MjgxIDMuMTcxODdDMjAuNzYwNiA0LjEwNDM4IDIwLjk0ODUgNS40ODg5OSAyMC45ODczIDcuOTE2OTlMMy4wMTM2NyA3LjkxNjk5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjAuOTg3MyAxNi4wODNDMjAuOTQ4NSAxOC41MTEgMjAuNzYwNiAxOS44OTU2IDE5LjgyODEgMjAuODI4MUMxOC42NTY2IDIxLjk5OTcgMTYuNzcxMiAyMiAxMyAyMkwxMSAyMkM3LjIyODc2IDIyIDUuMzQzNDUgMjEuOTk5NyA0LjE3MTg3IDIwLjgyODFDMy4yMzkzNyAxOS44OTU2IDMuMDUyNSAxOC41MTEgMy4wMTM2NyAxNi4wODNMMjAuOTg3MyAxNi4wODNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class Rows3BoldIcon extends StatelessWidget {
  /// Creates the `rows-3` icon in the bold style.
  const Rows3BoldIcon({
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
    name: 'rows-3',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3.00098 14.583C3.0008 14.3938 3 14.1996 3 14L3 10C3 9.80044 3.0008 9.60616 3.00098 9.41699L21 9.41699L21 14.583L3.00098 14.583Z" fill="currentColor"/>
<path d="M3.01367 7.91699C3.0525 5.489 3.23937 4.10438 4.17187 3.17187C5.34345 2.0003 7.22876 2 11 2L13 2C16.7712 2 18.6566 2.0003 19.8281 3.17187C20.7606 4.10438 20.9485 5.48899 20.9873 7.91699L3.01367 7.91699Z" fill="currentColor"/>
<path d="M20.9873 16.083C20.9485 18.511 20.7606 19.8956 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22L11 22C7.22876 22 5.34345 21.9997 4.17187 20.8281C3.23937 19.8956 3.0525 18.511 3.01367 16.083L20.9873 16.083Z" fill="currentColor"/>''',
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
