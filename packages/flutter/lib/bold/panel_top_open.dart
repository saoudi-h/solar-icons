// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-top-open` icon in the bold style.
class PanelTopOpenBoldIcon extends StatelessWidget {
  /// Creates the `panel-top-open` icon in the bold style.
  const PanelTopOpenBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21 9.75L21 14C21 17.7712 20.9997 19.6566 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22L11 22C7.22876 22 5.34345 21.9997 4.17188 20.8281C3.0003 19.6566 3 17.7712 3 14L3 9.75L21 9.75ZM8.43066 13.7227C8.16121 14.037 8.1976 14.5106 8.51172 14.7803L11.5117 17.3525C11.7925 17.593 12.2075 17.593 12.4883 17.3525L15.4883 14.7813C15.8025 14.5117 15.8386 14.0381 15.5693 13.7236C15.2997 13.4093 14.8262 13.3731 14.5117 13.6426L12 15.7949L9.48828 13.6426C9.17393 13.3731 8.7003 13.4086 8.43066 13.7227Z" fill="currentColor"/>
<path d="M3.00586 8.25C3.03348 5.61409 3.19755 4.14621 4.17188 3.17188C5.34345 2.0003 7.22876 2 11 2L13 2C16.7712 2 18.6566 2.0003 19.8281 3.17188C20.8025 4.14621 20.9665 5.61409 20.9941 8.25L3.00586 8.25Z" fill="currentColor"/>''',
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
