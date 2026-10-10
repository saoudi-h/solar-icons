// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTIiIGN5PSIxMiIgcj0iMTAiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDExLjI1QzEyLjQxNDIgMTEuMjUgMTIuNzUgMTEuNTg1OCAxMi43NSAxMkMxMi43NSAxMi40MTQyIDEyLjQxNDIgMTIuNzUgMTIgMTIuNzVDMTEuNTg1OCAxMi43NSAxMS4yNSAxMi40MTQyIDExLjI1IDEyQzExLjI1IDExLjU4NTggMTEuNTg1OCAxMS4yNSAxMiAxMS4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class CircleDotBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `circle-dot` icon in the boldDuotone style.
  const CircleDotBoldDuotoneIcon({
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
    name: 'circle-dot',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 11.25C12.4142 11.25 12.75 11.5858 12.75 12C12.75 12.4142 12.4142 12.75 12 12.75C11.5858 12.75 11.25 12.4142 11.25 12C11.25 11.5858 11.5858 11.25 12 11.25Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" fill="currentColor"/>''',
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
