// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `loader` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTIuMDAwMUMyIDE3LjUyMjkgNi40NzcxNSAyMi4wMDAxIDEyIDIyLjAwMDFDMTcuNTIyOCAyMi4wMDAxIDIyIDE3LjUyMjkgMjIgMTIuMDAwMUMyMiAxMS4zMTg3IDIxLjkzMTkgMTAuNjUzMyAyMS44MDIgMTAuMDEwMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yLjgxNzg3IDguMDMyNTVDNC4zNTM1MSA0LjQ4MzM2IDcuODg2NzEgMiAxMS45OTk5IDJDMTIuNjg1OSAyIDEzLjM1NTcgMi4wNjkwNiAxNC4wMDI4IDIuMjAwNjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class LoaderBrokenIcon extends StatelessWidget {
  /// Creates the `loader` icon in the broken style.
  const LoaderBrokenIcon({
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
    name: 'loader',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 12.0001C2 17.5229 6.47715 22.0001 12 22.0001C17.5228 22.0001 22 17.5229 22 12.0001C22 11.3187 21.9319 10.6533 21.802 10.0103" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.81787 8.03255C4.35351 4.48336 7.88671 2 11.9999 2C12.6859 2 13.3557 2.06906 14.0028 2.20061" stroke="currentColor" stroke-linecap="round"/>''',
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
