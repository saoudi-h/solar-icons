// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04IDEwQzggNy43OTA4NiA5Ljc5MDg2IDYgMTIgNkMxNC4yMDkxIDYgMTYgNy43OTA4NiAxNiAxMFYxNEMxNiAxNi4yMDkxIDE0LjIwOTEgMTggMTIgMThDOS43OTA4NiAxOCA4IDE2LjIwOTEgOCAxNFYxMFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOC41IDEwSDE1LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTBWNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDguODkxODJWMy44NTAyMkMxMiAyLjczNjQ2IDExLjA5NTUgMS44MTI1NCAxMC4wMTI4IDIuMDMyNjdDNS40NDE5MyAyLjk2MTk0IDIgNy4wMzQwNyAyIDExLjkxNjhDMiAxNy40ODU2IDYuNDc3MTUgMjIgMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy40ODU2IDIyIDExLjkxNjhDMjIgNy45MjU2NSAxOS43MDAzIDQuNDc2MSAxNi4zNjQxIDIuODQxOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class MouseCircleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `mouse-circle` icon in the lineDuotone style.
  const MouseCircleLineDuotoneIcon({
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
    name: 'mouse-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 10C8 7.79086 9.79086 6 12 6C14.2091 6 16 7.79086 16 10V14C16 16.2091 14.2091 18 12 18C9.79086 18 8 16.2091 8 14V10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 10H15.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 10V6" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 8.89182V3.85022C12 2.73646 11.0955 1.81254 10.0128 2.03267C5.44193 2.96194 2 7.03407 2 11.9168C2 17.4856 6.47715 22 12 22C17.5228 22 22 17.4856 22 11.9168C22 7.92565 19.7003 4.4761 16.3641 2.8419" stroke="currentColor" stroke-linecap="round"/>''',
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
