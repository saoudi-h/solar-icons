// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-point-favorite` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTAuNTM3MSAyMS42NzQ0QzExLjQ2NTcgMjIuMTA4NSAxMi41MzQzIDIyLjEwODUgMTMuNDYyOSAyMS42NzQ0QzE3LjQ0NjcgMTkuODEyNCAyMCAxNC42MDU1IDIwIDEwLjE0MzNDMjAgNS42NDU4OCAxNi40MTgzIDIgMTIgMkM3LjU4MTcyIDIgNCA1LjY0NTg4IDQgMTAuMTQzM0M0IDE0LjYwNTUgNi41NTMzMiAxOS44MTI0IDEwLjUzNzEgMjEuNjc0NFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEwLjcyMzggMTMuMzMwMUM5LjU1MzE0IDEyLjM5NiA4IDEwLjg4NzcgOCA5LjQ2MDI3QzggNy4wMzQwNyAxMC4yMDAxIDYuMTI4MjQgMTIgOC4wMDI0NkMxMy43OTk5IDYuMTI4MjQgMTYgNy4wMzQwNyAxNiA5LjQ2MDI2QzE2IDEwLjg4NzcgMTQuNDQ2OSAxMi4zOTYgMTMuMjc2MiAxMy4zMzAxQzEyLjcxNjUgMTMuNzc2NyAxMi40MzY3IDE0IDEyIDE0QzExLjU2MzMgMTQgMTEuMjgzNSAxMy43NzY3IDEwLjcyMzggMTMuMzMwMVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MapPointFavoriteBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `map-point-favorite` icon in the boldDuotone style.
  const MapPointFavoriteBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.7238 13.3301C9.55314 12.396 8 10.8877 8 9.46027C8 7.03407 10.2001 6.12824 12 8.00246C13.7999 6.12824 16 7.03407 16 9.46026C16 10.8877 14.4469 12.396 13.2762 13.3301C12.7165 13.7767 12.4367 14 12 14C11.5633 14 11.2835 13.7767 10.7238 13.3301Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.5371 21.6744C11.4657 22.1085 12.5343 22.1085 13.4629 21.6744C17.4467 19.8124 20 14.6055 20 10.1433C20 5.64588 16.4183 2 12 2C7.58172 2 4 5.64588 4 10.1433C4 14.6055 6.55332 19.8124 10.5371 21.6744Z" fill="currentColor"/>''',
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
