// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `help` icon in the broken style.
class HelpBrokenIcon extends StatelessWidget {
  /// Creates the `help` icon in the broken style.
  const HelpBrokenIcon({
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
    name: 'help',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="12" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.8284 9.17154L19.0724 4.92773" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.92773 19.0723L9.17155 14.8286" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.17157 9.17157L4.92851 4.92822" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.0723 19.0723L14.8284 14.8286" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.41235 2.33892C11.0533 1.89775 12.8289 1.86936 14.5882 2.34078C19.9229 3.7702 23.0887 9.25357 21.6593 14.5882C20.2299 19.9229 14.7465 23.0887 9.41185 21.6593C4.07719 20.2299 0.911364 14.7465 2.34078 9.41185C2.8122 7.65248 3.72457 6.12901 4.92711 4.92847" stroke="currentColor" stroke-linecap="round"/>''',
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
