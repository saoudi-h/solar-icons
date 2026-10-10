// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `magnifier-slash` icon in every style.
///
/// Prefer the static widgets (e.g. `MagnifierSlashLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MagnifierSlashIcon extends StatelessWidget {
  /// Creates the `magnifier-slash` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const MagnifierSlashIcon({
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
    name: 'magnifier-slash',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 2C16.7467 2 21 6.25329 21 11.5C21 13.8541 20.1417 16.0064 18.7236 17.666C18.7315 17.6732 18.7404 17.6799 18.748 17.6875L22.5303 21.4697C22.8228 21.7626 22.8228 22.2384 22.5303 22.5312C22.2375 22.8236 21.7625 22.8237 21.4697 22.5312L17.6875 18.748C17.6797 18.7403 17.6724 18.7317 17.665 18.7236C16.0055 20.1414 13.8538 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 6.25329 6.25329 2 11.5 2ZM13.7979 9.20215C13.505 8.90926 13.0302 8.90926 12.7373 9.20215L9.20215 12.7373C8.90926 13.0302 8.90926 13.505 9.20215 13.7979C9.49504 14.0907 9.9698 14.0907 10.2627 13.7979L13.7979 10.2627C14.0907 9.9698 14.0907 9.49504 13.7979 9.20215Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'magnifier-slash',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.7889 20.7663C22.0709 21.0485 22.0709 21.5065 21.7889 21.7887C21.5067 22.0708 21.0488 22.0708 20.7665 21.7887L17.6854 18.7077C18.0514 18.3933 18.3925 18.0512 18.7069 17.6852L21.7889 20.7663Z" fill="currentColor"/>
<path d="M12.7372 9.20182C13.0299 8.90918 13.5048 8.9094 13.7977 9.20182C14.0904 9.49473 14.0906 9.97051 13.7977 10.2633L10.2626 13.7985C9.96975 14.0912 9.49489 14.0911 9.20202 13.7985C8.90918 13.5057 8.90927 13.0309 9.20202 12.738L12.7372 9.20182Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'magnifier-slash',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.75 3.27093C8.14732 2.46262 9.76964 2 11.5 2C16.7467 2 21 6.25329 21 11.5C21 16.7467 16.7467 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 9.76964 2.46262 8.14732 3.27093 6.75" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.73218 13.2676L11.4999 11.4998L13.2677 9.73204" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'magnifier-slash',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.73242 13.2676L11.5002 11.4998L13.268 9.73204" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'magnifier-slash',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.72852 13.2695L11.4963 11.5018L13.264 9.734" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'magnifier-slash',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.7373 9.20215C13.0302 8.90926 13.505 8.90926 13.7979 9.20215C14.0907 9.49504 14.0907 9.9698 13.7979 10.2627L10.2627 13.7979C9.9698 14.0907 9.49504 14.0907 9.20215 13.7979C8.90926 13.505 8.90926 13.0302 9.20215 12.7373L12.7373 9.20215Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 1.25C17.1609 1.25 21.75 5.83908 21.75 11.5C21.75 14.0605 20.8111 16.4018 19.2588 18.1982L22.5303 21.4697C22.8232 21.7626 22.8232 22.2374 22.5303 22.5303C22.2374 22.8232 21.7626 22.8232 21.4697 22.5303L18.1982 19.2588C16.4018 20.8111 14.0605 21.75 11.5 21.75C5.83908 21.75 1.25 17.1609 1.25 11.5C1.25 5.83908 5.83908 1.25 11.5 1.25ZM11.5 2.75C6.66751 2.75 2.75 6.66751 2.75 11.5C2.75 16.3325 6.66751 20.25 11.5 20.25C16.3325 20.25 20.25 16.3325 20.25 11.5C20.25 6.66751 16.3325 2.75 11.5 2.75Z" fill="currentColor"/>''',
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
