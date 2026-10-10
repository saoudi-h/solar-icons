// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sort-from-bottom-to-top` icon in the boldDuotone style.
class SortFromBottomToTopBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `sort-from-bottom-to-top` icon in the boldDuotone style.
  const SortFromBottomToTopBoldDuotoneIcon({
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
    name: 'sort-from-bottom-to-top',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.7627 3.28796C17.0688 3.18592 17.4059 3.29167 17.5996 3.54967L20.5996 7.54967C20.8481 7.88093 20.7813 8.35088 20.4502 8.59948C20.1189 8.84794 19.649 8.78119 19.4004 8.45006L17.75 6.24987V19.9999C17.75 20.4141 17.4142 20.7499 17 20.7499C16.5858 20.7499 16.25 20.4141 16.25 19.9999V3.99987C16.25 3.67707 16.4565 3.39004 16.7627 3.28796Z" fill="currentColor"/>
<path d="M13 7.24987C13.4142 7.24987 13.75 7.58566 13.75 7.99987C13.75 8.41408 13.4142 8.74987 13 8.74987H4C3.58579 8.74987 3.25 8.41408 3.25 7.99987C3.25 7.58566 3.58579 7.24987 4 7.24987H13Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M13 17.25C13.4142 17.25 13.75 17.5858 13.75 18C13.75 18.4142 13.4142 18.75 13 18.75H8C7.58579 18.75 7.25 18.4142 7.25 18C7.25 17.5858 7.58579 17.25 8 17.25H13Z" fill="currentColor"/>
<path d="M13 12.25C13.4142 12.25 13.75 12.5858 13.75 13C13.75 13.4142 13.4142 13.75 13 13.75H6C5.58579 13.75 5.25 13.4142 5.25 13C5.25 12.5858 5.58579 12.25 6 12.25H13Z" fill="currentColor"/>
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
