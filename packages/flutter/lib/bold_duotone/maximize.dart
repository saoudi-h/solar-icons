// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `maximize` icon in the boldDuotone style.
class MaximizeBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `maximize` icon in the boldDuotone style.
  const MaximizeBoldDuotoneIcon({
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
    name: 'maximize',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M15.3929 2C15.3929 1.58579 15.7286 1.25 16.1429 1.25H22C22.4142 1.25 22.75 1.58579 22.75 2V7.85714C22.75 8.27136 22.4142 8.60714 22 8.60714C21.5858 8.60714 21.25 8.27136 21.25 7.85714V3.81066L15.5303 9.53033C15.2374 9.82322 14.7626 9.82322 14.4697 9.53033C14.1768 9.23744 14.1768 8.76256 14.4697 8.46967L20.1893 2.75H16.1429C15.7286 2.75 15.3929 2.41421 15.3929 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M8.60714 22C8.60714 22.4142 8.27136 22.75 7.85714 22.75H2C1.58579 22.75 1.25 22.4142 1.25 22V16.1429C1.25 15.7286 1.58579 15.3929 2 15.3929C2.41421 15.3929 2.75 15.7286 2.75 16.1429V20.1893L8.46967 14.4697C8.76256 14.1768 9.23744 14.1768 9.53033 14.4697C9.82322 14.7626 9.82322 15.2374 9.53033 15.5303L3.81066 21.25H7.85714C8.27136 21.25 8.60714 21.5858 8.60714 22Z" fill="currentColor"/>''',
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
