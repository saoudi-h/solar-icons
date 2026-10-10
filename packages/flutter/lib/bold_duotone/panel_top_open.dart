// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-top-open` icon in the boldDuotone style.
class PanelTopOpenBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `panel-top-open` icon in the boldDuotone style.
  const PanelTopOpenBoldDuotoneIcon({
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
    name: 'panel-top-open',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M3.00586 9.00011C3.03348 6.36429 3.19757 4.14629 4.17187 3.17198C5.34345 2.00051 7.22888 2.00011 11 2.00011L13 2.00011C16.7711 2.00011 18.6565 2.00053 19.8281 3.17198C20.8024 4.14629 20.9665 6.36429 20.9941 9.00011L3.00586 9.00011Z" fill="currentColor"/>
<path d="M8.51172 14.7814C8.19748 14.5117 8.16118 14.0381 8.43066 13.7237C8.70024 13.4095 9.17388 13.3733 9.48828 13.6427L12 15.795L14.5117 13.6427C14.8261 13.3733 15.2998 13.4095 15.5693 13.7237C15.8388 14.0381 15.8025 14.5118 15.4883 14.7814L12.4883 17.3526C12.2074 17.5934 11.7926 17.5934 11.5117 17.3526L8.51172 14.7814Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M4.1716 20.8284C5.34318 22 7.2288 22 11 22L13 22C16.7713 22 18.6569 22 19.8285 20.8284C21 19.6569 21 17.7712 21 14L21 10C21 9.91573 21.0001 9.0824 21.0001 9L3.00006 9C3.00005 9.0824 3.00003 9.91573 3.00003 10L3.00003 14C3.00003 17.7712 3.00003 19.6569 4.1716 20.8284Z" fill="currentColor"/>''',
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
