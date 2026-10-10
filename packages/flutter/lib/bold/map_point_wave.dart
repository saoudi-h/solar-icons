// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-point-wave` icon in the bold style.
class MapPointWaveBoldIcon extends StatelessWidget {
  /// Creates the `map-point-wave` icon in the bold style.
  const MapPointWaveBoldIcon({
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
    name: 'map-point-wave',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M18.9658 14.2715C20.8371 15.0892 21.9998 16.2336 22 17.5C22 19.9853 17.5228 22 12 22C6.47715 22 2 19.9853 2 17.5C2.00019 16.2336 3.1629 15.0892 5.03418 14.2715C6.17626 16.3673 7.91865 18.1738 10.1309 19.1191C11.3198 19.6271 12.6802 19.6271 13.8691 19.1191C16.0813 18.1738 17.8237 16.3673 18.9658 14.2715Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C15.866 2 19 4.91672 19 8.51465C19 12.0843 16.7659 16.2495 13.2803 17.7393C12.4677 18.0865 11.5323 18.0865 10.7197 17.7393C7.23412 16.2495 5.00001 12.0843 5 8.51465C5 4.91672 8.13401 2 12 2ZM12 7C10.8954 7 10 7.89543 10 9C10 10.1046 10.8954 11 12 11C13.1046 11 14 10.1046 14 9C14 7.89543 13.1046 7 12 7Z" fill="currentColor"/>''',
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
