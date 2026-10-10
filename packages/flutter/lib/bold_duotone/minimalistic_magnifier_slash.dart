// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `minimalistic-magnifier-slash` icon in the boldDuotone style.
class MinimalisticMagnifierSlashBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `minimalistic-magnifier-slash` icon in the boldDuotone style.
  const MinimalisticMagnifierSlashBoldDuotoneIcon({
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
    name: 'minimalistic-magnifier-slash',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M19.4697 19.4694C19.7626 19.1765 20.2373 19.1765 20.5302 19.4694L22.5302 21.4694C22.8231 21.7623 22.8231 22.2371 22.5302 22.5299C22.2373 22.8228 21.7626 22.8228 21.4697 22.5299L19.4697 20.5299C19.1768 20.2371 19.1768 19.7623 19.4697 19.4694Z" fill="currentColor"/>
<path d="M12.7372 9.20084C13.03 8.90821 13.5049 8.90842 13.7978 9.20084C14.0907 9.49374 14.0907 9.96947 13.7978 10.2624L10.2626 13.7975C9.96976 14.0904 9.49499 14.0904 9.20209 13.7975C8.9092 13.5046 8.9092 13.0299 9.20209 12.737L12.7372 9.20084Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" fill="currentColor"/>''',
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
