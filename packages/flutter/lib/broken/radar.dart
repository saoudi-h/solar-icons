// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05LjQxMTg1IDIxLjY1ODhDOS45NDExNCAyMS44MDA2IDEwLjQ3MTkgMjEuODk3MiAxMSAyMS45NTA5QzE1Ljc5NDcgMjIuNDM4NyAyMC4zNzE3IDE5LjM5MzEgMjEuNjU5MyAxNC41ODc3QzIzLjA4ODcgOS4yNTMwOCAxOS45MjI5IDMuNzY5NzEgMTQuNTg4MiAyLjM0MDI5QzExLjk1NTYgMS42MzQ4OSA5LjI4Njg0IDIuMDQ4NTcgNy4wODY5IDMuMjg5NzJNMTIgMTEuOTk5Nkw1LjAwMTk3IDYuMzM1NDZDNC41NzI4NSA1Ljk4ODEzIDMuOTM4NjkgNi4wNTE4MiAzLjYzNTk5IDYuNTEzNUMzLjA2Njc4IDcuMzgxNjMgMi42MjQxMyA4LjM1Mzg5IDIuMzQwNzggOS40MTEzNkMxLjM3MzIyIDEzLjAyMjQgMi41MTExMyAxNi43MDE1IDUuMDAxOTcgMTkuMTQ1MyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class RadarBrokenIcon extends StatelessWidget {
  /// Creates the `radar` icon in the broken style.
  const RadarBrokenIcon({
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
    name: 'radar',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.41185 21.6588C9.94114 21.8006 10.4719 21.8972 11 21.9509C15.7947 22.4387 20.3717 19.3931 21.6593 14.5877C23.0887 9.25308 19.9229 3.76971 14.5882 2.34029C11.9556 1.63489 9.28684 2.04857 7.0869 3.28972M12 11.9996L5.00197 6.33546C4.57285 5.98813 3.93869 6.05182 3.63599 6.5135C3.06678 7.38163 2.62413 8.35389 2.34078 9.41136C1.37322 13.0224 2.51113 16.7015 5.00197 19.1453" stroke="currentColor" stroke-linecap="round"/>''',
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
