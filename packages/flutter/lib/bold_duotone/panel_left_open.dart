// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-left-open` icon in the boldDuotone style.
class PanelLeftOpenBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `panel-left-open` icon in the boldDuotone style.
  const PanelLeftOpenBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.00011 20.9941C6.36429 20.9665 4.14629 20.8024 3.17198 19.8281C2.00051 18.6565 2.00011 16.7711 2.00011 13L2.00011 11C2.00011 7.22889 2.00053 5.34345 3.17198 4.17187C4.14629 3.19757 6.36429 3.03348 9.00011 3.00586L9.00011 20.9941Z" fill="currentColor"/>
<path d="M14.7814 15.4883C14.5117 15.8025 14.0381 15.8388 13.7237 15.5693C13.4095 15.2998 13.3733 14.8261 13.6427 14.5117L15.795 12L13.6427 9.48828C13.3733 9.17388 13.4095 8.70025 13.7237 8.43066C14.0382 8.16117 14.5118 8.19746 14.7814 8.51172L17.3526 11.5117C17.5934 11.7926 17.5934 12.2074 17.3526 12.4883L14.7814 15.4883Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M20.8284 19.8284C22 18.6568 22 16.7712 22 13L22 11C22 7.22873 22 5.34312 20.8284 4.17154C19.6569 2.99997 17.7712 2.99997 14 2.99997L10 2.99997C9.91573 2.99997 9.0824 2.99992 9 2.99994L9 20.9999C9.0824 21 9.91573 21 10 21L14 21C17.7712 21 19.6569 21 20.8284 19.8284Z" fill="currentColor"/>''',
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
