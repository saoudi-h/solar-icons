// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `routing-3` icon in the boldDuotone style.
class Routing3BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `routing-3` icon in the boldDuotone style.
  const Routing3BoldDuotoneIcon({
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
    name: 'routing-3',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.2501 5C10.2501 4.58579 10.5859 4.25 11.0001 4.25H16.132C18.8832 4.25 19.9295 7.843 17.6084 9.32007L7.19713 15.9454C6.14207 16.6168 6.61766 18.25 7.86821 18.25H11.1894L10.9698 18.0303C10.6769 17.7374 10.6769 17.2626 10.9698 16.9697C11.2627 16.6768 11.7375 16.6768 12.0304 16.9697L13.5304 18.4697C13.8233 18.7626 13.8233 19.2374 13.5304 19.5303L12.0304 21.0303C11.7375 21.3232 11.2627 21.3232 10.9698 21.0303C10.6769 20.7374 10.6769 20.2626 10.9698 19.9697L11.1894 19.75H7.86821C5.11697 19.75 4.07071 16.157 6.39181 14.6799L16.8031 8.05458C17.8581 7.38318 17.3825 5.75 16.132 5.75H11.0001C10.5859 5.75 10.2501 5.41421 10.2501 5Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M19 16C20.6569 16 22 17.3431 22 19C22 20.6569 20.6569 22 19 22C17.3431 22 16 20.6569 16 19C16 17.3431 17.3431 16 19 16Z" fill="currentColor"/>
<path d="M5 2C6.65685 2 8 3.34315 8 5C8 6.65685 6.65685 8 5 8C3.34315 8 2 6.65685 2 5C2 3.34315 3.34315 2 5 2Z" fill="currentColor"/>
</g>''',
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
