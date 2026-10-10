// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-to-down-right` icon in the boldDuotone style.
class ArrowToDownRightBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-to-down-right` icon in the boldDuotone style.
  const ArrowToDownRightBoldDuotoneIcon({
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
    name: 'arrow-to-down-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.46967 13.9697C6.17678 14.2626 6.17678 14.7374 6.46967 15.0303L11.4697 20.0303C11.7626 20.3232 12.2374 20.3232 12.5303 20.0303L17.5303 15.0303C17.8232 14.7374 17.8232 14.2626 17.5303 13.9697C17.2374 13.6768 16.7626 13.6768 16.4697 13.9697L12 18.4393L7.53033 13.9697C7.23744 13.6768 6.76256 13.6768 6.46967 13.9697Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M11.25 9.5C11.25 8.54665 11.5298 7.13332 12.3913 5.93677C13.2804 4.70198 14.7556 3.75 17 3.75C17.4142 3.75 17.75 4.08579 17.75 4.5C17.75 4.91421 17.4142 5.25 17 5.25C15.2444 5.25 14.2196 5.96468 13.6087 6.81323C12.9702 7.70002 12.75 8.78668 12.75 9.5L12.75 17.6893L12 18.4393L11.25 17.6893V9.5Z" fill="currentColor"/>
<path d="M11.8023 20.2236C11.9568 20.2656 12.122 20.2575 12.2722 20.199C12.1879 20.2319 12.096 20.25 12 20.25C11.9316 20.25 11.8653 20.2408 11.8023 20.2236Z" fill="currentColor"/>
</g>''',
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
