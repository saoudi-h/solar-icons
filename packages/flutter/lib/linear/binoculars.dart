// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `binoculars` icon in the linear style.
class BinocularsLinearIcon extends StatelessWidget {
  /// Creates the `binoculars` icon in the linear style.
  const BinocularsLinearIcon({
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
    name: 'binoculars',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8.73347 2H6.99982C5.49982 2 5.23028 2.77865 4.99982 4C4.76936 5.22135 2.35967 10.5619 1.99982 15C1.84202 16.9462 1.99982 20 1.99982 20C1.99982 21.1046 2.89525 22 3.99982 22H7.99982C9.10439 22 9.99982 21.1046 9.99982 20V4C9.99982 2.89543 9.83804 2 8.73347 2Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.2665 2H17.0002C18.5002 2 18.7697 2.77865 19.0002 4C19.2306 5.22135 21.6403 10.5619 22.0002 15C22.158 16.9462 22.0002 20 22.0002 20C22.0002 21.1046 21.1047 22 20.0002 22H16.0002C14.8956 22 14.0002 21.1046 14.0002 20V4C14.0002 2.89543 14.162 2 15.2665 2Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 15H10" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.0001 19H1.96034M22.0399 19H14.0005" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 9H10" stroke="currentColor" stroke-linecap="round"/>''',
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
