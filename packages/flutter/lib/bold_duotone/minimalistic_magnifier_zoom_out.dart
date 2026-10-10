// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `minimalistic-magnifier-zoom-out` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxMS41IiBjeT0iMTEuNSIgcj0iOS41IiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xOS40Njk3IDE5LjQ2OTdDMTkuNzYyNiAxOS4xNzY4IDIwLjIzNzQgMTkuMTc2OCAyMC41MzAzIDE5LjQ2OTdMMjIuNTMwMyAyMS40Njk3QzIyLjgyMzEgMjEuNzYyNiAyMi44MjMxIDIyLjIzNzQgMjIuNTMwMyAyMi41MzAzQzIyLjIzNzQgMjIuODIzMSAyMS43NjI2IDIyLjgyMzEgMjEuNDY5NyAyMi41MzAzTDE5LjQ2OTcgMjAuNTMwM0MxOS4xNzY4IDIwLjIzNzQgMTkuMTc2OCAxOS43NjI2IDE5LjQ2OTcgMTkuNDY5N1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE0IDEwLjc1QzE0LjQxNDIgMTAuNzUgMTQuNzUgMTEuMDg1OCAxNC43NSAxMS41QzE0Ljc1IDExLjkxNDIgMTQuNDE0MiAxMi4yNSAxNCAxMi4yNUg5QzguNTg1NzkgMTIuMjUgOC4yNSAxMS45MTQyIDguMjUgMTEuNUM4LjI1IDExLjA4NTggOC41ODU3OSAxMC43NSA5IDEwLjc1SDE0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MinimalisticMagnifierZoomOutBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `minimalistic-magnifier-zoom-out` icon in the boldDuotone style.
  const MinimalisticMagnifierZoomOutBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M19.4697 19.4697C19.7626 19.1768 20.2374 19.1768 20.5303 19.4697L22.5303 21.4697C22.8231 21.7626 22.8231 22.2374 22.5303 22.5303C22.2374 22.8231 21.7626 22.8231 21.4697 22.5303L19.4697 20.5303C19.1768 20.2374 19.1768 19.7626 19.4697 19.4697Z" fill="currentColor"/>
<path d="M14 10.75C14.4142 10.75 14.75 11.0858 14.75 11.5C14.75 11.9142 14.4142 12.25 14 12.25H9C8.58579 12.25 8.25 11.9142 8.25 11.5C8.25 11.0858 8.58579 10.75 9 10.75H14Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" fill="currentColor"/>''',
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
