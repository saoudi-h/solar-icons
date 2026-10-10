// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `streets` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIxLjAxMTkgNC4wNDc4NUwxMy4wNjAyIDExLjk5OTVMMjEuMDExOSAxOS45NTEyQzIxLjk5OTUgMTguNDU0OSAyMS45OTk1IDE2LjEzMzUgMjEuOTk5NSAxMS45OTk1QzIxLjk5OTUgNy44NjU1MyAyMS45OTk1IDUuNTQ0MTkgMjEuMDExOSA0LjA0Nzg1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTEuOTk5NSAxMy4wNjAyTDQuMDQ3ODUgMjEuMDExOUM1LjU0NDE5IDIxLjk5OTUgNy44NjU1MyAyMS45OTk1IDExLjk5OTUgMjEuOTk5NUMxNi4xMzM1IDIxLjk5OTUgMTguNDU0OSAyMS45OTk1IDE5Ljk1MTIgMjEuMDExOUwxMS45OTk1IDEzLjA2MDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTMuNDY0NDcgMy40NjQ0N0MyIDQuOTI4OTMgMiA3LjI4NTk2IDIgMTJDMiAxNi4xMzQgMiAxOC40NTUzIDIuOTg3NjcgMTkuOTUxN0wxOS45NTE3IDIuOTg3NjZDMTguNDU1MyAyIDE2LjEzNCAyIDEyIDJDNy4yODU5NSAyIDQuOTI4OTMgMiAzLjQ2NDQ3IDMuNDY0NDdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class StreetsBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `streets` icon in the boldDuotone style.
  const StreetsBoldDuotoneIcon({
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
    name: 'streets',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.0119 4.04785L13.0602 11.9995L21.0119 19.9512C21.9995 18.4549 21.9995 16.1335 21.9995 11.9995C21.9995 7.86553 21.9995 5.54419 21.0119 4.04785Z" fill="currentColor"/>
<path d="M11.9995 13.0602L4.04785 21.0119C5.54419 21.9995 7.86553 21.9995 11.9995 21.9995C16.1335 21.9995 18.4549 21.9995 19.9512 21.0119L11.9995 13.0602Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.46447 3.46447C2 4.92893 2 7.28596 2 12C2 16.134 2 18.4553 2.98767 19.9517L19.9517 2.98766C18.4553 2 16.134 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447Z" fill="currentColor"/>''',
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
