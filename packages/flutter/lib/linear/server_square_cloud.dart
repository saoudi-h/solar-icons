// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `server-square-cloud` icon in the linear style.
class ServerSquareCloudLinearIcon extends StatelessWidget {
  /// Creates the `server-square-cloud` icon in the linear style.
  const ServerSquareCloudLinearIcon({
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
    name: 'server-square-cloud',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12V11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V12M2 12H22M2 12V13C2 16.7712 2 18.6569 3.17157 19.8284C4.34315 21 6.22876 21 10 21H13M22 12V13" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 7.5L18 7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 17.5L6 15.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 8.5L6 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 17.5L9 15.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 8.5L9 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.3333 16.8852C19.5419 16.8072 19.7662 16.7647 20 16.7647C20.2291 16.7647 20.4493 16.8055 20.6543 16.8806M17.3333 18.091C17.1718 17.9765 16.9882 17.8944 16.7907 17.8533C16.6966 17.8338 16.5994 17.8235 16.5 17.8235C15.6716 17.8235 15 18.5346 15 19.4118C15 20.2889 15.6716 21 16.5 21H20C21.1046 21 22 20.0519 22 18.8824C22 17.9554 21.4375 17.1676 20.6543 16.8806M20.6543 16.8806C20.543 15.8226 19.6956 15 18.6667 15C17.5621 15 16.6667 15.9481 16.6667 17.1176C16.6667 17.3763 16.7105 17.6242 16.7907 17.8533" stroke="currentColor" stroke-linecap="round"/>''',
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
