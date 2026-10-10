// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-point` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMkM3LjU4MTcyIDIgNCA2LjAwMjU4IDQgMTAuNUM0IDE0Ljk2MjIgNi41NTMzMiAxOS44MTI0IDEwLjUzNzEgMjEuNjc0NEMxMS40NjU3IDIyLjEwODUgMTIuNTM0MyAyMi4xMDg1IDEzLjQ2MjkgMjEuNjc0NEMxNy40NDY3IDE5LjgxMjQgMjAgMTQuOTYyMiAyMCAxMC41QzIwIDYuMDAyNTggMTYuNDE4MyAyIDEyIDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiAxMi41QzEzLjM4MDcgMTIuNSAxNC41IDExLjM4MDcgMTQuNSAxMEMxNC41IDguNjE5MjkgMTMuMzgwNyA3LjUgMTIgNy41QzEwLjYxOTMgNy41IDkuNSA4LjYxOTI5IDkuNSAxMEM5LjUgMTEuMzgwNyAxMC42MTkzIDEyLjUgMTIgMTIuNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MapPointBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `map-point` icon in the boldDuotone style.
  const MapPointBoldDuotoneIcon({
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
    name: 'map-point',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 12.5C13.3807 12.5 14.5 11.3807 14.5 10C14.5 8.61929 13.3807 7.5 12 7.5C10.6193 7.5 9.5 8.61929 9.5 10C9.5 11.3807 10.6193 12.5 12 12.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2C7.58172 2 4 6.00258 4 10.5C4 14.9622 6.55332 19.8124 10.5371 21.6744C11.4657 22.1085 12.5343 22.1085 13.4629 21.6744C17.4467 19.8124 20 14.9622 20 10.5C20 6.00258 16.4183 2 12 2Z" fill="currentColor"/>''',
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
