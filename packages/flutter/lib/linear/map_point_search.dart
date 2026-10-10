// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-point-search` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQgMTAuMTQzM0M0IDUuNjQ1ODggNy41ODE3MiAyIDEyIDJDMTYuNDE4MyAyIDIwIDUuNjQ1ODggMjAgMTAuMTQzM0MyMCAxNC42MDU1IDE3LjQ0NjcgMTkuODEyNCAxMy40NjI5IDIxLjY3NDRDMTIuNTM0MyAyMi4xMDg1IDExLjQ2NTcgMjIuMTA4NSAxMC41MzcxIDIxLjY3NDRDNi41NTMzMiAxOS44MTI0IDQgMTQuNjA1NSA0IDEwLjE0MzNaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0LjEyNDkgMTIuMTE3OEwxNS41IDEzLjVNMTQuMTI0OSAxMi4xMTc4QzE0LjY2NTcgMTEuNTc1MiAxNSAxMC44MjY2IDE1IDEwQzE1IDguMzQzMTUgMTMuNjU2OSA3IDEyIDdDMTAuMzQzMSA3IDkgOC4zNDMxNSA5IDEwQzkgMTEuNjU2OSAxMC4zNDMxIDEzIDEyIDEzQzEyLjgzMDIgMTMgMTMuNTgxNyAxMi42NjI4IDE0LjEyNDkgMTIuMTE3OFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class MapPointSearchLinearIcon extends StatelessWidget {
  /// Creates the `map-point-search` icon in the linear style.
  const MapPointSearchLinearIcon({
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
    name: 'map-point-search',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 10.1433C4 5.64588 7.58172 2 12 2C16.4183 2 20 5.64588 20 10.1433C20 14.6055 17.4467 19.8124 13.4629 21.6744C12.5343 22.1085 11.4657 22.1085 10.5371 21.6744C6.55332 19.8124 4 14.6055 4 10.1433Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.1249 12.1178L15.5 13.5M14.1249 12.1178C14.6657 11.5752 15 10.8266 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13C12.8302 13 13.5817 12.6628 14.1249 12.1178Z" stroke="currentColor" stroke-linecap="round"/>''',
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
