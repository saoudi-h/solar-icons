// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-transfer-horizontal` icon in the boldDuotone style.
class SquareTransferHorizontalBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `square-transfer-horizontal` icon in the boldDuotone style.
  const SquareTransferHorizontalBoldDuotoneIcon({
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
    name: 'square-transfer-horizontal',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7.00003 10.75C6.6874 10.75 6.40756 10.5561 6.29779 10.2634C6.18801 9.97062 6.27134 9.64051 6.50688 9.43494L9.94438 6.43494C10.2565 6.16258 10.7302 6.19478 11.0026 6.50686C11.275 6.81894 11.2428 7.29272 10.9307 7.56508L9.00003 9.25001L17 9.25001C17.4142 9.25001 17.75 9.58579 17.75 10C17.75 10.4142 17.4142 10.75 17 10.75L7.00003 10.75Z" fill="currentColor"/>
<path d="M13.0694 16.4349C12.7573 16.7073 12.7251 17.1811 12.9975 17.4932C13.2698 17.8052 13.7436 17.8374 14.0557 17.5651L17.4932 14.5651C17.7287 14.3595 17.8121 14.0294 17.7023 13.7367C17.5925 13.4439 17.3127 13.25 17 13.25L7.00003 13.25C6.58582 13.25 6.25003 13.5858 6.25003 14C6.25003 14.4142 6.58582 14.75 7.00003 14.75H15L13.0694 16.4349Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355Z" fill="currentColor"/>''',
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
