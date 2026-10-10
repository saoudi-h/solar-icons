// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `kick-scooter` icon in the lineDuotone style.
class KickScooterLineDuotoneIcon extends StatelessWidget {
  /// Creates the `kick-scooter` icon in the lineDuotone style.
  const KickScooterLineDuotoneIcon({
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
    name: 'kick-scooter',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M6.7619 17.6469C6.7619 18.9464 5.69592 19.9998 4.38095 19.9998C3.06599 19.9998 2 18.9464 2 17.6469C2 16.3474 3.06599 15.2939 4.38095 15.2939C5.69592 15.2939 6.7619 16.3474 6.7619 17.6469Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.9999 17.6469C21.9999 18.9464 20.934 19.9998 19.619 19.9998C18.304 19.9998 17.238 18.9464 17.238 17.6469C17.238 16.3474 18.304 15.2939 19.619 15.2939C20.934 15.2939 21.9999 16.3474 21.9999 17.6469Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6.76196 17.6471H14.381C14.381 14.7882 16.7262 12.4706 19.6191 12.4706L18.615 6.51663C18.4642 5.62255 18.3888 5.1755 18.163 4.84003C17.964 4.54431 17.6845 4.31026 17.3566 4.1649C16.9846 4 16.526 4 15.6088 4H14.381" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
