// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTEuNTExOSA4LjQzMDU2QzExLjc5MjggOC4xODk4MSAxMi4yMDcyIDguMTg5ODEgMTIuNDg4MSA4LjQzMDU2TDE5LjQ4ODEgMTQuNDMwNkMxOS44MDI2IDE0LjcwMDEgMTkuODM5IDE1LjE3MzYgMTkuNTY5NSAxNS40ODgxQzE5LjI5OTkgMTUuODAyNiAxOC44MjY0IDE1LjgzOSAxOC41MTE5IDE1LjU2OTRMMTIgOS45ODc4MUw1LjQ4ODExIDE1LjU2OTRDNS4xNzM2MSAxNS44MzkgNC43MDAxNCAxNS44MDI2IDQuNDMwNTcgMTUuNDg4MUM0LjE2MSAxNS4xNzM2IDQuMTk3NDMgMTQuNzAwMSA0LjUxMTkyIDE0LjQzMDZMMTEuNTExOSA4LjQzMDU2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class AltArrowUpOutlineIcon extends StatelessWidget {
  /// Creates the `alt-arrow-up` icon in the outline style.
  const AltArrowUpOutlineIcon({
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
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5119 8.43056C11.7928 8.18981 12.2072 8.18981 12.4881 8.43056L19.4881 14.4306C19.8026 14.7001 19.839 15.1736 19.5695 15.4881C19.2999 15.8026 18.8264 15.839 18.5119 15.5694L12 9.98781L5.48811 15.5694C5.17361 15.839 4.70014 15.8026 4.43057 15.4881C4.161 15.1736 4.19743 14.7001 4.51192 14.4306L11.5119 8.43056Z" fill="currentColor"/>''',
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
