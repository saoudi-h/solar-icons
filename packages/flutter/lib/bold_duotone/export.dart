// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `export` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNCAxMkM0IDE2LjQxODMgNy41ODE3MiAyMCAxMiAyMEMxNi40MTgzIDIwIDIwIDE2LjQxODMgMjAgMTJMNCAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNS41MzAzIDcuNTMwMzNDMTUuMjM3NCA3LjgyMzIyIDE0Ljc2MjYgNy44MjMyMiAxNC40Njk3IDcuNTMwMzNMMTIuNzUgNS44MTA2NkwxMi43NSAxNEMxMi43NSAxNC40MTQyIDEyLjQxNDIgMTQuNzUgMTIgMTQuNzVDMTEuNTg1OCAxNC43NSAxMS4yNSAxNC40MTQyIDExLjI1IDE0TDExLjI1IDUuODEwNjZMOS41MzAzMyA3LjUzMDMzQzkuMjM3NDQgNy44MjMyMiA4Ljc2MjU2IDcuODIzMjIgOC40Njk2NyA3LjUzMDMzQzguMTc2NzggNy4yMzc0NCA4LjE3Njc4IDYuNzYyNTYgOC40Njk2NyA2LjQ2OTY3TDExLjQ2OTcgMy40Njk2N0MxMS43NjI2IDMuMTc2NzggMTIuMjM3NCAzLjE3Njc4IDEyLjUzMDMgMy40Njk2N0wxNS41MzAzIDYuNDY5NjdDMTUuODIzMiA2Ljc2MjU2IDE1LjgyMzIgNy4yMzc0NCAxNS41MzAzIDcuNTMwMzNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ExportBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `export` icon in the boldDuotone style.
  const ExportBoldDuotoneIcon({
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
    name: 'export',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M15.5303 7.53033C15.2374 7.82322 14.7626 7.82322 14.4697 7.53033L12.75 5.81066L12.75 14C12.75 14.4142 12.4142 14.75 12 14.75C11.5858 14.75 11.25 14.4142 11.25 14L11.25 5.81066L9.53033 7.53033C9.23744 7.82322 8.76256 7.82322 8.46967 7.53033C8.17678 7.23744 8.17678 6.76256 8.46967 6.46967L11.4697 3.46967C11.7626 3.17678 12.2374 3.17678 12.5303 3.46967L15.5303 6.46967C15.8232 6.76256 15.8232 7.23744 15.5303 7.53033Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 12C4 16.4183 7.58172 20 12 20C16.4183 20 20 16.4183 20 12L4 12Z" fill="currentColor"/>''',
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
