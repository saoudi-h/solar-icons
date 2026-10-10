// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cloud` icon in the lineDuotone style.
class CloudLineDuotoneIcon extends StatelessWidget {
  /// Creates the `cloud` icon in the lineDuotone style.
  const CloudLineDuotoneIcon({
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
    name: 'cloud',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14.381 9.02738C14.9767 8.81929 15.6178 8.70605 16.2857 8.70605C16.9404 8.70605 17.5693 8.81485 18.1551 9.01515C20.393 9.78041 22 11.8813 22 14.3531C22 17.4719 19.4416 20.0002 16.2857 20.0002H6.28571C3.91878 20.0002 2 18.104 2 15.7649C2 13.4258 3.91878 11.5296 6.28571 11.5296C6.56983 11.5296 6.8475 11.5569 7.11616 11.609C7.68059 11.7186 8.20528 11.9376 8.66667 12.2428" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M7.11622 11.6089C6.88712 10.9978 6.76196 10.3369 6.76196 9.64706C6.76196 6.52827 9.32034 4 12.4762 4C15.4159 4 17.8372 6.19371 18.1551 9.01498" stroke="currentColor" stroke-linecap="round"/>''',
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
