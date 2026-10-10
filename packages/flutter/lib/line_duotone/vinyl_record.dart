// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTIiIGN5PSIxMiIgcj0iMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTQuOTI4OTMgMTkuMDcxMUM4LjgzNDE4IDIyLjk3NjMgMTUuMTY1OCAyMi45NzYzIDE5LjA3MTEgMTkuMDcxMUMyMi45NzYzIDE1LjE2NTggMjIuOTc2MyA4LjgzNDE4IDE5LjA3MTEgNC45Mjg5M0MxNS4xNjU4IDEuMDIzNjkgOC44MzQxOCAxLjAyMzY5IDQuOTI4OTMgNC45Mjg5M0MxLjAyMzY5IDguODM0MTggMS4wMjM2OSAxNS4xNjU4IDQuOTI4OTMgMTkuMDcxMVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNy40MDM4MSAxNi41OTY3QzQuODY1NCAxNC4wNTgzIDQuODY1NCA5Ljk0MjcxIDcuNDAzODEgNy40MDQzTTE2LjU5NjIgNy40MDQzQzE5LjEzNDYgOS45NDI3MSAxOS4xMzQ2IDE0LjA1ODMgMTYuNTk2MiAxNi41OTY3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class VinylRecordLineDuotoneIcon extends StatelessWidget {
  /// Creates the `vinyl-record` icon in the lineDuotone style.
  const VinylRecordLineDuotoneIcon({
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
    name: 'vinyl-record',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7.40381 16.5967C4.8654 14.0583 4.8654 9.94271 7.40381 7.4043M16.5962 7.4043C19.1346 9.94271 19.1346 14.0583 16.5962 16.5967" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="3" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M4.92893 19.0711C8.83418 22.9763 15.1658 22.9763 19.0711 19.0711C22.9763 15.1658 22.9763 8.83418 19.0711 4.92893C15.1658 1.02369 8.83418 1.02369 4.92893 4.92893C1.02369 8.83418 1.02369 15.1658 4.92893 19.0711Z" stroke="currentColor" stroke-linecap="round"/>''',
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
