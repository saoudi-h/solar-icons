// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04LjAzNzQgMTQuMTQzN0M3Ljc4MjY2IDE0LjI3MTEgNy40NzMxNCAxNC4xNjAyIDcuMzU3MTQgMTMuOTAwMUwzLjE2NDQ3IDQuNDk4NDRDMi40OTc0MSAzLjAwMjYxIDMuOTc4NjUgMS40NTEwNCA1LjM2NjQxIDIuMTkxOTdMMTEuMjcwMSA1LjM0NEMxMS43MjkzIDUuNTg5MTUgMTIuMjY5NyA1LjU4OTE1IDEyLjcyODkgNS4zNDRMMTguNjMyNiAyLjE5MTk3QzIwLjAyMDQgMS40NTEwNCAyMS41MDE2IDMuMDAyNjEgMjAuODM0NiA0LjQ5ODQ0TDE5LjI2MjkgOC4wMjI3NUMxOS4wNzQzIDguNDQ1NjMgMTguNzQ0OCA4Ljc4OTk3IDE4LjMzMDcgOC45OTcwNEw4LjAzNzQgMTQuMTQzN1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNOC42MDk1IDE1LjUzNDJDOC4zNzAxOSAxNS42NTM4IDguMjY3NDkgMTUuOTQwNyA4LjM3NjQ2IDE2LjE4NUwxMC41MjcxIDIxLjAwNzZDMTEuMTE3NCAyMi4zMzE0IDEyLjg4MTggMjIuMzMxNCAxMy40NzIyIDIxLjAwNzZMMTcuNDQwMSAxMi4xMDk5QzE3LjYzMTMgMTEuNjgxMiAxNy4xNzk3IDExLjI0OTEgMTYuNzU5OCAxMS40NTlMOC42MDk1IDE1LjUzNDJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MapArrowDownBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `map-arrow-down` icon in the boldDuotone style.
  const MapArrowDownBoldDuotoneIcon({
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
    name: 'map-arrow-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.0374 14.1437C7.78266 14.2711 7.47314 14.1602 7.35714 13.9001L3.16447 4.49844C2.49741 3.00261 3.97865 1.45104 5.36641 2.19197L11.2701 5.344C11.7293 5.58915 12.2697 5.58915 12.7289 5.344L18.6326 2.19197C20.0204 1.45104 21.5016 3.00261 20.8346 4.49844L19.2629 8.02275C19.0743 8.44563 18.7448 8.78997 18.3307 8.99704L8.0374 14.1437Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.6095 15.5342C8.37019 15.6538 8.26749 15.9407 8.37646 16.185L10.5271 21.0076C11.1174 22.3314 12.8818 22.3314 13.4722 21.0076L17.4401 12.1099C17.6313 11.6812 17.1797 11.2491 16.7598 11.459L8.6095 15.5342Z" fill="currentColor"/>''',
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
