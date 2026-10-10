// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `circle-top-down` icon.
class CircleTopDownIcon extends StatelessWidget {
  /// Creates the `circle-top-down` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const CircleTopDownIcon({
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
    name: 'circle-top-down',
    style: SolarIconStyle.bold,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21.5303 2.46967C21.8232 2.76256 21.8232 3.23744 21.5303 3.53033L13.8107 11.25H17.3438C17.758 11.25 18.0938 11.5858 18.0938 12C18.0938 12.4142 17.758 12.75 17.3438 12.75H12C11.5858 12.75 11.25 12.4142 11.25 12V6.65625C11.25 6.24204 11.5858 5.90625 12 5.90625C12.4142 5.90625 12.75 6.24204 12.75 6.65625V10.1893L20.4697 2.46967C20.7626 2.17678 21.2374 2.17678 21.5303 2.46967Z" fill="currentColor"/>
<path d="M20.4817 6.70026L17.4303 9.75164C18.6329 9.79714 19.5938 10.7864 19.5938 12C19.5938 13.2426 18.5864 14.25 17.3438 14.25H12C10.7574 14.25 9.75 13.2426 9.75 12V6.65625C9.75 5.41361 10.7574 4.40625 12 4.40625C13.2136 4.40625 14.2029 5.36715 14.2484 6.56966L17.2997 3.51828C15.7632 2.55618 13.9466 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 10.0534 21.4438 8.23678 20.4817 6.70026Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'circle-top-down',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21.5303 2.46967C21.8232 2.76256 21.8232 3.23744 21.5303 3.53033L13.8107 11.25H17.3438C17.758 11.25 18.0938 11.5858 18.0938 12C18.0938 12.4142 17.758 12.75 17.3438 12.75H12C11.5858 12.75 11.25 12.4142 11.25 12V6.65625C11.25 6.24204 11.5858 5.90625 12 5.90625C12.4142 5.90625 12.75 6.24204 12.75 6.65625V10.1893L20.4697 2.46967C20.7626 2.17678 21.2374 2.17678 21.5303 2.46967Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'circle-top-down',
    style: SolarIconStyle.broken,
    body: r'''<path d="M21 3L12 12M12 6.65625V12H17.3438" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 2C6.47715 2 2 6.47715 2 12C2 13.8214 2.48697 15.5291 3.33782 17M22 12C22 17.5228 17.5228 22 12 22C10.1786 22 8.47087 21.513 7 20.6622" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'circle-top-down',
    style: SolarIconStyle.linear,
    body: r'''<path d="M21 3L12 12M12 6.65625V12H17.3438" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'circle-top-down',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M21 3L12 12M12 6.65625V12H17.3438" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent: r'''<path opacity="0.5" d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'circle-top-down',
    style: SolarIconStyle.outline,
    body: r'''<path d="M21.25 12C21.25 17.1086 17.1086 21.25 12 21.25C6.89137 21.25 2.75 17.1086 2.75 12C2.75 6.89137 6.89137 2.75 12 2.75C12.4142 2.75 12.75 2.41421 12.75 2C12.75 1.58579 12.4142 1.25 12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 11.5858 22.4142 11.25 22 11.25C21.5858 11.25 21.25 11.5858 21.25 12Z" fill="currentColor"/>
<path d="M21.5303 3.53033C21.8232 3.23744 21.8232 2.76256 21.5303 2.46967C21.2374 2.17678 20.7626 2.17678 20.4697 2.46967L12.75 10.1893V6.65625C12.75 6.24204 12.4142 5.90625 12 5.90625C11.5858 5.90625 11.25 6.24204 11.25 6.65625V12C11.25 12.4142 11.5858 12.75 12 12.75H17.3438C17.758 12.75 18.0938 12.4142 18.0938 12C18.0938 11.5858 17.758 11.25 17.3438 11.25H13.8107L21.5303 3.53033Z" fill="currentColor"/>''',
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
