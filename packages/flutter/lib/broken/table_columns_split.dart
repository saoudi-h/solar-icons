// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `table-columns-split` icon in the broken style.
class TableColumnsSplitBrokenIcon extends StatelessWidget {
  /// Creates the `table-columns-split` icon in the broken style.
  const TableColumnsSplitBrokenIcon({
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
    name: 'table-columns-split',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 15.333L11 15.333" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8.6665L11 8.6665" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 2.00873L5 21.9913" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 2.00873L13.5 3.67261M13.5 20.3501L13.5 22.014M13.5 7.00262L13.5 10.3487M13.5 13.66L13.5 17.0061" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 10C11 6.22876 11 4.34315 9.82843 3.17157C8.65685 2 6.77124 2 3 2L2 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 14C11 17.7712 11 19.6569 9.82843 20.8284C8.65685 22 6.77124 22 3 22L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.9985 15.333L16.0043 15.333" stroke="currentColor" stroke-linecap="round"/>
<path d="M22.0322 8.6665L16.0043 8.6665" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.9918 2.00885C19.5201 2.04516 18.1175 2.23006 17.176 3.17155C16.0044 4.34312 16.0044 6.22874 16.0044 9.99998L16.0044 14C16.0044 17.7712 16.0044 19.6568 17.176 20.8284C18.1183 21.7708 19.5227 21.9551 21.9987 21.9912" stroke="currentColor" stroke-linecap="round"/>''',
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
