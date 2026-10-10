// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-arrow-up` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNS41MzAzIDEwLjQ2OTdDMTUuODIzMiAxMC43NjI2IDE1LjgyMzIgMTEuMjM3NCAxNS41MzAzIDExLjUzMDNDMTUuMjM3NCAxMS44MjMyIDE0Ljc2MjYgMTEuODIzMiAxNC40Njk3IDExLjUzMDNMMTIuNzUgOS44MTA2NkwxMi43NSAxNkMxMi43NSAxNi40MTQyIDEyLjQxNDIgMTYuNzUgMTIgMTYuNzVDMTEuNTg1OCAxNi43NSAxMS4yNSAxNi40MTQyIDExLjI1IDE2TDExLjI1IDkuODEwNjZMOS41MzAzMyAxMS41MzAzQzkuMjM3NDQgMTEuODIzMiA4Ljc2MjU2IDExLjgyMzIgOC40Njk2NyAxMS41MzAzQzguMTc2NzggMTEuMjM3NCA4LjE3Njc4IDEwLjc2MjYgOC40Njk2NyAxMC40Njk3TDExLjQ2OTcgNy40Njk2N0MxMS43NjI2IDcuMTc2NzggMTIuMjM3NCA3LjE3Njc4IDEyLjUzMDMgNy40Njk2N0wxNS41MzAzIDEwLjQ2OTdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RoundArrowUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-arrow-up` icon in the boldDuotone style.
  const RoundArrowUpBoldDuotoneIcon({
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
    name: 'round-arrow-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15.5303 10.4697C15.8232 10.7626 15.8232 11.2374 15.5303 11.5303C15.2374 11.8232 14.7626 11.8232 14.4697 11.5303L12.75 9.81066L12.75 16C12.75 16.4142 12.4142 16.75 12 16.75C11.5858 16.75 11.25 16.4142 11.25 16L11.25 9.81066L9.53033 11.5303C9.23744 11.8232 8.76256 11.8232 8.46967 11.5303C8.17678 11.2374 8.17678 10.7626 8.46967 10.4697L11.4697 7.46967C11.7626 7.17678 12.2374 7.17678 12.5303 7.46967L15.5303 10.4697Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12Z" fill="currentColor"/>''',
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
