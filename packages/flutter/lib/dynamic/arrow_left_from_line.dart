// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-left-from-line` icon in every style.
///
/// Prefer the static widgets (e.g. `ArrowLeftFromLineLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ArrowLeftFromLineIcon extends StatelessWidget {
  /// Creates the `arrow-left-from-line` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ArrowLeftFromLineIcon({
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

  /// When true, ignores [SolarProvider] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'arrow-left-from-line',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.75 12C16.75 12.4142 16.4142 12.75 16 12.75L4.93164 12.75L7.88086 15.4463C8.18649 15.7257 8.208 16.2001 7.92871 16.5059C7.64928 16.8115 7.17485 16.833 6.86914 16.5537L2.49414 12.5537C2.33874 12.4116 2.25 12.2106 2.25 12C2.25 11.7894 2.33874 11.5884 2.49414 11.4463L6.86914 7.44629C7.17485 7.16699 7.64928 7.18851 7.92871 7.49414C8.208 7.79985 8.18649 8.27428 7.88086 8.55371L4.93164 11.25L16 11.25C16.4142 11.25 16.75 11.5858 16.75 12Z" fill="currentColor"/>
<path d="M21.75 20C21.75 20.4142 21.4142 20.75 21 20.75C20.5858 20.75 20.25 20.4142 20.25 20L20.25 4C20.25 3.58579 20.5858 3.25 21 3.25C21.4142 3.25 21.75 3.58579 21.75 4L21.75 20Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'arrow-left-from-line',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.25 20C20.25 20.4142 20.5858 20.75 21 20.75C21.4142 20.75 21.75 20.4142 21.75 20L21.75 4C21.75 3.58579 21.4142 3.25 21 3.25C20.5858 3.25 20.25 3.58579 20.25 4L20.25 20Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M16 12.7501L4.93164 12.7501L7.88086 15.4464C8.18649 15.7258 8.20801 16.2002 7.92871 16.506C7.64928 16.8116 7.17485 16.8331 6.86914 16.5538L2.49414 12.5538C2.33874 12.4117 2.25 12.2107 2.25 12.0001C2.25 11.7895 2.33874 11.5885 2.49414 11.4464L6.86914 7.44639C7.17485 7.16709 7.64928 7.18861 7.92871 7.49424C8.20801 7.79995 8.18649 8.27437 7.88086 8.55381L4.93164 11.2501L16 11.2501C16.4142 11.2501 16.75 11.5859 16.75 12.0001C16.75 12.4143 16.4142 12.7501 16 12.7501Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'arrow-left-from-line',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21 20L21 16M21 12L21 4" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16 12L3 12M7.375 16L3 12L7.375 8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'arrow-left-from-line',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M21 20L21 4" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16 12L3 12M7.375 16L3 12L7.375 8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'arrow-left-from-line',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21 20L21 4" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16 12L3 12M7.375 16L3 12L7.375 8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'arrow-left-from-line',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M16.75 12C16.75 12.4142 16.4142 12.75 16 12.75L4.93164 12.75L7.88086 15.4463C8.18649 15.7257 8.208 16.2001 7.92871 16.5059C7.64928 16.8115 7.17485 16.833 6.86914 16.5537L2.49414 12.5537C2.33874 12.4116 2.25 12.2106 2.25 12C2.25 11.7894 2.33874 11.5884 2.49414 11.4463L6.86914 7.44629C7.17485 7.16699 7.64928 7.18851 7.92871 7.49414C8.208 7.79985 8.18649 8.27428 7.88086 8.55371L4.93164 11.25L16 11.25C16.4142 11.25 16.75 11.5858 16.75 12Z" fill="currentColor"/>
<path d="M21.75 20C21.75 20.4142 21.4142 20.75 21 20.75C20.5858 20.75 20.25 20.4142 20.25 20L20.25 4C20.25 3.58579 20.5858 3.25 21 3.25C21.4142 3.25 21.75 3.58579 21.75 4L21.75 20Z" fill="currentColor"/>''',
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
