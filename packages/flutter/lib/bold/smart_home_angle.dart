// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smart-home-angle` icon in the bold style.
class SmartHomeAngleBoldIcon extends StatelessWidget {
  /// Creates the `smart-home-angle` icon in the bold style.
  const SmartHomeAngleBoldIcon({
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
    name: 'smart-home-angle',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3.00007 17.5C5.07113 17.5 6.75007 19.1789 6.75007 21.25C6.75007 21.6642 6.41428 22 6.00007 22C5.58585 22 5.25007 21.6642 5.25007 21.25C5.25007 20.0074 4.24271 19 3.00007 19C2.58585 19 2.25007 18.6642 2.25007 18.25C2.25007 17.8358 2.58585 17.5 3.00007 17.5Z" fill="currentColor"/>
<path d="M3.00007 14.5C6.72799 14.5 9.75007 17.5221 9.75007 21.25C9.75007 21.6642 9.41428 22 9.00007 22C8.58585 22 8.25007 21.6642 8.25007 21.25C8.25007 18.3505 5.89956 16 3.00007 16C2.58585 16 2.25007 15.6642 2.25007 15.25C2.25007 14.8358 2.58585 14.5 3.00007 14.5Z" fill="currentColor"/>
<path d="M3.00007 11.5C8.38484 11.5 12.7501 15.8652 12.7501 21.25C12.7501 21.6642 12.4143 22 12.0001 22C11.5859 22 11.2501 21.6642 11.2501 21.25C11.2501 16.6937 7.55642 13 3.00007 13C2.58585 13 2.25007 12.6642 2.25007 12.25C2.25007 11.8358 2.58585 11.5 3.00007 11.5Z" fill="currentColor"/>
<path d="M12.0001 2C13.1544 2 14.1989 2.62261 16.2882 3.86719L17.6729 4.69141C19.9736 6.06193 21.1246 6.74766 21.6651 7.875C22.2054 9.0023 22.0152 10.3211 21.6358 12.958L21.3575 14.8955C20.8701 18.2827 20.6262 19.9765 19.4512 20.9883C18.3978 21.8953 16.9033 21.9893 14.1221 21.999C14.2048 21.7648 14.2501 21.5126 14.2501 21.25C14.2501 15.0368 9.21327 10 3.00007 10C2.65057 10 2.31958 10.0795 2.02448 10.2217C1.95539 9.2338 2.02454 8.52276 2.33503 7.875C2.87549 6.74766 4.0265 6.06193 6.32722 4.69141L7.71198 3.86719C9.80127 2.62261 10.8458 2 12.0001 2Z" fill="currentColor"/>''',
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
