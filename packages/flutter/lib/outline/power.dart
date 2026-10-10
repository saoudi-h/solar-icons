// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `power` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjc1IDJDMTIuNzUgMS41ODU3OSAxMi40MTQyIDEuMjUgMTIgMS4yNUMxMS41ODU4IDEuMjUgMTEuMjUgMS41ODU3OSAxMS4yNSAyVjZDMTEuMjUgNi40MTQyMSAxMS41ODU4IDYuNzUgMTIgNi43NUMxMi40MTQyIDYuNzUgMTIuNzUgNi40MTQyMSAxMi43NSA2VjJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik04Ljc5MTkgNC4zOTY3OEM5LjE3MzQ1IDQuMjM1NTcgOS4zNTIwOCAzLjc5NTU3IDkuMTkwODcgMy40MTQwMkM5LjAyOTY2IDMuMDMyNDYgOC41ODk2NiAyLjg1Mzg0IDguMjA4MSAzLjAxNTA1QzQuNzA4MzIgNC40OTM3MiAyLjI1IDcuOTU4OTEgMi4yNSAxMkMyLjI1IDE3LjM4NDggNi42MTUyMiAyMS43NSAxMiAyMS43NUMxNy4zODQ4IDIxLjc1IDIxLjc1IDE3LjM4NDggMjEuNzUgMTJDMjEuNzUgNy45NTg5MSAxOS4yOTE3IDQuNDkzNzIgMTUuNzkxOSAzLjAxNTA1QzE1LjQxMDMgMi44NTM4NCAxNC45NzAzIDMuMDMyNDYgMTQuODA5MSAzLjQxNDAyQzE0LjY0NzkgMy43OTU1NyAxNC44MjY1IDQuMjM1NTcgMTUuMjA4MSA0LjM5Njc4QzE4LjE3MjIgNS42NDkxMyAyMC4yNSA4LjU4Mjc5IDIwLjI1IDEyQzIwLjI1IDE2LjU1NjQgMTYuNTU2MyAyMC4yNSAxMiAyMC4yNUM3LjQ0MzY1IDIwLjI1IDMuNzUgMTYuNTU2NCAzLjc1IDEyQzMuNzUgOC41ODI3OSA1LjgyNzc5IDUuNjQ5MTMgOC43OTE5IDQuMzk2NzhaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class PowerOutlineIcon extends StatelessWidget {
  /// Creates the `power` icon in the outline style.
  const PowerOutlineIcon({
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
    name: 'power',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.75 2C12.75 1.58579 12.4142 1.25 12 1.25C11.5858 1.25 11.25 1.58579 11.25 2V6C11.25 6.41421 11.5858 6.75 12 6.75C12.4142 6.75 12.75 6.41421 12.75 6V2Z" fill="currentColor"/>
<path d="M8.7919 4.39678C9.17345 4.23557 9.35208 3.79557 9.19087 3.41402C9.02966 3.03246 8.58966 2.85384 8.2081 3.01505C4.70832 4.49372 2.25 7.95891 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 7.95891 19.2917 4.49372 15.7919 3.01505C15.4103 2.85384 14.9703 3.03246 14.8091 3.41402C14.6479 3.79557 14.8265 4.23557 15.2081 4.39678C18.1722 5.64913 20.25 8.58279 20.25 12C20.25 16.5564 16.5563 20.25 12 20.25C7.44365 20.25 3.75 16.5564 3.75 12C3.75 8.58279 5.82779 5.64913 8.7919 4.39678Z" fill="currentColor"/>''',
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
