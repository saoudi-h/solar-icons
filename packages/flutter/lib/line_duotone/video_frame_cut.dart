// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `video-frame-cut` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0LjUgMy4wMDI5M0MxNy4yOTM5IDMuMDIzMzEgMTguODIzNyAzLjE2NjQxIDE5LjgyODQgNC4xNzExMkMyMSA1LjM0MjY5IDIxIDcuMjI4MzEgMjEgMTAuOTk5NVYxMi45OTk1QzIxIDE2Ljc3MDggMjEgMTguNjU2NCAxOS44Mjg0IDE5LjgyOEMxOC44MjM3IDIwLjgzMjcgMTcuMjkzOSAyMC45NzU4IDE0LjUgMjAuOTk2Mk05LjQ5OTkxIDIwLjk5NjJDNi43MDYwOSAyMC45NzU4IDUuMTc2MjcgMjAuODMyNyA0LjE3MTU3IDE5LjgyOEMzIDE4LjY1NjQgMyAxNi43NzA4IDMgMTIuOTk5NVYxMC45OTk1QzMgNy4yMjgzMSAzIDUuMzQyNjkgNC4xNzE1NyA0LjE3MTEyQzUuMTc2MjcgMy4xNjY0MiA2LjcwNjA5IDMuMDIzMzEgOS40OTk5MSAzLjAwMjkzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTEyIDJWMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWRhc2hhcnJheT0iMyAzIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE3IDRWMjBNNyA0VjIwTTMuNSA4LjVIN00xNyA4LjVIMjAuNU0xNyAxNS41SDIwLjVNMy41IDE1LjVINyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class VideoFrameCutLineDuotoneIcon extends StatelessWidget {
  /// Creates the `video-frame-cut` icon in the lineDuotone style.
  const VideoFrameCutLineDuotoneIcon({
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
    name: 'video-frame-cut',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14.5 3.00293C17.2939 3.02331 18.8237 3.16641 19.8284 4.17112C21 5.34269 21 7.22831 21 10.9995V12.9995C21 16.7708 21 18.6564 19.8284 19.828C18.8237 20.8327 17.2939 20.9758 14.5 20.9962M9.49991 20.9962C6.70609 20.9758 5.17627 20.8327 4.17157 19.828C3 18.6564 3 16.7708 3 12.9995V10.9995C3 7.22831 3 5.34269 4.17157 4.17112C5.17627 3.16642 6.70609 3.02331 9.49991 3.00293" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 2V22" stroke="currentColor" stroke-linecap="round" stroke-dasharray="3 3"/>''',
    accent:
        r'''<path opacity="0.5" d="M17 4V20M7 4V20M3.5 8.5H7M17 8.5H20.5M17 15.5H20.5M3.5 15.5H7" stroke="currentColor" stroke-linecap="round"/>''',
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
