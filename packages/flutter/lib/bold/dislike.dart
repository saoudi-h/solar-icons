// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `dislike` icon in the bold style.
class DislikeBoldIcon extends StatelessWidget {
  /// Creates the `dislike` icon in the bold style.
  const DislikeBoldIcon({
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
    name: 'dislike',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M13.2451 2.75C16.7264 2.75 19.6972 5.17591 20.2695 8.48535L20.9756 12.5645C21.1518 13.5834 20.3679 14.5156 19.335 14.5156H14.1543C13.6408 14.5156 13.2489 14.9771 13.332 15.4844L13.9951 19.5283C14.1028 20.1854 14.0725 20.8585 13.9053 21.5029C13.7667 22.0367 13.3541 22.4647 12.8125 22.6387L12.668 22.6855C12.3406 22.7907 11.9834 22.7659 11.6748 22.6172C11.3351 22.4535 11.0863 22.155 10.9941 21.7998L10.5186 19.9658C10.3672 19.3825 10.1465 18.8192 9.8623 18.2871C9.44695 17.5096 8.80421 16.8877 8.13672 16.3125L6.69824 15.0723C6.29282 14.7228 6.07997 14.1996 6.12598 13.666L6.93848 4.27246C7.01321 3.41117 7.73307 2.75 8.59668 2.75H13.2451Z" fill="currentColor"/>
<path d="M3.48633 2C4.21226 2 4.78108 2.62201 4.71875 3.34375L3.74707 14.5801C3.71247 14.9802 3.369 15.2819 2.96777 15.2646C2.56651 15.2473 2.25 14.9173 2.25 14.5156V3.2373C2.25 2.55491 2.80269 2.0002 3.48633 2Z" fill="currentColor"/>''',
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
