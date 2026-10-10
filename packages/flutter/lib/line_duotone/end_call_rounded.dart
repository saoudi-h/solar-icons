// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `end-call-rounded` icon in the lineDuotone style.
class EndCallRoundedLineDuotoneIcon extends StatelessWidget {
  /// Creates the `end-call-rounded` icon in the lineDuotone style.
  const EndCallRoundedLineDuotoneIcon({
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
    name: 'end-call-rounded',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.08289 10.5034C2.27659 11.3733 2 12.6129 2 13.8506C2 15.9105 3.78158 17.4153 5.6072 16.8975L6.9469 16.5175C8.15591 16.1746 9 14.9828 9 13.6187M20.9171 10.5034C21.7234 11.3733 22 12.6129 22 13.8506C22 15.9105 20.2184 17.4153 18.3928 16.8975L17.0531 16.5175C15.8441 16.1746 15 14.9828 15 13.6187" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 13.8506C2 12.6129 2.27659 11.3733 3.08289 10.5034C4.44023 9.03911 7.19334 7 12.0001 7C16.8069 7 19.5598 9.03911 20.9171 10.5034C21.7234 11.3733 22 12.6129 22 13.8506C22 15.9105 20.2184 17.4153 18.3928 16.8975L17.0531 16.5175C15.8441 16.1746 15 14.9828 15 13.6187C15 13.6187 15 11.9639 12 11.9639C9 11.9639 9 13.6187 9 13.6187C9 14.9828 8.15591 16.1746 6.9469 16.5175L5.6072 16.8975C3.78158 17.4153 2 15.9105 2 13.8506Z" stroke="currentColor" stroke-linecap="round"/>''',
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
