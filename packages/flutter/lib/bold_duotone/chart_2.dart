// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chart-2` icon in the boldDuotone style.
class Chart2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chart-2` icon in the boldDuotone style.
  const Chart2BoldDuotoneIcon({
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
    name: 'chart-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21 21.25C21.4142 21.25 21.75 21.5858 21.75 22C21.75 22.4142 21.4142 22.75 21 22.75H3C2.58579 22.75 2.25 22.4142 2.25 22C2.25 21.5858 2.58579 21.25 3 21.25H21Z" fill="currentColor"/>
<path d="M5 9C5.94281 9 6.41414 9.00008 6.70703 9.29297C6.99992 9.58586 7 10.0572 7 11V17C7 17.9428 6.99992 18.4141 6.70703 18.707C6.41414 18.9999 5.94281 19 5 19C4.05719 19 3.58586 18.9999 3.29297 18.707C3.00008 18.4141 3 17.9428 3 17V11C3 10.0572 3.00008 9.58586 3.29297 9.29297C3.58586 9.00008 4.05719 9 5 9Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M12 5C12.9428 5 13.4141 5.00008 13.707 5.29297C13.9999 5.58586 14 6.05719 14 7V17C14 17.9428 13.9999 18.4141 13.707 18.707C13.4141 18.9999 12.9428 19 12 19C11.0572 19 10.5859 18.9999 10.293 18.707C10.0001 18.4141 10 17.9428 10 17V7C10 6.05719 10.0001 5.58586 10.293 5.29297C10.5859 5.00008 11.0572 5 12 5Z" fill="currentColor"/>
<path d="M19 2C19.9428 2 20.4141 2.00008 20.707 2.29297C20.9999 2.58586 21 3.05719 21 4V17C21 17.9428 20.9999 18.4141 20.707 18.707C20.4141 18.9999 19.9428 19 19 19C18.0572 19 17.5859 18.9999 17.293 18.707C17.0001 18.4141 17 17.9428 17 17V4C17 3.05719 17.0001 2.58586 17.293 2.29297C17.5859 2.00008 18.0572 2 19 2Z" fill="currentColor"/>
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
