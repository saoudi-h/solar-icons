// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `adhesive-plaster-2` icon in the broken style.
class AdhesivePlaster2BrokenIcon extends StatelessWidget {
  /// Creates the `adhesive-plaster-2` icon in the broken style.
  const AdhesivePlaster2BrokenIcon({
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
    name: 'adhesive-plaster-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.765 20.4155C14.8777 22.5282 18.3029 22.5282 20.4155 20.4155C22.5282 18.3029 22.5282 14.8777 20.4155 12.765M12.765 20.4155L20.4155 12.765M12.765 20.4155L8.17476 15.8252M5 12.6505L3.58447 11.235C1.47184 9.12233 1.47184 5.69709 3.58447 3.58447C5.69709 1.47184 9.12233 1.47184 11.235 3.58447L15.8252 8.17476M3.58447 11.235L11.235 3.58447M20.4155 12.765L19 11.3495" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.9998 9.17139H11.9999" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.17139 12H9.17149" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 14.8286H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.8284 12H14.8285" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
