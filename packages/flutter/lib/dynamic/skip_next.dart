// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `skip-next` icon in every style.
///
/// Prefer the static widgets (e.g. `SkipNextLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class SkipNextIcon extends StatelessWidget {
  /// Creates the `skip-next` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const SkipNextIcon({
    super.key,
    this.style,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].
  final SolarIconStyle? style;

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
    name: 'skip-next',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.6598 14.6474C18.4467 13.4935 18.4467 10.5065 16.6598 9.35258L5.87083 2.38548C4.13419 1.26402 2 2.72368 2 5.0329V18.9671C2 21.2763 4.13419 22.736 5.87083 21.6145L16.6598 14.6474Z" fill="currentColor"/>
<path d="M22.75 5C22.75 4.58579 22.4142 4.25 22 4.25C21.5858 4.25 21.25 4.58579 21.25 5V19C21.25 19.4142 21.5858 19.75 22 19.75C22.4142 19.75 22.75 19.4142 22.75 19V5Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'skip-next',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.6598 14.6474C18.4467 13.4935 18.4467 10.5065 16.6598 9.35258L5.87083 2.38548C4.13419 1.26402 2 2.72368 2 5.0329V18.9671C2 21.2763 4.13419 22.736 5.87083 21.6145L16.6598 14.6474Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22.75 5C22.75 4.58579 22.4142 4.25 22 4.25C21.5858 4.25 21.25 4.58579 21.25 5V19C21.25 19.4142 21.5858 19.75 22 19.75C22.4142 19.75 22.75 19.4142 22.75 19V5Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'skip-next',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 11L2 18.9671C2 21.2763 4.13419 22.736 5.87083 21.6145L16.6598 14.6474C18.4467 13.4935 18.4467 10.5065 16.6598 9.35258L5.87084 2.38548C4.13419 1.26402 2 2.72368 2 5.03289V7" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 5V12M22 16V19" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'skip-next',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16.6598 9.35258C18.4467 10.5065 18.4467 13.4935 16.6598 14.6474L5.87083 21.6145C4.13419 22.736 2 21.2763 2 18.9671L2 5.0329C2 2.72368 4.13419 1.26402 5.87083 2.38548L16.6598 9.35258Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 5V19" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'skip-next',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M16.6598 9.35258C18.4467 10.5065 18.4467 13.4935 16.6598 14.6474L5.87084 21.6145C4.13419 22.736 2 21.2763 2 18.9671L2 5.0329C2 2.72368 4.13419 1.26402 5.87083 2.38548L16.6598 9.35258Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 5V19" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'skip-next',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.27769 1.7555C5.1348 1.01747 3.83955 1.13428 2.86078 1.80371C1.89423 2.46477 1.25 3.64507 1.25 5.03297V18.9672C1.25 20.3551 1.89423 21.5354 2.86078 22.1965C3.83956 22.8659 5.1348 22.9827 6.2777 22.2447L17.0667 15.2775C18.217 14.5347 18.75 13.2342 18.75 12.0001C18.75 10.7659 18.217 9.46544 17.0667 8.72261L6.27769 1.7555ZM2.75 5.03297C2.75 4.11167 3.17287 3.40753 3.70757 3.04182C4.23005 2.68448 4.87022 2.63219 5.46397 3.0156L16.253 9.98271C16.8895 10.3938 17.25 11.1637 17.25 12.0001C17.25 12.8364 16.8895 13.6064 16.253 14.0174L5.46397 20.9846C4.87023 21.368 4.23005 21.3157 3.70758 20.9583C3.17287 20.5926 2.75 19.8885 2.75 18.9672L2.75 5.03297Z" fill="currentColor"/>
<path d="M22.75 5.00008C22.75 4.58586 22.4142 4.25008 22 4.25008C21.5858 4.25008 21.25 4.58586 21.25 5.00008V19.0001C21.25 19.4143 21.5858 19.7501 22 19.7501C22.4142 19.7501 22.75 19.4143 22.75 19.0001V5.00008Z" fill="currentColor"/>''',
  );

  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback = isolated
        ? SolarIconStyle.linear
        : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
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
