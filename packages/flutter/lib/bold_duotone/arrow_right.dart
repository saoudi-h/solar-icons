// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjI1IDEyQzMuMjUgMTEuNTg1OCAzLjU4NTc5IDExLjI1IDQgMTEuMjVIMTMuMjVWMTIuNzVINEMzLjU4NTc5IDEyLjc1IDMuMjUgMTIuNDE0MiAzLjI1IDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTMuMjUgMTIuNzVWMThDMTMuMjUgMTguMzAzNCAxMy40MzI3IDE4LjU3NjggMTMuNzEzIDE4LjY5MjlDMTMuOTkzMiAxOC44MDkgMTQuMzE1OCAxOC43NDQ5IDE0LjUzMDMgMTguNTMwNEwyMC41MzAzIDEyLjUzMDRDMjAuNjcxIDEyLjM4OTcgMjAuNzUgMTIuMTk4OSAyMC43NSAxMkMyMC43NSAxMS44MDExIDIwLjY3MSAxMS42MTAzIDIwLjUzMDMgMTEuNDY5N0wxNC41MzAzIDUuNDY5NjlDMTQuMzE1OCA1LjI1NTE5IDEzLjk5MzIgNS4xOTEwMyAxMy43MTMgNS4zMDcxMUMxMy40MzI3IDUuNDIzMiAxMy4yNSA1LjY5NjY4IDEzLjI1IDYuMDAwMDJWMTEuMjVWMTIuNzVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ArrowRightBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-right` icon in the boldDuotone style.
  const ArrowRightBoldDuotoneIcon({
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
    name: 'arrow-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.25 12.75V18C13.25 18.3034 13.4327 18.5768 13.713 18.6929C13.9932 18.809 14.3158 18.7449 14.5303 18.5304L20.5303 12.5304C20.671 12.3897 20.75 12.1989 20.75 12C20.75 11.8011 20.671 11.6103 20.5303 11.4697L14.5303 5.46969C14.3158 5.25519 13.9932 5.19103 13.713 5.30711C13.4327 5.4232 13.25 5.69668 13.25 6.00002V11.25V12.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M3.25 12C3.25 11.5858 3.58579 11.25 4 11.25H13.25V12.75H4C3.58579 12.75 3.25 12.4142 3.25 12Z" fill="currentColor"/>''',
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
