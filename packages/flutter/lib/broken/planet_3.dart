// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `planet-3` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTcgMy4zMzc4MkM4LjQ3MDg3IDIuNDg2OTcgMTAuMTc4NiAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJDMiAxMC4xNzg2IDIuNDg2OTcgOC40NzA4NyAzLjMzNzgyIDdNMTAuNDM3MiAxMC45OTk3QzUuOTM3MTcgMTAuOTk5NyAzIDguMDA3MzkgMyA4LjAwNzM5TDIuODc3NDQgNy44OTc0Nk0xNC4wNzQ2IDEwLjA2ODRDMTUuMDQ4NyA5LjU2MjY2IDE1LjgwNjQgOC45OTMyMyAxNi41IDguNzU1NDRDMTkuMDgyOSA3Ljg2OTk4IDIxIDguMDA3NCAyMSA4LjAwNzRIMjEuMTcxM00yMS42MDU1IDE0Ljc5MDdMMjEuMjcwMSAxNUMxOS44OTAzIDE1Ljg3MSAxNy41MjEgMTcgMTQuNTA5MiAxN0MxMS4xNzIgMTcgOS40MDA2MyAxNS4yMjY5IDcuOTAzMTUgMTQuNzU1OE01LjAwMDU0IDE0LjExNDlDMy43NjgxNiAxMy45NTcyIDIuOTk5OTIgMTQuMDA3NyAyLjk5OTkyIDE0LjAwNzdMMi4yMDY5MSAxNC4wMzM2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Planet3BrokenIcon extends StatelessWidget {
  /// Creates the `planet-3` icon in the broken style.
  const Planet3BrokenIcon({
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
    name: 'planet-3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7M10.4372 10.9997C5.93717 10.9997 3 8.00739 3 8.00739L2.87744 7.89746M14.0746 10.0684C15.0487 9.56266 15.8064 8.99323 16.5 8.75544C19.0829 7.86998 21 8.0074 21 8.0074H21.1713M21.6055 14.7907L21.2701 15C19.8903 15.871 17.521 17 14.5092 17C11.172 17 9.40063 15.2269 7.90315 14.7558M5.00054 14.1149C3.76816 13.9572 2.99992 14.0077 2.99992 14.0077L2.20691 14.0336" stroke="currentColor" stroke-linecap="round"/>''',
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
