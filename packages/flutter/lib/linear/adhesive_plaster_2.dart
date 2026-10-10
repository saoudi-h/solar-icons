// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `adhesive-plaster-2` icon in the linear style.
class AdhesivePlaster2LinearIcon extends StatelessWidget {
  /// Creates the `adhesive-plaster-2` icon in the linear style.
  const AdhesivePlaster2LinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20.4155 12.765C22.5282 14.8777 22.5282 18.3029 20.4155 20.4155C18.3029 22.5282 14.8777 22.5282 12.765 20.4155L3.58447 11.235M12.765 20.4155L20.4155 12.765M20.4155 12.765L11.235 3.58447M11.235 3.58447C9.12233 1.47184 5.69709 1.47184 3.58447 3.58447C1.47184 5.69709 1.47184 9.12233 3.58447 11.235M11.235 3.58447L3.58447 11.235" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 9.17139H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.17139 12H9.17149" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 14.8286H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.8281 12H14.8282" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
