// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAxMi43NUMxMS41ODU4IDEyLjc1IDExLjI1IDEyLjQxNDIgMTEuMjUgMTJDMTEuMjUgMTEuNTg1OCAxMS41ODU4IDExLjI1IDEyIDExLjI1TDIwIDExLjI1QzIwLjQxNDIgMTEuMjUgMjAuNzUgMTEuNTg1OCAyMC43NSAxMkMyMC43NSAxMi40MTQyIDIwLjQxNDIgMTIuNzUgMjAgMTIuNzVMMTIgMTIuNzVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTQgMTIuNzVDMy41ODU3OSAxMi43NSAzLjI1IDEyLjQxNDIgMy4yNSAxMkMzLjI1IDExLjU4NTggMy41ODU3OSAxMS4yNSA0IDExLjI1TDEyIDExLjI1QzEyLjQxNDIgMTEuMjUgMTIuNzUgMTEuNTg1OCAxMi43NSAxMkMxMi43NSAxMi40MTQyIDEyLjQxNDIgMTIuNzUgMTIgMTIuNzVMNCAxMi43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MinusBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `minus` icon in the boldDuotone style.
  const MinusBoldDuotoneIcon({
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
    name: 'minus',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 12.75C11.5858 12.75 11.25 12.4142 11.25 12C11.25 11.5858 11.5858 11.25 12 11.25L20 11.25C20.4142 11.25 20.75 11.5858 20.75 12C20.75 12.4142 20.4142 12.75 20 12.75L12 12.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 12.75C3.58579 12.75 3.25 12.4142 3.25 12C3.25 11.5858 3.58579 11.25 4 11.25L12 11.25C12.4142 11.25 12.75 11.5858 12.75 12C12.75 12.4142 12.4142 12.75 12 12.75L4 12.75Z" fill="currentColor"/>''',
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
