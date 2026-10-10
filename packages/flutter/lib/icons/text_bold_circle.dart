// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `text-bold-circle` icon.
class TextBoldCircleIcon extends StatelessWidget {
  /// Creates the `text-bold-circle` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const TextBoldCircleIcon({
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
    name: 'text-bold-circle',
    style: SolarIconStyle.bold,
    body: r'''<path d="M8.75 11.25H12C13.2426 11.25 14.25 10.2426 14.25 9C14.25 7.75736 13.2426 6.75 12 6.75H9.52174C9.09552 6.75 8.75 7.09552 8.75 7.52174V11.25Z" fill="currentColor"/>
<path d="M8.75 12.75V16.8235C8.75 17.0591 8.94094 17.25 9.17647 17.25H13C14.2426 17.25 15.25 16.2426 15.25 15C15.25 13.7574 14.2426 12.75 13 12.75H8.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12ZM7.25 7.52174C7.25 6.26709 8.26709 5.25 9.52174 5.25H12C14.0711 5.25 15.75 6.92893 15.75 9C15.75 10.029 15.3356 10.9612 14.6645 11.6387C15.9004 12.2519 16.75 13.5268 16.75 15C16.75 17.0711 15.0711 18.75 13 18.75H9.17647C8.11251 18.75 7.25 17.8875 7.25 16.8235V7.52174Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'text-bold-circle',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.52174 5.25C8.26709 5.25 7.25 6.26709 7.25 7.52174V16.8235C7.25 17.8875 8.11251 18.75 9.17647 18.75H13C15.0711 18.75 16.75 17.0711 16.75 15C16.75 13.5268 15.9004 12.2519 14.6645 11.6387C15.3356 10.9612 15.75 10.029 15.75 9C15.75 6.92893 14.0711 5.25 12 5.25H9.52174ZM12 11.25H8.75V7.52174C8.75 7.09552 9.09552 6.75 9.52174 6.75H12C13.2426 6.75 14.25 7.75736 14.25 9C14.25 10.2426 13.2426 11.25 12 11.25ZM8.75 16.8235V12.75H13C14.2426 12.75 15.25 13.7574 15.25 15C15.25 16.2426 14.2426 17.25 13 17.25H9.17647C8.94094 17.25 8.75 17.0591 8.75 16.8235Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'text-bold-circle',
    style: SolarIconStyle.broken,
    body: r'''<path d="M8 7.52174C8 6.68131 8.68131 6 9.52174 6H12C13.6569 6 15 7.34315 15 9C15 10.6569 13.6569 12 12 12H8V7.52174Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 12H13C14.6569 12 16 13.3431 16 15C16 16.6569 14.6569 18 13 18H9.17647C8.52672 18 8 17.4733 8 16.8235V12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'text-bold-circle',
    style: SolarIconStyle.linear,
    body: r'''<path d="M2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 7.52174C8 6.68131 8.68131 6 9.52174 6H12C13.6569 6 15 7.34315 15 9C15 10.6569 13.6569 12 12 12H8V7.52174Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 12H13C14.6569 12 16 13.3431 16 15C16 16.6569 14.6569 18 13 18H9.17647C8.52672 18 8 17.4733 8 16.8235V12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'text-bold-circle',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M8 7.52174C8 6.68131 8.68131 6 9.52174 6H12C13.6569 6 15 7.34315 15 9C15 10.6569 13.6569 12 12 12H8V7.52174Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 12H13C14.6569 12 16 13.3431 16 15C16 16.6569 14.6569 18 13 18H9.17647C8.52672 18 8 17.4733 8 16.8235V12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<path opacity="0.5" d="M2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'text-bold-circle',
    style: SolarIconStyle.outline,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.25 7.52174C7.25 6.26709 8.26709 5.25 9.52174 5.25H12C14.0711 5.25 15.75 6.92893 15.75 9C15.75 10.029 15.3356 10.9612 14.6645 11.6387C15.9004 12.2519 16.75 13.5268 16.75 15C16.75 17.0711 15.0711 18.75 13 18.75H9.17647C8.11251 18.75 7.25 17.8875 7.25 16.8235V7.52174ZM8.75 11.25H12C13.2426 11.25 14.25 10.2426 14.25 9C14.25 7.75736 13.2426 6.75 12 6.75H9.52174C9.09552 6.75 8.75 7.09552 8.75 7.52174V11.25ZM8.75 12.75V16.8235C8.75 17.0591 8.94094 17.25 9.17647 17.25H13C14.2426 17.25 15.25 16.2426 15.25 15C15.25 13.7574 14.2426 12.75 13 12.75H8.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75Z" fill="currentColor"/>''',
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
