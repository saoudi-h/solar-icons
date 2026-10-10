// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rounded-magnifier-close` icon in the boldDuotone style.
class RoundedMagnifierCloseBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `rounded-magnifier-close` icon in the boldDuotone style.
  const RoundedMagnifierCloseBoldDuotoneIcon({
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
    name: 'rounded-magnifier-close',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.2831 18.2558C20.5012 18.2738 20.7703 18.3588 21.0585 18.4452C21.3221 18.5242 21.5732 18.5945 21.7578 18.6933C22.7332 19.2157 23.0479 20.4648 22.4374 21.3876C22.3218 21.5622 22.1341 21.7437 21.9394 21.9384C21.7447 22.133 21.5632 22.3207 21.3886 22.4364C20.4657 23.0474 19.2168 22.7325 18.6943 21.7567C18.5955 21.5721 18.5252 21.3211 18.4462 21.0575C18.3598 20.7692 18.2747 20.5002 18.2568 20.2821C18.1621 19.126 19.127 18.1608 20.2831 18.2558Z" fill="currentColor"/>
<path d="M12.2372 8.70107C12.5301 8.40821 13.0049 8.40826 13.2978 8.70107C13.5907 8.99397 13.5907 9.46873 13.2978 9.76162L12.0605 10.9989L13.2978 12.2362C13.5906 12.5291 13.5905 13.0039 13.2978 13.2968C13.0049 13.5897 12.5301 13.5897 12.2372 13.2968L10.9999 12.0595L9.76264 13.2968C9.46975 13.5897 8.99499 13.5897 8.70209 13.2968C8.40928 13.0039 8.40923 12.5291 8.70209 12.2362L9.9394 10.9989L8.70209 9.76162C8.4092 9.46873 8.4092 8.99397 8.70209 8.70107C8.995 8.40832 9.46979 8.40823 9.76264 8.70107L10.9999 9.93838L12.2372 8.70107Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11" cy="11" r="9" fill="currentColor"/>''',
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
