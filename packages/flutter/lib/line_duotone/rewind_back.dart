// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEzLjAwMDIgOC43Njg0NEwxOS4wOTY5IDQuMzA4MzhDMjAuMzk5NCAzLjQxMTIyIDIyIDQuNTc4OTUgMjIgNi40MjYzMkwyMiAxNy41NzM3QzIyIDE5LjQyMTEgMjAuMzk5NCAyMC41ODg4IDE5LjA5NjkgMTkuNjkxNkwxMy4wMDAyIDE1LjIzMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMi45MjEzNiAxMC4xNDY4QzEuNjkyODggMTAuOTU0NSAxLjY5Mjg4IDEzLjA0NTUgMi45MjEzNSAxMy44NTMyTDEwLjMzODggMTguNzMwMkMxMS41MzI3IDE5LjUxNTIgMTMgMTguNDkzNCAxMyAxNi44NzdWNy4xMjMwM0MxMyA1LjUwNjU4IDExLjUzMjcgNC40ODQ4MiAxMC4zMzg4IDUuMjY5ODNMMi45MjEzNiAxMC4xNDY4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class RewindBackLineDuotoneIcon extends StatelessWidget {
  /// Creates the `rewind-back` icon in the lineDuotone style.
  const RewindBackLineDuotoneIcon({
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
    name: 'rewind-back',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2.92136 10.1468C1.69288 10.9545 1.69288 13.0455 2.92135 13.8532L10.3388 18.7302C11.5327 19.5152 13 18.4934 13 16.877V7.12303C13 5.50658 11.5327 4.48482 10.3388 5.26983L2.92136 10.1468Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13.0002 8.76844L19.0969 4.30838C20.3994 3.41122 22 4.57895 22 6.42632L22 17.5737C22 19.4211 20.3994 20.5888 19.0969 19.6916L13.0002 15.2316" stroke="currentColor" stroke-linecap="round"/>''',
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
