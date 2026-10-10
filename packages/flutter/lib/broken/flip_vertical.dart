// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `flip-vertical` icon in the broken style.
class FlipVerticalBrokenIcon extends StatelessWidget {
  /// Creates the `flip-vertical` icon in the broken style.
  const FlipVerticalBrokenIcon({
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
    name: 'flip-vertical',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 22H5.88616C4.18402 22 3.33294 22 3.05381 21.4576C2.77467 20.9152 3.26934 20.2226 4.25869 18.8375L5.38815 17.2563C5.82805 16.6404 6.048 16.3325 6.37105 16.1662C6.69411 16 7.07252 16 7.82935 16L16.1702 16C16.927 16 17.3055 16 17.6285 16.1662C17.9516 16.3325 18.1715 16.6404 18.6114 17.2563L19.7409 18.8375C20.7302 20.2226 21.2249 20.9152 20.9458 21.4576C20.6666 22 19.8156 22 18.1134 22H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2L5.88616 2C4.18402 2 3.33294 2 3.05381 2.54242C2.77467 3.08484 3.26934 3.77738 4.25869 5.16247L5.38815 6.74372C5.82805 7.35957 6.048 7.6675 6.37105 7.83375C6.69411 8 7.07252 8 7.82935 8L16.1702 8C16.927 8 17.3055 8 17.6285 7.83375C17.9516 7.6675 18.1715 7.35957 18.6114 6.74372L19.7409 5.16248C20.7302 3.77738 21.2249 3.08484 20.9458 2.54242C20.6666 2 19.8156 2 18.1134 2L16.0567 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 12L10 12M6 12L2 12M22 12L18 12" stroke="currentColor" stroke-linecap="round"/>''',
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
