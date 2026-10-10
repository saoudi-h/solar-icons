// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04LjMwMjczIDExLjU5NTZMMTEuNjI5NiA4LjE2NDg1QzExLjg0MjggNy45NDUwNSAxMi4xNTczIDcuOTQ1MDUgMTIuMzcwNCA4LjE2NDg1TDE4LjgwMDEgMTQuNzk1M0MxOS4yMDEzIDE1LjIwOTEgMTguOTU4MSAxNiAxOC40Mjk3IDE2SDEyLjcwNzFMOC4zMDI3MyAxMS41OTU2WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMS4yOTI5IDE2LjAwMDlINS41NzAzQzUuMDQxODkgMTYuMDAwOSA0Ljc5ODY5IDE1LjIwOTkgNS4xOTk5IDE0Ljc5NjJMNy42MDY0OCAxMi4zMTQ1TDExLjI5MjkgMTYuMDAwOVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class AltArrowUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `alt-arrow-up` icon in the boldDuotone style.
  const AltArrowUpBoldDuotoneIcon({
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
    name: 'alt-arrow-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.30273 11.5956L11.6296 8.16485C11.8428 7.94505 12.1573 7.94505 12.3704 8.16485L18.8001 14.7953C19.2013 15.2091 18.9581 16 18.4297 16H12.7071L8.30273 11.5956Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.2929 16.0009H5.5703C5.04189 16.0009 4.79869 15.2099 5.1999 14.7962L7.60648 12.3145L11.2929 16.0009Z" fill="currentColor"/>''',
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
