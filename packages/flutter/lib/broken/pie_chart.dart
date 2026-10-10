// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMCAxNS41NTI0QzE4LjgyNjMgMTkuMjg5MyAxNS4zMzUxIDIyIDExLjIxMDggMjJDNi4xMjM4MyAyMiAyIDE3Ljg3NjIgMiAxMi43ODkyQzIgMTEuODE2OSAyLjE1MDY0IDEwLjg3OTggMi40Mjk4NSAxME04LjQ0NzU5IDRDNy4xNTE1MiA0LjQwNzA3IDUuOTc4OSA1LjA5MjkxIDUgNS45ODcyNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMS45MTMxIDkuOTQ3MjdDMjAuODUxNSA2LjE0NDM4IDE3Ljg1NTYgMy4xNDg0NSAxNC4wNTI3IDIuMDg2OUMxMi40MDkxIDEuNjI4MSAxMSAzLjA1NDE5IDExIDQuNzYwNjJWMTEuNDU1MUMxMSAxMi4zMDgzIDExLjY5MTcgMTMgMTIuNTQ0OSAxM0gxOS4yMzk0QzIwLjk0NTggMTMgMjIuMzcxOSAxMS41OTA5IDIxLjkxMzEgOS45NDcyN1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PieChartBrokenIcon extends StatelessWidget {
  /// Creates the `pie-chart` icon in the broken style.
  const PieChartBrokenIcon({
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
    name: 'pie-chart',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 15.5524C18.8263 19.2893 15.3351 22 11.2108 22C6.12383 22 2 17.8762 2 12.7892C2 11.8169 2.15064 10.8798 2.42985 10M8.44759 4C7.15152 4.40707 5.9789 5.09291 5 5.98724" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.9131 9.94727C20.8515 6.14438 17.8556 3.14845 14.0527 2.0869C12.4091 1.6281 11 3.05419 11 4.76062V11.4551C11 12.3083 11.6917 13 12.5449 13H19.2394C20.9458 13 22.3719 11.5909 21.9131 9.94727Z" stroke="currentColor" stroke-linecap="round"/>''',
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
