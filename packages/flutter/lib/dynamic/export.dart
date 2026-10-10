// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `export` icon in every style.
///
/// Prefer the static widgets (e.g. `ExportLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ExportIcon extends StatelessWidget {
  /// Creates the `export` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ExportIcon({
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
    name: 'export',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.84467 7.90533C9.13756 8.19822 9.61244 8.19822 9.90533 7.90533L11.625 6.18566L11.625 14.375C11.625 14.7892 11.9608 15.125 12.375 15.125C12.7892 15.125 13.125 14.7892 13.125 14.375V6.18566L14.8447 7.90533C15.1376 8.19822 15.6124 8.19822 15.9053 7.90533C16.1982 7.61244 16.1982 7.13756 15.9053 6.84467L12.9053 3.84467C12.6124 3.55178 12.1376 3.55178 11.8447 3.84467L8.84467 6.84467C8.55178 7.13756 8.55178 7.61244 8.84467 7.90533Z" fill="currentColor"/>
<path d="M12.375 20.375C16.7933 20.375 20.375 16.7933 20.375 12.375L16.625 12.375C15.6822 12.375 15.2108 12.375 14.9179 12.6679C14.625 12.9608 14.625 13.4322 14.625 14.375C14.625 15.6176 13.6176 16.625 12.375 16.625C11.1324 16.625 10.125 15.6176 10.125 14.375C10.125 13.4322 10.125 12.9608 9.83211 12.6679C9.53921 12.375 9.06781 12.375 8.125 12.375H4.375C4.375 16.7933 7.95672 20.375 12.375 20.375Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'export',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M15.5303 7.53033C15.2374 7.82322 14.7626 7.82322 14.4697 7.53033L12.75 5.81066L12.75 14C12.75 14.4142 12.4142 14.75 12 14.75C11.5858 14.75 11.25 14.4142 11.25 14L11.25 5.81066L9.53033 7.53033C9.23744 7.82322 8.76256 7.82322 8.46967 7.53033C8.17678 7.23744 8.17678 6.76256 8.46967 6.46967L11.4697 3.46967C11.7626 3.17678 12.2374 3.17678 12.5303 3.46967L15.5303 6.46967C15.8232 6.76256 15.8232 7.23744 15.5303 7.53033Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 12C4 16.4183 7.58172 20 12 20C16.4183 20 20 16.4183 20 12L4 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'export',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 20C7.58172 20 4 16.4183 4 12M20 12C20 14.5264 18.8289 16.7792 17 18.2454" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 14L12 4M9 7L12 4L15 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'export',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 12C4 16.4183 7.58172 20 12 20C16.4183 20 20 16.4183 20 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 14L12 4M9 7L12 4L15 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'export',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 14L12 4M9 7L12 4L15 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 12C4 16.4183 7.58172 20 12 20C16.4183 20 20 16.4183 20 12" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'export',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M14.4697 7.53033C14.7626 7.82322 15.2374 7.82322 15.5303 7.53033C15.8232 7.23744 15.8232 6.76256 15.5303 6.46967L12.5303 3.46967C12.2374 3.17678 11.7626 3.17678 11.4697 3.46967L8.46967 6.46967C8.17678 6.76256 8.17678 7.23744 8.46967 7.53033C8.76256 7.82322 9.23744 7.82322 9.53033 7.53033L11.25 5.81066V14C11.25 14.4142 11.5858 14.75 12 14.75C12.4142 14.75 12.75 14.4142 12.75 14V5.81066L14.4697 7.53033Z" fill="currentColor"/>
<path d="M20.75 12C20.75 11.5858 20.4142 11.25 20 11.25C19.5858 11.25 19.25 11.5858 19.25 12C19.25 16.0041 16.0041 19.25 12 19.25C7.99593 19.25 4.75 16.0041 4.75 12C4.75 11.5858 4.41421 11.25 4 11.25C3.58579 11.25 3.25 11.5858 3.25 12C3.25 16.8325 7.16751 20.75 12 20.75C16.8325 20.75 20.75 16.8325 20.75 12Z" fill="currentColor"/>''',
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
