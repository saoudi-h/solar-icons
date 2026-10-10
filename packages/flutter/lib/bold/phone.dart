// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `phone` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2LjU1NjIgMTIuOTA2MkwxNi4xMDA3IDEzLjM1OUMxNi4xMDA3IDEzLjM1OSAxNS4wMTgxIDE0LjQzNTUgMTIuMDYzMSAxMS40OTcyQzkuMTA4MTIgOC41NTkwMSAxMC4xOTA3IDcuNDgyNTcgMTAuMTkwNyA3LjQ4MjU3TDEwLjQ3NzUgNy4xOTczOEMxMS4xODQxIDYuNDk0ODQgMTEuMjUwNyA1LjM2NjkxIDEwLjYzNDIgNC41NDM0OEw5LjM3MzI2IDIuODU5MDhDOC42MTAyOCAxLjgzOTkyIDcuMTM1OTYgMS43MDUyOSA2LjI2MTQ1IDIuNTc0ODNMNC42OTE4NSA0LjEzNTUyQzQuMjU4MjMgNC41NjY2OCAzLjk2NzY1IDUuMTI1NTkgNC4wMDI4OSA1Ljc0NTYxQzQuMDkzMDQgNy4zMzE4MiA0LjgxMDcxIDEwLjc0NDcgOC44MTUzNiAxNC43MjY2QzEzLjA2MjEgMTguOTQ5MiAxNy4wNDY4IDE5LjExNyAxOC42NzYzIDE4Ljk2NTFDMTkuMTkxNyAxOC45MTcxIDE5LjYzOTkgMTguNjU0NiAyMC4wMDExIDE4LjI5NTRMMjEuNDIxNyAxNi44ODNDMjIuMzgwNiAxNS45Mjk1IDIyLjExMDIgMTQuMjk0OSAyMC44ODMzIDEzLjYyOEwxOC45NzI4IDEyLjU4OTRDMTguMTY3MiAxMi4xNTE1IDE3LjE4NTggMTIuMjgwMSAxNi41NTYyIDEyLjkwNjJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class PhoneBoldIcon extends StatelessWidget {
  /// Creates the `phone` icon in the bold style.
  const PhoneBoldIcon({
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
    name: 'phone',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.5562 12.9062L16.1007 13.359C16.1007 13.359 15.0181 14.4355 12.0631 11.4972C9.10812 8.55901 10.1907 7.48257 10.1907 7.48257L10.4775 7.19738C11.1841 6.49484 11.2507 5.36691 10.6342 4.54348L9.37326 2.85908C8.61028 1.83992 7.13596 1.70529 6.26145 2.57483L4.69185 4.13552C4.25823 4.56668 3.96765 5.12559 4.00289 5.74561C4.09304 7.33182 4.81071 10.7447 8.81536 14.7266C13.0621 18.9492 17.0468 19.117 18.6763 18.9651C19.1917 18.9171 19.6399 18.6546 20.0011 18.2954L21.4217 16.883C22.3806 15.9295 22.1102 14.2949 20.8833 13.628L18.9728 12.5894C18.1672 12.1515 17.1858 12.2801 16.5562 12.9062Z" fill="currentColor"/>''',
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
