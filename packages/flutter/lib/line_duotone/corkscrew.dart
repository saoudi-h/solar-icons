// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `corkscrew` icon in the lineDuotone style.
class CorkscrewLineDuotoneIcon extends StatelessWidget {
  /// Creates the `corkscrew` icon in the lineDuotone style.
  const CorkscrewLineDuotoneIcon({
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
    name: 'corkscrew',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<rect x="12.1128" y="1" width="15.3426" height="4.40444" rx="2.20222" transform="rotate(44.9701 12.1128 1)" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.3895 9.6106L13.0652 10.9348C12.7067 11.2934 12.6412 11.8512 12.9069 12.2831L13.5529 13.3328C13.8641 13.8385 13.2606 14.4085 12.7735 14.069L7.22572 10.2023C6.72427 9.85283 6.11394 10.4632 6.46344 10.9646L12.0559 18.9886C12.3979 19.4792 11.818 20.0845 11.3132 19.7639L4.60611 15.5047C4.1427 15.2104 3.58275 15.7052 3.81775 16.2013L4.767 18.2052C4.96511 18.6235 4.87951 19.1205 4.55227 19.4478L2 22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M22.0591 11.9028C22.0591 13.0902 21.0965 14.0528 19.9091 14.0528C18.7217 14.0528 17.7591 13.0902 17.7591 11.9028C17.7591 10.7154 18.7217 9.75283 19.9091 9.75283C21.0965 9.75283 22.0591 10.7154 22.0591 11.9028Z" stroke="currentColor" stroke-linecap="round"/>''',
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
