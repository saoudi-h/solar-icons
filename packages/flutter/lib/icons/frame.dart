// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `frame` icon.
class FrameIcon extends StatelessWidget {
  /// Creates the `frame` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const FrameIcon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

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

  /// When true, ignores [SolarTheme] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'frame',
    style: SolarIconStyle.bold,
    body: r'''<path d="M18.25 22V19.75H5.75V22C5.75 22.4142 5.41421 22.75 5 22.75C4.58579 22.75 4.25 22.4142 4.25 22V19.75H2C1.58579 19.75 1.25 19.4142 1.25 19C1.25 18.5858 1.58579 18.25 2 18.25H4.25V5.75H2C1.58579 5.75 1.25 5.41421 1.25 5C1.25 4.58579 1.58579 4.25 2 4.25H4.25V2C4.25 1.58579 4.58579 1.25 5 1.25C5.41421 1.25 5.75 1.58579 5.75 2V4.25H18.25V2C18.25 1.58579 18.5858 1.25 19 1.25C19.4142 1.25 19.75 1.58579 19.75 2V4.25H22C22.4142 4.25 22.75 4.58579 22.75 5C22.75 5.41421 22.4142 5.75 22 5.75H19.75V18.25H22C22.4142 18.25 22.75 18.5858 22.75 19C22.75 19.4142 22.4142 19.75 22 19.75H19.75V22C19.75 22.4142 19.4142 22.75 19 22.75C18.5858 22.75 18.25 22.4142 18.25 22Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'frame',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M19 1.25C19.4142 1.25 19.75 1.58579 19.75 2V4.25H22C22.4142 4.25 22.75 4.58579 22.75 5C22.75 5.41421 22.4142 5.75 22 5.75H19.75V18.25H22C22.4142 18.25 22.75 18.5858 22.75 19C22.75 19.4142 22.4142 19.75 22 19.75H19.75V22C19.75 22.4142 19.4142 22.75 19 22.75C18.5858 22.75 18.25 22.4142 18.25 22V19.75H5.75V22C5.75 22.4142 5.41421 22.75 5 22.75C4.58579 22.75 4.25 22.4142 4.25 22V19.75H2C1.58579 19.75 1.25 19.4142 1.25 19C1.25 18.5858 1.58579 18.25 2 18.25H4.25V5.75H2C1.58579 5.75 1.25 5.41421 1.25 5C1.25 4.58579 1.58579 4.25 2 4.25H4.25V2C4.25 1.58579 4.58579 1.25 5 1.25C5.41421 1.25 5.75 1.58579 5.75 2V4.25H18.25V2C18.25 1.58579 18.5858 1.25 19 1.25ZM5.75 18.25H18.25V5.75H5.75V18.25Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M5.75 18.25H18.25V5.75H5.75V18.25Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'frame',
    style: SolarIconStyle.broken,
    body: r'''<path d="M22 5H2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 22L19 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 19L18 19M2 19L14 19" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 2L5 6M5 22L5 10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'frame',
    style: SolarIconStyle.linear,
    body: r'''<path d="M22 5H2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 19H2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 22L19 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 22L5 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'frame',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M22 19H2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 22L5 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent: r'''<path opacity="0.5" d="M22 5H2M19 22V2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'frame',
    style: SolarIconStyle.outline,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M19 1.25C19.4142 1.25 19.75 1.58579 19.75 2V4.25H22C22.4142 4.25 22.75 4.58579 22.75 5C22.75 5.41421 22.4142 5.75 22 5.75H19.75V18.25H22C22.4142 18.25 22.75 18.5858 22.75 19C22.75 19.4142 22.4142 19.75 22 19.75H19.75V22C19.75 22.4142 19.4142 22.75 19 22.75C18.5858 22.75 18.25 22.4142 18.25 22V19.75H5.75V22C5.75 22.4142 5.41421 22.75 5 22.75C4.58579 22.75 4.25 22.4142 4.25 22V19.75H2C1.58579 19.75 1.25 19.4142 1.25 19C1.25 18.5858 1.58579 18.25 2 18.25H4.25V5.75H2C1.58579 5.75 1.25 5.41421 1.25 5C1.25 4.58579 1.58579 4.25 2 4.25H4.25V2C4.25 1.58579 4.58579 1.25 5 1.25C5.41421 1.25 5.75 1.58579 5.75 2V4.25H18.25V2C18.25 1.58579 18.5858 1.25 19 1.25ZM5.75 18.25H18.25V5.75H5.75V18.25Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

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
