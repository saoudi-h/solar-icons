// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-left-close` icon in the boldDuotone style.
class PanelLeftCloseBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `panel-left-close` icon in the boldDuotone style.
  const PanelLeftCloseBoldDuotoneIcon({
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
    name: 'panel-left-close',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.00004 20.9941C6.36416 20.9665 4.14623 20.8024 3.17191 19.8281C2.00037 18.6565 2.00004 16.7712 2.00004 13L2.00004 11C2.00004 7.2288 2.00038 5.34345 3.17191 4.17187C4.14623 3.19755 6.36416 3.03348 9.00004 3.00586L9.00004 20.9941Z" fill="currentColor"/>
<path d="M17.2715 15.5693C16.9571 15.8388 16.4835 15.8026 16.2139 15.4883L13.6426 12.4883C13.4019 12.2074 13.4019 11.7926 13.6426 11.5117L16.2139 8.51172C16.4835 8.19739 16.9571 8.16118 17.2715 8.43066C17.5859 8.70025 17.6221 9.17384 17.3526 9.48828L15.2002 12L17.3526 14.5117C17.6221 14.8262 17.5859 15.2997 17.2715 15.5693Z" fill="currentColor"/>''',
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
