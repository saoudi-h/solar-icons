// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `link-circle` icon in the outline style.
class LinkCircleOutlineIcon extends StatelessWidget {
  /// Creates the `link-circle` icon in the outline style.
  const LinkCircleOutlineIcon({
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
    name: 'link-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M2.75 12C2.75 9.10051 5.10051 6.75 8 6.75C8.41421 6.75 8.75 6.41421 8.75 6C8.75 5.58579 8.41421 5.25 8 5.25C4.27208 5.25 1.25 8.27208 1.25 12C1.25 15.7279 4.27208 18.75 8 18.75C11.7279 18.75 14.75 15.7279 14.75 12C14.75 11.5858 14.4142 11.25 14 11.25C13.5858 11.25 13.25 11.5858 13.25 12C13.25 14.8995 10.8995 17.25 8 17.25C5.10051 17.25 2.75 14.8995 2.75 12Z" fill="currentColor"/>
<path d="M21.25 12C21.25 14.8995 18.8995 17.25 16 17.25C15.5858 17.25 15.25 17.5858 15.25 18C15.25 18.4142 15.5858 18.75 16 18.75C19.7279 18.75 22.75 15.7279 22.75 12C22.75 8.27208 19.7279 5.25 16 5.25C12.2721 5.25 9.25 8.27208 9.25 12C9.25 12.4142 9.58579 12.75 10 12.75C10.4142 12.75 10.75 12.4142 10.75 12C10.75 9.1005 13.1005 6.75 16 6.75C18.8995 6.75 21.25 9.1005 21.25 12Z" fill="currentColor"/>''',
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
