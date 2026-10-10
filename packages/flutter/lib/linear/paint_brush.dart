// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `paint-brush` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEzLjMxOTIgMTQuODM5MkMxMS42MDcyIDEzLjkzMDcgMTAuMTkwNyAxMi41Mzk0IDkuMjUwOTkgMTAuODQ2OE03LjAwNjkyIDE0LjcwNDZDNy4zMzY5MyAxMy41NTQ5IDguMDk1ODQgMTIuMzkxNiA5LjI1MDk5IDEwLjg0NjhDOS45MTk2MyA5Ljk1MjYgMTAuNzA3OCA5LjAyOTUyIDExLjU5NDMgOC4xMjEyNkMxNS4yNjIyIDQuMzYzMDkgMTkuMjIxNyAyLjI3ODg4IDIwLjQzODEgMy40NjYwNEMyMS42NTQ1IDQuNjUzMiAxOS42NjcxIDguNjYyMTkgMTUuOTk5MSAxMi40MjA0QzE1LjE1NjQgMTMuMjgzOCAxNC4yNTk1IDE0LjA4MzggMTMuMzE5MiAxNC44MzkyQzExLjkzMjMgMTUuOTI4MyAxMC41ODA5IDE2Ljc2NSA5LjQ5MzA4IDE3LjE2MzRNNy4wMDY5MiAxNC43MDQ2QzUuODQwMjUgMTQuNzA0NiAzLjYzNjQ1IDE0Ljg0NDkgMy41MzEwNSAxNy43OTYyQzMuNDc2NzcgMTkuMzE2MyAyLjA0ODI4IDE5LjcwOTIgMi4yNzM5NiAyMC41OTg1QzIuNDk5NjMgMjEuNDg3NyA5Ljg3OTggMjIuMTkwNiA5LjQ5MzA4IDE3LjE2MzRNNy4wMDY5MiAxNC43MDQ2QzcuODA2OTIgMTUuOTA0NiA5LjE1OTc1IDE2Ljk5NjcgOS40OTMwOCAxNy4xNjM0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class PaintBrushLinearIcon extends StatelessWidget {
  /// Creates the `paint-brush` icon in the linear style.
  const PaintBrushLinearIcon({
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
    name: 'paint-brush',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13.3192 14.8392C11.6072 13.9307 10.1907 12.5394 9.25099 10.8468M7.00692 14.7046C7.33693 13.5549 8.09584 12.3916 9.25099 10.8468C9.91963 9.9526 10.7078 9.02952 11.5943 8.12126C15.2622 4.36309 19.2217 2.27888 20.4381 3.46604C21.6545 4.6532 19.6671 8.66219 15.9991 12.4204C15.1564 13.2838 14.2595 14.0838 13.3192 14.8392C11.9323 15.9283 10.5809 16.765 9.49308 17.1634M7.00692 14.7046C5.84025 14.7046 3.63645 14.8449 3.53105 17.7962C3.47677 19.3163 2.04828 19.7092 2.27396 20.5985C2.49963 21.4877 9.8798 22.1906 9.49308 17.1634M7.00692 14.7046C7.80692 15.9046 9.15975 16.9967 9.49308 17.1634" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
