// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `widget-3` icon in every style.
///
/// Prefer the static widgets (e.g. `Widget3LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Widget3Icon extends StatelessWidget {
  /// Creates the `widget-3` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Widget3Icon({
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
    name: 'widget-3',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M1.75 6.5C1.75 3.87665 3.87665 1.75 6.5 1.75C9.12335 1.75 11.25 3.87665 11.25 6.5C11.25 9.12335 9.12335 11.25 6.5 11.25C3.87665 11.25 1.75 9.12335 1.75 6.5Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12.75 17.5C12.75 14.8766 14.8766 12.75 17.5 12.75C20.1234 12.75 22.25 14.8766 22.25 17.5C22.25 20.1234 20.1234 22.25 17.5 22.25C14.8766 22.25 12.75 20.1234 12.75 17.5Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M22.25 6.5C22.25 3.87665 20.1234 1.75 17.5 1.75C14.8766 1.75 12.75 3.87665 12.75 6.5C12.75 9.12335 14.8766 11.25 17.5 11.25C20.1234 11.25 22.25 9.12335 22.25 6.5Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.25 17.5C11.25 14.8766 9.12335 12.75 6.5 12.75C3.87665 12.75 1.75 14.8766 1.75 17.5C1.75 20.1234 3.87665 22.25 6.5 22.25C9.12335 22.25 11.25 20.1234 11.25 17.5Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'widget-3',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22.25 6.5C22.25 3.87665 20.1234 1.75 17.5 1.75C14.8766 1.75 12.75 3.87665 12.75 6.5C12.75 9.12335 14.8766 11.25 17.5 11.25C20.1234 11.25 22.25 9.12335 22.25 6.5Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.25 17.5C11.25 14.8766 9.12335 12.75 6.5 12.75C3.87665 12.75 1.75 14.8766 1.75 17.5C1.75 20.1234 3.87665 22.25 6.5 22.25C9.12335 22.25 11.25 20.1234 11.25 17.5Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path fill-rule="evenodd" clip-rule="evenodd" d="M1.75 6.5C1.75 3.87665 3.87665 1.75 6.5 1.75C9.12335 1.75 11.25 3.87665 11.25 6.5C11.25 9.12335 9.12335 11.25 6.5 11.25C3.87665 11.25 1.75 9.12335 1.75 6.5Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12.75 17.5C12.75 14.8766 14.8766 12.75 17.5 12.75C20.1234 12.75 22.25 14.8766 22.25 17.5C22.25 20.1234 20.1234 22.25 17.5 22.25C14.8766 22.25 12.75 20.1234 12.75 17.5Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'widget-3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21.5 6.5C21.5 4.29086 19.7091 2.5 17.5 2.5C15.2909 2.5 13.5 4.29086 13.5 6.5C13.5 8.70914 15.2909 10.5 17.5 10.5C19.7091 10.5 21.5 8.70914 21.5 6.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 17.5C10.5 15.2909 8.70914 13.5 6.5 13.5C4.29086 13.5 2.5 15.2909 2.5 17.5C2.5 19.7091 4.29086 21.5 6.5 21.5C8.70914 21.5 10.5 19.7091 10.5 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.66789 5.34961C2.55868 5.71394 2.5 6.10012 2.5 6.5C2.5 8.70914 4.29086 10.5 6.5 10.5C8.70914 10.5 10.5 8.70914 10.5 6.5C10.5 4.29086 8.70914 2.5 6.5 2.5C6.10012 2.5 5.71394 2.55868 5.34961 2.66789" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.8321 19.1504C21.9413 18.7861 22 18.3999 22 18C22 15.7909 20.2091 14 18 14C15.7909 14 14 15.7909 14 18C14 20.2091 15.7909 22 18 22C18.3999 22 18.7861 21.9413 19.1504 21.8321" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'widget-3',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2.5 6.5C2.5 4.29086 4.29086 2.5 6.5 2.5C8.70914 2.5 10.5 4.29086 10.5 6.5C10.5 8.70914 8.70914 10.5 6.5 10.5C4.29086 10.5 2.5 8.70914 2.5 6.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 17.5C13.5 15.2909 15.2909 13.5 17.5 13.5C19.7091 13.5 21.5 15.2909 21.5 17.5C21.5 19.7091 19.7091 21.5 17.5 21.5C15.2909 21.5 13.5 19.7091 13.5 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.5 6.5C21.5 4.29086 19.7091 2.5 17.5 2.5C15.2909 2.5 13.5 4.29086 13.5 6.5C13.5 8.70914 15.2909 10.5 17.5 10.5C19.7091 10.5 21.5 8.70914 21.5 6.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 17.5C10.5 15.2909 8.70914 13.5 6.5 13.5C4.29086 13.5 2.5 15.2909 2.5 17.5C2.5 19.7091 4.29086 21.5 6.5 21.5C8.70914 21.5 10.5 19.7091 10.5 17.5Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'widget-3',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21.5 6.5C21.5 4.29086 19.7091 2.5 17.5 2.5C15.2909 2.5 13.5 4.29086 13.5 6.5C13.5 8.70914 15.2909 10.5 17.5 10.5C19.7091 10.5 21.5 8.70914 21.5 6.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 17.5C10.5 15.2909 8.70914 13.5 6.5 13.5C4.29086 13.5 2.5 15.2909 2.5 17.5C2.5 19.7091 4.29086 21.5 6.5 21.5C8.70914 21.5 10.5 19.7091 10.5 17.5Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.5 6.5C2.5 4.29086 4.29086 2.5 6.5 2.5C8.70914 2.5 10.5 4.29086 10.5 6.5C10.5 8.70914 8.70914 10.5 6.5 10.5C4.29086 10.5 2.5 8.70914 2.5 6.5Z" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M13.5 17.5C13.5 15.2909 15.2909 13.5 17.5 13.5C19.7091 13.5 21.5 15.2909 21.5 17.5C21.5 19.7091 19.7091 21.5 17.5 21.5C15.2909 21.5 13.5 19.7091 13.5 17.5Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'widget-3',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.5 1.75C3.87665 1.75 1.75 3.87665 1.75 6.5C1.75 9.12335 3.87665 11.25 6.5 11.25C9.12335 11.25 11.25 9.12335 11.25 6.5C11.25 3.87665 9.12335 1.75 6.5 1.75ZM3.25 6.5C3.25 4.70507 4.70507 3.25 6.5 3.25C8.29493 3.25 9.75 4.70507 9.75 6.5C9.75 8.29493 8.29493 9.75 6.5 9.75C4.70507 9.75 3.25 8.29493 3.25 6.5Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5 12.75C14.8766 12.75 12.75 14.8766 12.75 17.5C12.75 20.1234 14.8766 22.25 17.5 22.25C20.1234 22.25 22.25 20.1234 22.25 17.5C22.25 14.8766 20.1234 12.75 17.5 12.75ZM14.25 17.5C14.25 15.7051 15.7051 14.25 17.5 14.25C19.2949 14.25 20.75 15.7051 20.75 17.5C20.75 19.2949 19.2949 20.75 17.5 20.75C15.7051 20.75 14.25 19.2949 14.25 17.5Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12.75 6.5C12.75 3.87665 14.8766 1.75 17.5 1.75C20.1234 1.75 22.25 3.87665 22.25 6.5C22.25 9.12335 20.1234 11.25 17.5 11.25C14.8766 11.25 12.75 9.12335 12.75 6.5ZM17.5 3.25C15.7051 3.25 14.25 4.70507 14.25 6.5C14.25 8.29493 15.7051 9.75 17.5 9.75C19.2949 9.75 20.75 8.29493 20.75 6.5C20.75 4.70507 19.2949 3.25 17.5 3.25Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M6.5 12.75C3.87665 12.75 1.75 14.8766 1.75 17.5C1.75 20.1234 3.87665 22.25 6.5 22.25C9.12335 22.25 11.25 20.1234 11.25 17.5C11.25 14.8766 9.12335 12.75 6.5 12.75ZM3.25 17.5C3.25 15.7051 4.70507 14.25 6.5 14.25C8.29493 14.25 9.75 15.7051 9.75 17.5C9.75 19.2949 8.29493 20.75 6.5 20.75C4.70507 20.75 3.25 19.2949 3.25 17.5Z" fill="currentColor"/>''',
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
