// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `mouse` icon in every style.
///
/// Prefer the static widgets (e.g. `MouseLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MouseIcon extends StatelessWidget {
  /// Creates the `mouse` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const MouseIcon({
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
    name: 'mouse',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M19 8.97414V14.9861C19 18.8598 15.866 22 12 22C8.13401 22 5 18.8598 5 14.9861V8.97414C5 5.35433 7.73668 2.37497 11.25 2V5.38542C10.6588 5.66685 10.25 6.27067 10.25 6.97016V8.97414C10.25 9.94256 11.0335 10.7276 12 10.7276C12.9665 10.7276 13.75 9.94256 13.75 8.97414V6.97016C13.75 6.27067 13.3412 5.66685 12.75 5.38542V2C16.2633 2.37497 19 5.35433 19 8.97414Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'mouse',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.75 8.97385V6.96987C13.75 6.27038 13.3412 5.66656 12.75 5.38513V1.99971C12.5036 1.97341 12.2534 1.95996 12 1.95996C11.7466 1.95996 11.4964 1.97341 11.25 1.99971V5.38513C10.6588 5.66656 10.25 6.27038 10.25 6.96987V8.97385C10.25 9.94227 11.0335 10.7273 12 10.7273C12.9665 10.7273 13.75 9.94227 13.75 8.97385Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M19 8.97414V14.986C19 18.8597 15.866 21.9999 12 21.9999C8.13401 21.9999 5 18.8597 5 14.986V8.97414C5 5.35433 7.73668 2.37497 11.25 2V5.38542C10.6588 5.66685 10.25 6.27067 10.25 6.97016V8.97414C10.25 9.94256 11.0335 10.7276 12 10.7276C12.9665 10.7276 13.75 9.94256 13.75 8.97414V6.97016C13.75 6.27067 13.3412 5.66685 12.75 5.38542V2C16.2633 2.37497 19 5.35433 19 8.97414Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'mouse',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19 15C19 18.866 15.866 22 12 22C8.13401 22 5 18.866 5 15V9C5 5.13401 8.13401 2 12 2C15.866 2 19 5.13401 19 9V11" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 8.5C10.5 7.67157 11.1716 7 12 7C12.8284 7 13.5 7.67157 13.5 8.5V10.5C13.5 11.3284 12.8284 12 12 12C11.1716 12 10.5 11.3284 10.5 10.5V8.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2V7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'mouse',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M5 9C5 5.13401 8.13401 2 12 2C15.866 2 19 5.13401 19 9V15C19 18.866 15.866 22 12 22C8.13401 22 5 18.866 5 15V9Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 8.5C10.5 7.67157 11.1716 7 12 7C12.8284 7 13.5 7.67157 13.5 8.5V10.5C13.5 11.3284 12.8284 12 12 12C11.1716 12 10.5 11.3284 10.5 10.5V8.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2V7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'mouse',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5 9C5 5.13401 8.13401 2 12 2C15.866 2 19 5.13401 19 9V15C19 18.866 15.866 22 12 22C8.13401 22 5 18.866 5 15V9Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 8.5C10.5 7.67157 11.1716 7 12 7C12.8284 7 13.5 7.67157 13.5 8.5V10.5C13.5 11.3284 12.8284 12 12 12C11.1716 12 10.5 11.3284 10.5 10.5V8.5Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2V7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'mouse',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 9C4.25 4.71979 7.71979 1.25 12 1.25C16.2802 1.25 19.75 4.71979 19.75 9V15C19.75 19.2802 16.2802 22.75 12 22.75C7.71979 22.75 4.25 19.2802 4.25 15V9ZM11.25 2.79454C8.15183 3.16505 5.75 5.80204 5.75 9V15C5.75 18.4518 8.54822 21.25 12 21.25C15.4518 21.25 18.25 18.4518 18.25 15V9C18.25 5.80204 15.8482 3.16505 12.75 2.79454V6.37803C13.6239 6.68691 14.25 7.52034 14.25 8.5V10.5C14.25 11.7426 13.2426 12.75 12 12.75C10.7574 12.75 9.75 11.7426 9.75 10.5V8.5C9.75 7.52034 10.3761 6.68691 11.25 6.37803V2.79454ZM12 7.75C11.5858 7.75 11.25 8.08579 11.25 8.5V10.5C11.25 10.9142 11.5858 11.25 12 11.25C12.4142 11.25 12.75 10.9142 12.75 10.5V8.5C12.75 8.08579 12.4142 7.75 12 7.75Z" fill="currentColor"/>''',
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
