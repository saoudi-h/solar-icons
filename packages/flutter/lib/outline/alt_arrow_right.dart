// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNOC41MTE5MiA0LjQzMDU3QzguODI2NDEgNC4xNjEgOS4yOTk4OSA0LjE5NzQzIDkuNTY5NDYgNC41MTE5MkwxNS41Njk1IDExLjUxMTlDMTUuODEwMiAxMS43OTI4IDE1LjgxMDIgMTIuMjA3MiAxNS41Njk1IDEyLjQ4ODFMOS41Njk0NiAxOS40ODgxQzkuMjk5ODkgMTkuODAyNiA4LjgyNjQxIDE5LjgzOSA4LjUxMTkyIDE5LjU2OTVDOC4xOTc0MyAxOS4yOTk5IDguMTYxIDE4LjgyNjQgOC40MzA1NyAxOC41MTE5TDE0LjAxMjIgMTJMOC40MzA1NyA1LjQ4ODExQzguMTYxIDUuMTczNjEgOC4xOTc0MyA0LjcwMDE0IDguNTExOTIgNC40MzA1N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class AltArrowRightOutlineIcon extends StatelessWidget {
  /// Creates the `alt-arrow-right` icon in the outline style.
  const AltArrowRightOutlineIcon({
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
    name: 'alt-arrow-right',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.51192 4.43057C8.82641 4.161 9.29989 4.19743 9.56946 4.51192L15.5695 11.5119C15.8102 11.7928 15.8102 12.2072 15.5695 12.4881L9.56946 19.4881C9.29989 19.8026 8.82641 19.839 8.51192 19.5695C8.19743 19.2999 8.161 18.8264 8.43057 18.5119L14.0122 12L8.43057 5.48811C8.161 5.17361 8.19743 4.70014 8.51192 4.43057Z" fill="currentColor"/>''',
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
