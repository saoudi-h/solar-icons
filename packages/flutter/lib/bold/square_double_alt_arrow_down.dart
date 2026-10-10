// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-double-alt-arrow-down` icon in the bold style.
class SquareDoubleAltArrowDownBoldIcon extends StatelessWidget {
  /// Creates the `square-double-alt-arrow-down` icon in the bold style.
  const SquareDoubleAltArrowDownBoldIcon({
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
    name: 'square-double-alt-arrow-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22ZM8.46967 7.96967C8.17678 8.26256 8.17678 8.73744 8.46967 9.03033L11.4697 12.0303C11.7626 12.3232 12.2374 12.3232 12.5303 12.0303L15.5303 9.03033C15.8232 8.73744 15.8232 8.26256 15.5303 7.96967C15.2374 7.67678 14.7626 7.67678 14.4697 7.96967L12 10.4393L9.53033 7.96967C9.23744 7.67678 8.76256 7.67678 8.46967 7.96967ZM8.46967 11.9697C8.17678 12.2626 8.17678 12.7374 8.46967 13.0303L11.4697 16.0303C11.7626 16.3232 12.2374 16.3232 12.5303 16.0303L15.5303 13.0303C15.8232 12.7374 15.8232 12.2626 15.5303 11.9697C15.2374 11.6768 14.7626 11.6768 14.4697 11.9697L12 14.4393L9.53033 11.9697C9.23744 11.6768 8.76256 11.6768 8.46967 11.9697Z" fill="currentColor"/>''',
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
