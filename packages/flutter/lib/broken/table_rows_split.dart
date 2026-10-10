// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `table-rows-split` icon in the broken style.
class TableRowsSplitBrokenIcon extends StatelessWidget {
  /// Creates the `table-rows-split` icon in the broken style.
  const TableRowsSplitBrokenIcon({
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
    name: 'table-rows-split',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15.342 22.0231L15.342 13.0231" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.67554 22.0231L8.67554 13.0231" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.01782 19.0231L22.0004 19.0231" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.01782 10.5231L3.6817 10.5231M20.3592 10.5231L22.0231 10.5231M7.01172 10.5231L10.3578 10.5231M13.6691 10.5231L17.0152 10.5231" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.009 13.0231C6.2378 13.0231 4.35218 13.0231 3.18061 14.1946C2.00903 15.3662 2.00903 17.2518 2.00903 21.0231L2.00903 22.0231" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.009 13.0231C17.7803 13.0231 19.6659 13.0231 20.8375 14.1946C22.009 15.3662 22.009 17.2518 22.009 21.0231L22.009 22.0231" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.342 2.02454L15.342 8.01874" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.67554 1.99084L8.67554 8.01877" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.01807 2.03126C2.05438 4.503 2.23928 5.90561 3.18077 6.8471C4.35234 8.01868 6.23796 8.01868 10.0092 8.01868L14.0092 8.01868C17.7804 8.01868 19.666 8.01868 20.8376 6.8471C21.78 5.90473 21.9644 4.50038 22.0004 2.02433" stroke="currentColor" stroke-linecap="round"/>''',
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
