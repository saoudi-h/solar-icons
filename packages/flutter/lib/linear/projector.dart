// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `projector` icon in the linear style.
class ProjectorLinearIcon extends StatelessWidget {
  /// Creates the `projector` icon in the linear style.
  const ProjectorLinearIcon({
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
    name: 'projector',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18 18L19 20" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 18L5 20" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 6C9.33346 6 8.66654 6 8 6C5.17157 6 3.75736 6 2.87868 6.87868C2 7.75736 2 9.17157 2 12C2 14.8284 2 16.2426 2.87868 17.1213C3.75736 18 5.17157 18 8 18H16C18.8284 18 20.2426 18 21.1213 17.1213C22 16.2426 22 14.8284 22 12C22 9.17157 22 7.75736 21.1213 6.87868C20.4819 6.23925 19.5589 6.06515 18.0136 6.01774" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 9C19 11.7614 16.7614 14 14 14C11.2386 14 9 11.7614 9 9C9 7.87439 9.37194 6.83566 9.99963 6C10.9118 4.78555 12.3642 4 14 4C15.6438 4 17.1023 4.79321 18.0136 6.01774C18.6333 6.85034 19 7.88234 19 9Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 9C12 10.1046 12.8954 11 14 11C15.1046 11 16 10.1046 16 9C16 7.89543 15.1046 7 14 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.5 9.5L5.5002 11.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
