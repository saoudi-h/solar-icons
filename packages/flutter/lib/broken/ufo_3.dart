// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ufo-3` icon in the broken style.
class Ufo3BrokenIcon extends StatelessWidget {
  /// Creates the `ufo-3` icon in the broken style.
  const Ufo3BrokenIcon({
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
    name: 'ufo-3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3.636 20.3635L7.75732 16.2422" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.99976 21.9995L12.707 19.7781" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.00024 14L4.22192 11.293" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.85635 4C9.00545 4.0891 10.4349 4.63632 11.9467 5.56025L11.9766 5.57229M5.27368 6.58267C5.4389 8.71337 7.1792 11.8079 9.97569 14.6044C13.8821 18.5108 18.3701 20.3563 20 18.7264C20.8256 17.9008 20.7596 16.3421 19.9858 14.497C19.7357 13.9007 19.4116 13.2745 19.0199 12.6334L19.0019 12.6116M19.0019 12.6116C20.4921 10.7548 20.3757 8.03406 18.6529 6.31124L18.2692 5.92754C16.5488 4.20714 13.8332 4.08863 11.9766 5.57229C11.8397 5.68167 11.7075 5.79976 11.5807 5.92656C11.4554 6.05189 11.3713 6.21268 11.4026 6.38717C11.4919 6.88372 11.9622 8.10581 14.2184 10.362M16.0851 12.0319C17.1854 12.8811 17.8559 13.1171 18.1929 13.1777C18.3674 13.2091 18.5285 13.125 18.6539 12.9997C18.7782 12.8753 18.8942 12.7457 19.0019 12.6116" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5642 15.4004H16.5643" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.3381 12.584H12.3382" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.49902 8.3252H9.49912" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
