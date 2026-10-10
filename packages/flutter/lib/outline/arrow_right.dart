// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-right` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMy40Njk3IDUuNDY5NjdDMTMuNzYyNiA1LjE3Njc4IDE0LjIzNzQgNS4xNzY3OCAxNC41MzAzIDUuNDY5NjdMMjAuNTMwMyAxMS40Njk3QzIwLjgyMzIgMTEuNzYyNiAyMC44MjMyIDEyLjIzNzQgMjAuNTMwMyAxMi41MzAzTDE0LjUzMDMgMTguNTMwM0MxNC4yMzc0IDE4LjgyMzIgMTMuNzYyNiAxOC44MjMyIDEzLjQ2OTcgMTguNTMwM0MxMy4xNzY4IDE4LjIzNzQgMTMuMTc2OCAxNy43NjI2IDEzLjQ2OTcgMTcuNDY5N0wxOC4xODkzIDEyLjc1SDRDMy41ODU3OSAxMi43NSAzLjI1IDEyLjQxNDIgMy4yNSAxMkMzLjI1IDExLjU4NTggMy41ODU3OSAxMS4yNSA0IDExLjI1SDE4LjE4OTNMMTMuNDY5NyA2LjUzMDMzQzEzLjE3NjggNi4yMzc0NCAxMy4xNzY4IDUuNzYyNTYgMTMuNDY5NyA1LjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowRightOutlineIcon extends StatelessWidget {
  /// Creates the `arrow-right` icon in the outline style.
  const ArrowRightOutlineIcon({
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
    name: 'arrow-right',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M13.4697 5.46967C13.7626 5.17678 14.2374 5.17678 14.5303 5.46967L20.5303 11.4697C20.8232 11.7626 20.8232 12.2374 20.5303 12.5303L14.5303 18.5303C14.2374 18.8232 13.7626 18.8232 13.4697 18.5303C13.1768 18.2374 13.1768 17.7626 13.4697 17.4697L18.1893 12.75H4C3.58579 12.75 3.25 12.4142 3.25 12C3.25 11.5858 3.58579 11.25 4 11.25H18.1893L13.4697 6.53033C13.1768 6.23744 13.1768 5.76256 13.4697 5.46967Z" fill="currentColor"/>''',
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
