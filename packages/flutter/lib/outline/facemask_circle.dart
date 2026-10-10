// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `facemask-circle` icon in the outline style.
class FacemaskCircleOutlineIcon extends StatelessWidget {
  /// Creates the `facemask-circle` icon in the outline style.
  const FacemaskCircleOutlineIcon({
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
    name: 'facemask-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 12.0985 2.75154 12.1967 2.7546 12.2945C2.77137 12.3006 2.78805 12.3073 2.8046 12.3146L7.01535 14.1861L9.8645 13.0464C11.2354 12.4981 12.7646 12.4981 14.1355 13.0464L16.9846 14.1861L21.1954 12.3146C21.212 12.3073 21.2286 12.3006 21.2454 12.2945C21.2485 12.1967 21.25 12.0985 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM21.0263 14.0313L17.707 15.5065L17.339 19.5545C19.1761 18.2539 20.5179 16.3 21.0263 14.0313ZM15.7512 20.4578C15.7517 20.4492 15.7523 20.4407 15.7531 20.4321L16.2025 15.4888L13.5784 14.4391C12.5652 14.0338 11.4348 14.0338 10.4216 14.4391L7.79753 15.4888L8.24692 20.4321C8.2477 20.4407 8.24833 20.4492 8.24882 20.4578C9.39532 20.967 10.6646 21.25 12 21.25C13.3354 21.25 14.6047 20.967 15.7512 20.4578ZM6.66096 19.5545L6.29295 15.5065L2.97374 14.0313C3.48209 16.3 4.82393 18.2539 6.66096 19.5545ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12Z" fill="currentColor"/>
<path d="M16 10.5C16 11.3284 15.5523 12 15 12C14.4477 12 14 11.3284 14 10.5C14 9.67157 14.4477 9 15 9C15.5523 9 16 9.67157 16 10.5Z" fill="currentColor"/>
<path d="M10 10.5C10 11.3284 9.55229 12 9 12C8.44772 12 8 11.3284 8 10.5C8 9.67157 8.44772 9 9 9C9.55229 9 10 9.67157 10 10.5Z" fill="currentColor"/>''',
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
