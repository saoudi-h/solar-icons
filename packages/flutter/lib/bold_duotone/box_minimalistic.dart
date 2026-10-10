// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `box-minimalistic` icon in the boldDuotone style.
class BoxMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `box-minimalistic` icon in the boldDuotone style.
  const BoxMinimalisticBoldDuotoneIcon({
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
    name: 'box-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 12V22C11.0557 22 10.1775 21.5395 8.42188 20.6182L6.42188 19.5684C4.27056 18.4394 3.19502 17.8747 2.59766 16.8604C2.00026 15.8458 2 14.5834 2 12.0586V11.9414C2 9.41671 2.00028 8.15413 2.59766 7.13965C2.61091 7.11715 2.62397 7.09433 2.6377 7.07227L12 12Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2C12.9441 2.0001 13.8219 2.46071 15.5771 3.38184L17.5771 4.43164C19.6806 5.53549 20.7561 6.0997 21.3613 7.07227C21.3751 7.09433 21.3891 7.11715 21.4023 7.13965C21.9997 8.15413 22 9.41671 22 11.9414V12.0586C22 14.5834 21.9997 15.8458 21.4023 16.8604C20.805 17.8747 19.7294 18.4394 17.5781 19.5684L15.5781 20.6182C13.8225 21.5395 12.9443 22 12 22V12L2.6377 7.07227C3.24293 6.09963 4.31839 5.5355 6.42188 4.43164L8.42188 3.38184C10.1775 2.46053 11.0557 2 12 2Z" fill="currentColor"/>

<path opacity="0.5" d="M12 2C12.9441 2.0001 13.8219 2.46071 15.5771 3.38184L17.5771 4.43164C19.6806 5.53549 20.7561 6.0997 21.3613 7.07227L12 12L2.6377 7.07227C3.24293 6.09963 4.31839 5.5355 6.42188 4.43164L8.42188 3.38184C10.1775 2.46053 11.0557 2 12 2Z" fill="currentColor"/>''',
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
