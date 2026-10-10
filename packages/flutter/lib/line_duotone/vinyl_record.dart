// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `vinyl-record` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxMiIgY3k9IjEyIiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNC45Mjg5MyAxOS4wNzExQzguODM0MTggMjIuOTc2MyAxNS4xNjU4IDIyLjk3NjMgMTkuMDcxMSAxOS4wNzExQzIyLjk3NjMgMTUuMTY1OCAyMi45NzYzIDguODM0MTggMTkuMDcxMSA0LjkyODkzQzE1LjE2NTggMS4wMjM2OSA4LjgzNDE4IDEuMDIzNjkgNC45Mjg5MyA0LjkyODkzQzEuMDIzNjkgOC44MzQxOCAxLjAyMzY5IDE1LjE2NTggNC45Mjg5MyAxOS4wNzExWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik03LjQwMzgxIDE2LjU5NjdDNC44NjU0IDE0LjA1ODMgNC44NjU0IDkuOTQyNzEgNy40MDM4MSA3LjQwNDNNMTYuNTk2MiA3LjQwNDNDMTkuMTM0NiA5Ljk0MjcxIDE5LjEzNDYgMTQuMDU4MyAxNi41OTYyIDE2LjU5NjciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
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
