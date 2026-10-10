// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rounded-magnifier` icon in the boldDuotone style.
class RoundedMagnifierBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `rounded-magnifier` icon in the boldDuotone style.
  const RoundedMagnifierBoldDuotoneIcon({
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
    name: 'rounded-magnifier',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.2832 18.2568C20.5014 18.2749 20.7702 18.3599 21.0586 18.4463C21.3222 18.5253 21.5732 18.5955 21.7578 18.6943C22.7333 19.217 23.0484 20.4659 22.4375 21.3887C22.3218 21.5634 22.1343 21.7446 21.9395 21.9395C21.7446 22.1343 21.5634 22.3218 21.3887 22.4375C20.4659 23.0484 19.217 22.7333 18.6943 21.7578C18.5955 21.5732 18.5253 21.3222 18.4463 21.0586C18.3599 20.7702 18.2749 20.5014 18.2568 20.2832C18.1617 19.1267 19.1267 18.1617 20.2832 18.2568Z" fill="currentColor"/>''',
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
