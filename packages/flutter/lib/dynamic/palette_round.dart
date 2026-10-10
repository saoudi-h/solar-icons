// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `palette-round` icon in every style.
///
/// Prefer the static widgets (e.g. `PaletteRoundLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class PaletteRoundIcon extends StatelessWidget {
  /// Creates the `palette-round` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const PaletteRoundIcon({
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
    name: 'palette-round',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.8994 22C20.1086 22 21.8994 20.2091 21.8994 18C21.8994 15.7909 20.1086 14 17.8994 14H17.6797L11.878 19.798C11.636 20.0399 11.5 20.3391 11.5 20.6813C11.5 21.3936 12.0774 22 12.7897 22H17.8994Z" fill="currentColor"/>
<path d="M13.2839 4.95882L12.2291 6.01357C11.7633 6.48107 11.5012 7.11381 11.5 7.7738L11.5 16.0119C11.5 17.0666 11.5 17.5939 11.8135 17.7199C12.1271 17.8459 12.492 17.4653 13.2219 16.704L19.0599 10.6144C20.5819 9.02691 20.5554 6.51391 19.0003 4.95883C17.4218 3.38026 14.8624 3.38026 13.2839 4.95882Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M10 6V18C10 20.2091 8.20914 22 6 22C3.79086 22 2 20.2091 2 18V6C2 3.79086 3.79086 2 6 2C8.20914 2 10 3.79086 10 6ZM6 19C6.55228 19 7 18.5523 7 18C7 17.4477 6.55228 17 6 17C5.44772 17 5 17.4477 5 18C5 18.5523 5.44772 19 6 19Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'palette-round',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17.8994 14C20.1086 14 21.8994 15.7909 21.8994 18C21.8994 20.2091 20.1086 22 17.8994 22H6C7.35277 22 8.54757 21.3277 9.27148 20.2998C9.26322 20.3115 9.25643 20.3243 9.24805 20.3359L13.2217 16.3613L15.4863 14H17.8994Z" fill="currentColor"/>
<path d="M6 17C6.55228 17 7 17.4477 7 18C7 18.5523 6.55228 19 6 19C5.44772 19 5 18.5523 5 18C5 17.4477 5.44772 17 6 17Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M6 2C8.20914 2 10 3.79086 10 6V7.90039L13.2842 4.61621C14.8627 3.03793 17.4215 3.03792 19 4.61621C20.5551 6.17129 20.5815 8.68397 19.0596 10.2715L13.2217 16.3613L9.24805 20.3359C9.25891 20.3209 9.26766 20.3043 9.27832 20.2891C8.55516 21.3228 7.35733 22 6 22C3.79086 22 2 20.2091 2 18V6C2 3.79086 3.79086 2 6 2Z" fill="currentColor"/>

<path opacity="0.5" d="M13.2842 4.61615C14.8627 3.03794 17.4215 3.03794 19 4.61615C20.5551 6.17123 20.5815 8.68488 19.0596 10.2724L13.2217 16.3613L9.24707 20.3359C9.72057 19.6787 10 18.8718 10 17.9999V7.90033L13.2842 4.61615Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'palette-round',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 8V6C2 3.79086 3.79086 2 6 2C8.20914 2 10 3.79086 10 6V18C10 20.2091 8.20914 22 6 22C3.79086 22 2 20.2091 2 18V12" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 8.24268L13.3137 4.92902C14.8758 3.36692 17.4084 3.36692 18.9705 4.92902C20.5326 6.49112 20.5326 9.02378 18.9705 10.5859L9.3064 20.25" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 22L13 22M15.5547 14H18C20.2091 14 22 15.7909 22 18C22 20.2091 20.2091 22 18 22H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 18C7 18.5523 6.55228 19 6 19C5.44772 19 5 18.5523 5 18C5 17.4477 5.44772 17 6 17C6.55228 17 7 17.4477 7 18Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'palette-round',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 6C2 3.79086 3.79086 2 6 2C8.20914 2 10 3.79086 10 6V18C10 20.2091 8.20914 22 6 22C3.79086 22 2 20.2091 2 18V6Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.99977 8.24268L13.3134 4.92902C14.8755 3.36692 17.4082 3.36692 18.9703 4.92902C20.5324 6.49112 20.5324 9.02378 18.9703 10.5859L9.30615 20.25" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 22L18 22C20.2091 22 22 20.2091 22 18C22 15.7909 20.2091 14 18 14L15.5 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 18C7 18.5523 6.55228 19 6 19C5.44772 19 5 18.5523 5 18C5 17.4477 5.44772 17 6 17C6.55228 17 7 17.4477 7 18Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'palette-round',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 6C2 3.79086 3.79086 2 6 2C8.20914 2 10 3.79086 10 6V18C10 20.2091 8.20914 22 6 22C3.79086 22 2 20.2091 2 18V6Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 8.24268L13.3137 4.92902C14.8758 3.36692 17.4084 3.36692 18.9705 4.92902C20.5326 6.49112 20.5326 9.02378 18.9705 10.5859L9.3064 20.25" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6 22L18 22C20.2091 22 22 20.2091 22 18C22 15.7909 20.2091 14 18 14L15.5 14" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M7 18C7 18.5523 6.55228 19 6 19C5.44772 19 5 18.5523 5 18C5 17.4477 5.44772 17 6 17C6.55228 17 7 17.4477 7 18Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'palette-round',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M1.25 6C1.25 3.37665 3.37665 1.25 6 1.25C8.62335 1.25 10.75 3.37665 10.75 6V6.43202L12.7833 4.39868C14.6383 2.54369 17.6459 2.54369 19.5008 4.39868C21.3558 6.25367 21.3558 9.26121 19.5008 11.1162L17.367 13.25H18C20.6234 13.25 22.75 15.3766 22.75 18C22.75 20.6234 20.6234 22.75 18 22.75H6C3.37665 22.75 1.25 20.6234 1.25 18V6ZM9.46412 21.25H18C19.7949 21.25 21.25 19.7949 21.25 18C21.25 16.2051 19.7949 14.75 18 14.75H15.867L9.8889 20.7281C9.7596 20.9121 9.61758 21.0865 9.46412 21.25ZM10.75 17.7457L18.4402 10.0555C19.7094 8.78633 19.7094 6.72855 18.4402 5.45934C17.171 4.19014 15.1132 4.19014 13.844 5.45934L10.75 8.55334V17.7457ZM6 2.75C4.20507 2.75 2.75 4.20507 2.75 6V18C2.75 19.7949 4.20507 21.25 6 21.25C7.79493 21.25 9.25 19.7949 9.25 18V6C9.25 4.20507 7.79493 2.75 6 2.75ZM6 17.75C5.86193 17.75 5.75 17.8619 5.75 18C5.75 18.1381 5.86193 18.25 6 18.25C6.13807 18.25 6.25 18.1381 6.25 18C6.25 17.8619 6.13807 17.75 6 17.75ZM4.25 18C4.25 17.0335 5.0335 16.25 6 16.25C6.9665 16.25 7.75 17.0335 7.75 18C7.75 18.9665 6.9665 19.75 6 19.75C5.0335 19.75 4.25 18.9665 4.25 18Z" fill="currentColor"/>''',
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
