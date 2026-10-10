// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wineglass-triangle` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDE0LjU3MTRMMjAuNTE2MiA1Ljg2MzgyQzIxLjU2MjQgNC43OTQwOCAyMC43OTk5IDMgMTkuMjk5MSAzSDQuNzAwOTVDMy4yMDAwOCAzIDIuNDM3NTkgNC43OTQwOSAzLjQ4MzgxIDUuODYzODJMMTIgMTQuNTcxNFpNMTIgMTQuNTcxNFYyMU0xMiAyMUgxNi4yNDM5TTEyIDIxSDcuNzU2MU03LjQ3MzE4IDkuNzVIMTYuNTI2OCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class WineglassTriangleLinearIcon extends StatelessWidget {
  /// Creates the `wineglass-triangle` icon in the linear style.
  const WineglassTriangleLinearIcon({
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
    name: 'wineglass-triangle',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 14.5714L20.5162 5.86382C21.5624 4.79408 20.7999 3 19.2991 3H4.70095C3.20008 3 2.43759 4.79409 3.48381 5.86382L12 14.5714ZM12 14.5714V21M12 21H16.2439M12 21H7.7561M7.47318 9.75H16.5268" stroke="currentColor" stroke-linecap="round"/>''',
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
