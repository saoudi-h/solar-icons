// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMS45OTk4IDYuNDI2MzJMMjEuOTk5OCAxNy41NzM3QzIxLjk5OTggMTkuNDIxMSAyMC4zOTkxIDIwLjU4ODggMTkuMDk2NiAxOS42OTE2TDEzIDE1LjIzMTZWOC43Njg0NEwxOS4wOTY2IDQuMzA4MzhDMjAuMzk5MSAzLjQxMTIyIDIxLjk5OTggNC41Nzg5NSAyMS45OTk4IDYuNDI2MzJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMyA3LjEyMzAzTDEzIDE2Ljg3N0MxMyAxOC40OTM0IDExLjUzMjcgMTkuNTE1MiAxMC4zMzg4IDE4LjczMDJMMi45MjEzNSAxMy44NTMyQzEuNjkyODggMTMuMDQ1NSAxLjY5Mjg4IDEwLjk1NDUgMi45MjEzNiAxMC4xNDY4TDEwLjMzODggNS4yNjk4M0MxMS41MzI3IDQuNDg0ODIgMTMgNS41MDY1OCAxMyA3LjEyMzAzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class RewindBackBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `rewind-back` icon in the boldDuotone style.
  const RewindBackBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13 7.12303L13 16.877C13 18.4934 11.5327 19.5152 10.3388 18.7302L2.92135 13.8532C1.69288 13.0455 1.69288 10.9545 2.92136 10.1468L10.3388 5.26983C11.5327 4.48482 13 5.50658 13 7.12303Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M21.9998 6.42632L21.9998 17.5737C21.9998 19.4211 20.3991 20.5888 19.0966 19.6916L13 15.2316V8.76844L19.0966 4.30838C20.3991 3.41122 21.9998 4.57895 21.9998 6.42632Z" fill="currentColor"/>''',
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
