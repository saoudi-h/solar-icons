// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `waterdrop` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS42MTE1IDIyQzYuODU1NDkgMjIgMyAxOC4wNTY5IDMgMTMuMTkyOFYxMi45MjgxQzMgOC4zMTY1MSA1LjcyODU0IDQuMTYzNDcgOS45MDMyOSAyLjQyMDc3QzExLjI0NzMgMS44NTk3NCAxMi43NTI3IDEuODU5NzQgMTQuMDk2NyAyLjQyMDc3QzE4LjI3MTUgNC4xNjM0NyAyMSA4LjMxNjUxIDIxIDEyLjkyODFWMTMuMTkyOEMyMSAxOC4wNTY5IDE3LjE0NDUgMjIgMTIuMzg4NSAyMkgxMS42MTE1Wk0xMi4wNjY0IDUuOTYxNDVDMTIuMjQwMiA2LjMzNzQxIDEyLjA3NjQgNi43ODMxMyAxMS43MDA0IDYuOTU2OTlDMTAuMTU1IDcuNjcxNyA4LjkwNzEyIDkuMTI1MzQgOC4zMjk2MSAxMC45NDk5QzguMjA0NjIgMTEuMzQ0OSA3Ljc4MzE2IDExLjU2MzcgNy4zODgyNiAxMS40Mzg3QzYuOTkzMzUgMTEuMzEzNyA2Ljc3NDU0IDEwLjg5MjIgNi44OTk1NCAxMC40OTczQzcuNTkxNTQgOC4zMTA5NyA5LjEwNTkzIDYuNTA0MTggMTEuMDcwOCA1LjU5NTUyQzExLjQ0NjggNS40MjE2NiAxMS44OTI1IDUuNTg1NSAxMi4wNjY0IDUuOTYxNDVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class WaterdropBoldIcon extends StatelessWidget {
  /// Creates the `waterdrop` icon in the bold style.
  const WaterdropBoldIcon({
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
    name: 'waterdrop',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.6115 22C6.85549 22 3 18.0569 3 13.1928V12.9281C3 8.31651 5.72854 4.16347 9.90329 2.42077C11.2473 1.85974 12.7527 1.85974 14.0967 2.42077C18.2715 4.16347 21 8.31651 21 12.9281V13.1928C21 18.0569 17.1445 22 12.3885 22H11.6115ZM12.0664 5.96145C12.2402 6.33741 12.0764 6.78313 11.7004 6.95699C10.155 7.6717 8.90712 9.12534 8.32961 10.9499C8.20462 11.3449 7.78316 11.5637 7.38826 11.4387C6.99335 11.3137 6.77454 10.8922 6.89954 10.4973C7.59154 8.31097 9.10593 6.50418 11.0708 5.59552C11.4468 5.42166 11.8925 5.5855 12.0664 5.96145Z" fill="currentColor"/>''',
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
