// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMC45MTcxIDEwLjUwMzJDMTkuNTU5OCA5LjAzODg5IDE2LjgwNjggNyAxMiA3QzEwLjg0MDQgNyA5LjgwMDI1IDcuMTE4NjcgOC44NzA0MyA3LjMxOTMxTTIyIDEzLjg1MDRDMjIgMTUuOTEwMiAyMC4yMTg0IDE3LjQxNTEgMTguMzkyOCAxNi44OTczTDE3LjA1MzEgMTYuNTE3M0MxNS44NDQxIDE2LjE3NDQgMTUgMTQuOTgyNiAxNSAxMy42MTg1QzE1IDEzLjYxODMgMTQuOTk5OCAxMS45NjM5IDEyIDExLjk2MzlDOS4wMDExNCAxMS45NjM5IDkgMTMuNjE3MyA5IDEzLjYxODVDOC45OTk5OCAxNC45ODI2IDguMTU1OSAxNi4xNzQ0IDYuOTQ2OSAxNi41MTczTDUuNjA3MiAxNi44OTczQzMuNzgxNTggMTcuNDE1MSAyIDE1LjkxMDIgMiAxMy44NTA0QzIgMTIuNjEyNyAyLjI3NjU5IDExLjM3MyAzLjA4Mjg5IDEwLjUwMzJDMy42NjE5NSA5Ljg3ODUgNC40OTUwMiA5LjE0OTIzIDUuNjMzMTkgOC41MTgzMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class EndCallRoundedBrokenIcon extends StatelessWidget {
  /// Creates the `end-call-rounded` icon in the broken style.
  const EndCallRoundedBrokenIcon({
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
    name: 'end-call-rounded',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20.9171 10.5032C19.5598 9.03889 16.8068 7 12 7C10.8404 7 9.80025 7.11867 8.87043 7.31931M22 13.8504C22 15.9102 20.2184 17.4151 18.3928 16.8973L17.0531 16.5173C15.8441 16.1744 15 14.9826 15 13.6185C15 13.6183 14.9998 11.9639 12 11.9639C9.00114 11.9639 9 13.6173 9 13.6185C8.99998 14.9826 8.1559 16.1744 6.9469 16.5173L5.6072 16.8973C3.78158 17.4151 2 15.9102 2 13.8504C2 12.6127 2.27659 11.373 3.08289 10.5032C3.66195 9.8785 4.49502 9.14923 5.63319 8.51831" stroke="currentColor" stroke-linecap="round"/>''',
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
