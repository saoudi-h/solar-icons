// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yLjM2NDA3IDEyLjk1NzlDMS45ODQ2MyAxMC4zMjA4IDEuNzk0OTEgOS4wMDIyOSAyLjMzNTM3IDcuODc0OTVDMi44NzU4MyA2Ljc0NzYgNC4wMjYxOSA2LjA2MjM0IDYuMzI2OTEgNC42OTE4MUw3LjcxMTc1IDMuODY2ODdDOS44MDEwNCAyLjYyMjI5IDEwLjg0NTcgMiAxMiAyQzEzLjE1NDMgMiAxNC4xOTkgMi42MjIyOSAxNi4yODgyIDMuODY2ODdMMTcuNjczMSA0LjY5MTgxQzE5Ljk3MzggNi4wNjIzNCAyMS4xMjQyIDYuNzQ3NiAyMS42NjQ2IDcuODc0OTVDMjIuMjA1MSA5LjAwMjI5IDIyLjAxNTQgMTAuMzIwOCAyMS42MzU5IDEyLjk1NzlMMjEuMzU3MiAxNC44OTUyQzIwLjg2OTcgMTguMjgyNyAyMC42MjYgMTkuOTc2NCAxOS40NTEgMjAuOTg4MkMxOC4yNzU5IDIyIDE2LjU1MjYgMjIgMTMuMTA2MSAyMkgxMC44OTM5QzcuNDQ3MzcgMjIgNS43MjQwOSAyMiA0LjU0OTAzIDIwLjk4ODJDMy4zNzM5NiAxOS45NzY0IDMuMTMwMjUgMTguMjgyNyAyLjY0Mjg0IDE0Ljg5NTJMMi4zNjQwNyAxMi45NTc5WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNSAxOEg5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class HomeAngleLinearIcon extends StatelessWidget {
  /// Creates the `home-angle` icon in the linear style.
  const HomeAngleLinearIcon({
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
    name: 'home-angle',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2.36407 12.9579C1.98463 10.3208 1.79491 9.00229 2.33537 7.87495C2.87583 6.7476 4.02619 6.06234 6.32691 4.69181L7.71175 3.86687C9.80104 2.62229 10.8457 2 12 2C13.1543 2 14.199 2.62229 16.2882 3.86687L17.6731 4.69181C19.9738 6.06234 21.1242 6.7476 21.6646 7.87495C22.2051 9.00229 22.0154 10.3208 21.6359 12.9579L21.3572 14.8952C20.8697 18.2827 20.626 19.9764 19.451 20.9882C18.2759 22 16.5526 22 13.1061 22H10.8939C7.44737 22 5.72409 22 4.54903 20.9882C3.37396 19.9764 3.13025 18.2827 2.64284 14.8952L2.36407 12.9579Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 18H9" stroke="currentColor" stroke-linecap="round"/>''',
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
