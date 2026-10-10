// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `paragraph-spacing` icon in every style.
///
/// Prefer the static widgets (e.g. `ParagraphSpacingLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ParagraphSpacingIcon extends StatelessWidget {
  /// Creates the `paragraph-spacing` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ParagraphSpacingIcon({
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
    name: 'paragraph-spacing',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3.25 3C3.25 2.58579 3.58579 2.25 4 2.25H20C20.4142 2.25 20.75 2.58579 20.75 3C20.75 3.41421 20.4142 3.75 20 3.75H4C3.58579 3.75 3.25 3.41421 3.25 3Z" fill="currentColor"/>
<path d="M3.25 21C3.25 20.5858 3.58579 20.25 4 20.25H20C20.4142 20.25 20.75 20.5858 20.75 21C20.75 21.4142 20.4142 21.75 20 21.75H4C3.58579 21.75 3.25 21.4142 3.25 21Z" fill="currentColor"/>
<path d="M12.5303 4.96967C12.2374 4.67678 11.7626 4.67678 11.4697 4.96967L8.46967 7.96967C8.17678 8.26256 8.17678 8.73744 8.46967 9.03033C8.76256 9.32322 9.23744 9.32322 9.53033 9.03033L11.25 7.31066V16.6893L9.53033 14.9697C9.23744 14.6768 8.76256 14.6768 8.46967 14.9697C8.17678 15.2626 8.17678 15.7374 8.46967 16.0303L11.4697 19.0303C11.7626 19.3232 12.2374 19.3232 12.5303 19.0303L15.5303 16.0303C15.8232 15.7374 15.8232 15.2626 15.5303 14.9697C15.2374 14.6768 14.7626 14.6768 14.4697 14.9697L12.75 16.6893V7.31066L14.4697 9.03033C14.7626 9.32322 15.2374 9.32322 15.5303 9.03033C15.8232 8.73744 15.8232 8.26256 15.5303 7.96967L12.5303 4.96967Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'paragraph-spacing',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.5303 4.96967C12.2374 4.67678 11.7626 4.67678 11.4697 4.96967L8.46967 7.96967C8.17678 8.26256 8.17678 8.73744 8.46967 9.03033C8.76256 9.32322 9.23744 9.32322 9.53033 9.03033L11.25 7.31066V16.6893L9.53033 14.9697C9.23744 14.6768 8.76256 14.6768 8.46967 14.9697C8.17678 15.2626 8.17678 15.7374 8.46967 16.0303L11.4697 19.0303C11.7626 19.3232 12.2374 19.3232 12.5303 19.0303L15.5303 16.0303C15.8232 15.7374 15.8232 15.2626 15.5303 14.9697C15.2374 14.6768 14.7626 14.6768 14.4697 14.9697L12.75 16.6893V7.31066L14.4697 9.03033C14.7626 9.32322 15.2374 9.32322 15.5303 9.03033C15.8232 8.73744 15.8232 8.26256 15.5303 7.96967L12.5303 4.96967Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M3.25 3C3.25 2.58579 3.58579 2.25 4 2.25H20C20.4142 2.25 20.75 2.58579 20.75 3C20.75 3.41421 20.4142 3.75 20 3.75H4C3.58579 3.75 3.25 3.41421 3.25 3Z" fill="currentColor"/>
<path d="M3.25 21C3.25 20.5858 3.58579 20.25 4 20.25H20C20.4142 20.25 20.75 20.5858 20.75 21C20.75 21.4142 20.4142 21.75 20 21.75H4C3.58579 21.75 3.25 21.4142 3.25 21Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'paragraph-spacing',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4 21H13M20 21H17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4 3H20" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 8.5L12 5.5L15 8.5M12 5.5V18.5M9 15.5L12 18.5L15 15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'paragraph-spacing',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 21H20" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4 3H20" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 8.5L12 5.5L15 8.5M12 5.5V18.5M9 15.5L12 18.5L15 15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'paragraph-spacing',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 8.5L12 5.5L15 8.5M12 5.5V18.5M9 15.5L12 18.5L15 15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 21H20" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M4 3H20" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'paragraph-spacing',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M3.25 3C3.25 2.58579 3.58579 2.25 4 2.25H20C20.4142 2.25 20.75 2.58579 20.75 3C20.75 3.41421 20.4142 3.75 20 3.75H4C3.58579 3.75 3.25 3.41421 3.25 3Z" fill="currentColor"/>
<path d="M3.25 21C3.25 20.5858 3.58579 20.25 4 20.25H20C20.4142 20.25 20.75 20.5858 20.75 21C20.75 21.4142 20.4142 21.75 20 21.75H4C3.58579 21.75 3.25 21.4142 3.25 21Z" fill="currentColor"/>
<path d="M12.5303 4.96967C12.2374 4.67678 11.7626 4.67678 11.4697 4.96967L8.46967 7.96967C8.17678 8.26256 8.17678 8.73744 8.46967 9.03033C8.76256 9.32322 9.23744 9.32322 9.53033 9.03033L11.25 7.31066V16.6893L9.53033 14.9697C9.23744 14.6768 8.76256 14.6768 8.46967 14.9697C8.17678 15.2626 8.17678 15.7374 8.46967 16.0303L11.4697 19.0303C11.7626 19.3232 12.2374 19.3232 12.5303 19.0303L15.5303 16.0303C15.8232 15.7374 15.8232 15.2626 15.5303 14.9697C15.2374 14.6768 14.7626 14.6768 14.4697 14.9697L12.75 16.6893V7.31066L14.4697 9.03033C14.7626 9.32322 15.2374 9.32322 15.5303 9.03033C15.8232 8.73744 15.8232 8.26256 15.5303 7.96967L12.5303 4.96967Z" fill="currentColor"/>''',
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
