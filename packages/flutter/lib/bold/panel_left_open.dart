// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-left-open` icon in the bold style.
class PanelLeftOpenBoldIcon extends StatelessWidget {
  /// Creates the `panel-left-open` icon in the bold style.
  const PanelLeftOpenBoldIcon({
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
    name: 'panel-left-open',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.75 3L14 3C17.7712 3 19.6566 3.0003 20.8281 4.17187C21.9997 5.34345 22 7.22876 22 11L22 13C22 16.7712 21.9997 18.6566 20.8281 19.8281C19.6566 20.9997 17.7712 21 14 21L9.75 21L9.75 3ZM13.7227 15.5693C14.037 15.8388 14.5106 15.8024 14.7803 15.4883L17.3525 12.4883C17.593 12.2075 17.593 11.7925 17.3525 11.5117L14.7813 8.51172C14.5117 8.19747 14.0381 8.1614 13.7236 8.43066C13.4093 8.70025 13.3731 9.17384 13.6426 9.48828L15.7949 12L13.6426 14.5117C13.3731 14.8261 13.4086 15.2997 13.7227 15.5693Z" fill="currentColor"/>
<path d="M8.25 20.9941C5.61409 20.9665 4.14621 20.8025 3.17188 19.8281C2.0003 18.6566 2 16.7712 2 13L2 11C2 7.22876 2.0003 5.34345 3.17188 4.17187C4.14621 3.19754 5.61409 3.03347 8.25 3.00586L8.25 20.9941Z" fill="currentColor"/>''',
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
