// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00IDEwLjE0MzNDNCA1LjY0NTg4IDcuNTgxNzIgMiAxMiAyQzE2LjQxODMgMiAyMCA1LjY0NTg4IDIwIDEwLjE0MzNDMjAgMTQuNjA1NSAxNy40NDY3IDE5LjgxMjQgMTMuNDYyOSAyMS42NzQ0QzEyLjUzNDMgMjIuMTA4NSAxMS40NjU3IDIyLjEwODUgMTAuNTM3MSAyMS42NzQ0QzYuNTUzMzIgMTkuODEyNCA0IDE0LjYwNTUgNCAxMC4xNDMzWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDguNzU3MzRDOSA5Ljc3NjkzIDEwLjE2NDkgMTAuODU0MyAxMS4wNDI5IDExLjUyMTVDMTEuNDYyNiAxMS44NDA1IDExLjY3MjUgMTIgMTIgMTJDMTIuMzI3NSAxMiAxMi41Mzc0IDExLjg0MDUgMTIuOTU3MSAxMS41MjE1QzEzLjgzNTIgMTAuODU0MyAxNSA5Ljc3Njk0IDE1IDguNzU3MzNDMTUgNy4wMjQzMyAxMy4zNSA2LjM3NzMyIDEyIDcuNzE2MDRDMTAuNjUgNi4zNzczMiA5IDcuMDI0MzMgOSA4Ljc1NzM0WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class MapPointFavoriteLinearIcon extends StatelessWidget {
  /// Creates the `map-point-favorite` icon in the linear style.
  const MapPointFavoriteLinearIcon({
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
    name: 'map-point-favorite',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 10.1433C4 5.64588 7.58172 2 12 2C16.4183 2 20 5.64588 20 10.1433C20 14.6055 17.4467 19.8124 13.4629 21.6744C12.5343 22.1085 11.4657 22.1085 10.5371 21.6744C6.55332 19.8124 4 14.6055 4 10.1433Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 8.75734C9 9.77693 10.1649 10.8543 11.0429 11.5215C11.4626 11.8405 11.6725 12 12 12C12.3275 12 12.5374 11.8405 12.9571 11.5215C13.8352 10.8543 15 9.77694 15 8.75733C15 7.02433 13.35 6.37732 12 7.71604C10.65 6.37732 9 7.02433 9 8.75734Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
