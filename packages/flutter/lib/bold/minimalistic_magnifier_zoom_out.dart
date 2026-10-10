// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOS40Njk3IDE5LjQ2OTdDMTkuNzYyNiAxOS4xNzY4IDIwLjIzNzQgMTkuMTc2OCAyMC41MzAzIDE5LjQ2OTdMMjIuNTMwMyAyMS40Njk3QzIyLjgyMzEgMjEuNzYyNiAyMi44MjMxIDIyLjIzNzQgMjIuNTMwMyAyMi41MzAzQzIyLjIzNzQgMjIuODIzMSAyMS43NjI2IDIyLjgyMzEgMjEuNDY5NyAyMi41MzAzTDE5LjQ2OTcgMjAuNTMwM0MxOS4xNzY4IDIwLjIzNzQgMTkuMTc2OCAxOS43NjI2IDE5LjQ2OTcgMTkuNDY5N1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS41IDJDMTYuNzQ2NyAyIDIxIDYuMjUzMjkgMjEgMTEuNUMyMSAxNi43NDY3IDE2Ljc0NjcgMjEgMTEuNSAyMUM2LjI1MzI5IDIxIDIgMTYuNzQ2NyAyIDExLjVDMiA2LjI1MzI5IDYuMjUzMjkgMiAxMS41IDJaTTkgMTAuNzVDOC41ODU3OSAxMC43NSA4LjI1IDExLjA4NTggOC4yNSAxMS41QzguMjUgMTEuOTE0MiA4LjU4NTc5IDEyLjI1IDkgMTIuMjVIMTRDMTQuNDE0MiAxMi4yNSAxNC43NSAxMS45MTQyIDE0Ljc1IDExLjVDMTQuNzUgMTEuMDg1OCAxNC40MTQyIDEwLjc1IDE0IDEwLjc1SDlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MinimalisticMagnifierZoomOutBoldIcon extends StatelessWidget {
  /// Creates the `minimalistic-magnifier-zoom-out` icon in the bold style.
  const MinimalisticMagnifierZoomOutBoldIcon({
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
    name: 'minimalistic-magnifier-zoom-out',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M19.4697 19.4697C19.7626 19.1768 20.2374 19.1768 20.5303 19.4697L22.5303 21.4697C22.8231 21.7626 22.8231 22.2374 22.5303 22.5303C22.2374 22.8231 21.7626 22.8231 21.4697 22.5303L19.4697 20.5303C19.1768 20.2374 19.1768 19.7626 19.4697 19.4697Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 2C16.7467 2 21 6.25329 21 11.5C21 16.7467 16.7467 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 6.25329 6.25329 2 11.5 2ZM9 10.75C8.58579 10.75 8.25 11.0858 8.25 11.5C8.25 11.9142 8.58579 12.25 9 12.25H14C14.4142 12.25 14.75 11.9142 14.75 11.5C14.75 11.0858 14.4142 10.75 14 10.75H9Z" fill="currentColor"/>''',
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
