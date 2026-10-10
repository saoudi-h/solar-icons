// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-down` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAzLjI1QzEyLjQxNDIgMy4yNSAxMi43NSAzLjU4NTc5IDEyLjc1IDRMMTIuNzUgMTguMTg5M0wxNy40Njk3IDEzLjQ2OTdDMTcuNzYyNiAxMy4xNzY4IDE4LjIzNzQgMTMuMTc2OCAxOC41MzAzIDEzLjQ2OTdDMTguODIzMiAxMy43NjI2IDE4LjgyMzIgMTQuMjM3NCAxOC41MzAzIDE0LjUzMDNMMTIuNTMwMyAyMC41MzAzQzEyLjM4OTcgMjAuNjcxIDEyLjE5ODkgMjAuNzUgMTIgMjAuNzVDMTEuODAxMSAyMC43NSAxMS42MTAzIDIwLjY3MSAxMS40Njk3IDIwLjUzMDNMNS40Njk2NyAxNC41MzAzQzUuMTc2NzggMTQuMjM3NCA1LjE3Njc4IDEzLjc2MjYgNS40Njk2NyAxMy40Njk3QzUuNzYyNTYgMTMuMTc2OCA2LjIzNzQ0IDEzLjE3NjggNi41MzAzMyAxMy40Njk3TDExLjI1IDE4LjE4OTNMMTEuMjUgNEMxMS4yNSAzLjU4NTc5IDExLjU4NTggMy4yNSAxMiAzLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowDownOutlineIcon extends StatelessWidget {
  /// Creates the `arrow-down` icon in the outline style.
  const ArrowDownOutlineIcon({
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
    name: 'arrow-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 3.25C12.4142 3.25 12.75 3.58579 12.75 4L12.75 18.1893L17.4697 13.4697C17.7626 13.1768 18.2374 13.1768 18.5303 13.4697C18.8232 13.7626 18.8232 14.2374 18.5303 14.5303L12.5303 20.5303C12.3897 20.671 12.1989 20.75 12 20.75C11.8011 20.75 11.6103 20.671 11.4697 20.5303L5.46967 14.5303C5.17678 14.2374 5.17678 13.7626 5.46967 13.4697C5.76256 13.1768 6.23744 13.1768 6.53033 13.4697L11.25 18.1893L11.25 4C11.25 3.58579 11.5858 3.25 12 3.25Z" fill="currentColor"/>''',
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
