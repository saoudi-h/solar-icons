// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `lamp` icon in the lineDuotone style.
class LampLineDuotoneIcon extends StatelessWidget {
  /// Creates the `lamp` icon in the lineDuotone style.
  const LampLineDuotoneIcon({
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
    name: 'lamp',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M9 22H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.96143 7.44451C5.57033 5.0991 5.87478 3.9264 6.6609 3.15144C6.88879 2.92678 7.14282 2.73028 7.41753 2.56616C8.36517 2 9.57675 2 11.9999 2C14.4231 2 15.6346 2 16.5823 2.56616C16.857 2.73028 17.111 2.92678 17.3389 3.15144C18.125 3.9264 18.4295 5.0991 19.0384 7.44451L19.1226 7.76898C19.9504 10.9576 20.3643 12.5519 19.6125 13.6719C19.5375 13.7837 19.4551 13.8902 19.3658 13.9909C18.4706 15 16.8235 15 13.5292 15H10.4706C7.17635 15 5.52921 15 4.63399 13.9909C4.5447 13.8902 4.46228 13.7837 4.38729 13.6719C3.63548 12.5519 4.04939 10.9576 4.87719 7.76897L4.96143 7.44451Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22V15" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M17.5 15V17" stroke="currentColor" stroke-linecap="round"/>''',
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
