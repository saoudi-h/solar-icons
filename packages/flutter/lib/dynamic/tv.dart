// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tv` icon in every style.
///
/// Prefer the static widgets (e.g. `TvLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class TvIcon extends StatelessWidget {
  /// Creates the `tv` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const TvIcon({
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
    name: 'tv',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 16.0001V12.0001C22 9.17169 22 7.75747 21.1213 6.87879C20.296 6.05349 18.9983 6.00336 16.5 6.00031V21.9999C18.9983 21.9969 20.296 21.9467 21.1213 21.1214C22 20.2428 22 18.8285 22 16.0001ZM19 11C19.5523 11 20 11.4477 20 12C20 12.5523 19.5523 13 19 13C18.4477 13 18 12.5523 18 12C18 11.4477 18.4477 11 19 11ZM19 15C19.5523 15 20 15.4477 20 16C20 16.5523 19.5523 17 19 17C18.4477 17 18 16.5523 18 16C18 15.4477 18.4477 15 19 15Z" fill="currentColor"/>
<path d="M15.5694 3.48811L13.4163 6.00011H15V22.0001L8 22.0001C5.17157 22.0001 3.75736 22.0001 2.87868 21.1214C2 20.2428 2 18.8285 2 16.0001V12.0001C2 9.17169 2 7.75747 2.87868 6.87879C3.75736 6.00011 5.17157 6.00011 8 6.00011H10.5837L8.43054 3.48811C8.16098 3.17361 8.1974 2.70014 8.51189 2.43057C8.82639 2.16101 9.29986 2.19743 9.56943 2.51192L12 5.34757L14.4305 2.51192C14.7001 2.19743 15.1736 2.161 15.4881 2.43057C15.8026 2.70014 15.839 3.17361 15.5694 3.48811Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'tv',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16 6V22H8C5.17157 22 3.75759 21.9998 2.87891 21.1211C2.00023 20.2424 2 18.8284 2 16V12C2 9.17157 2.00023 7.75759 2.87891 6.87891C3.75759 6.00023 5.17157 6 8 6H16Z" fill="currentColor"/>
<path d="M19 15C19.5523 15 20 15.4477 20 16C20 16.5523 19.5523 17 19 17C18.4477 17 18 16.5523 18 16C18 15.4477 18.4477 15 19 15Z" fill="currentColor"/>
<path d="M19 11C19.5523 11 20 11.4477 20 12C20 12.5523 19.5523 13 19 13C18.4477 13 18 12.5523 18 12C18 11.4477 18.4477 11 19 11Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M16.5 5.99996C18.9982 6.00301 20.2958 6.05357 21.1211 6.87887C21.9996 7.75756 22 9.17164 22 12V16C22 18.8283 21.9997 20.2424 21.1211 21.1211C20.2958 21.9463 18.9981 21.9969 16.5 22H16V5.99996H16.5Z" fill="currentColor"/>
<path d="M14.4306 2.51168C14.7002 2.19734 15.1738 2.16111 15.4882 2.43063C15.8026 2.70022 15.8388 3.1738 15.5693 3.48824L13.416 5.99996H10.5839L8.43063 3.48824C8.16111 3.1738 8.19734 2.70022 8.51168 2.43063C8.82612 2.16111 9.29971 2.19735 9.5693 2.51168L12 5.34762L14.4306 2.51168Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'tv',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 14L2 16C2 18.8284 2 20.2426 2.87868 21.1213C3.75736 22 5.17157 22 8 22L16 22C18.8284 22 20.2426 22 21.1213 21.1213C22 20.2426 22 18.8284 22 16V12C22 9.17157 22 7.75736 21.1213 6.87868C20.2426 6 18.8284 6 16 6L8 6C5.17157 6 3.75736 6 2.87868 6.87868C2.23738 7.51998 2.06413 8.44655 2.01732 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 2L12 5.5L15 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 6V10M16 22V14" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 12H19.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 16H19.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'tv',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 16C22 18.8284 22 20.2426 21.1213 21.1213C20.2426 22 18.8284 22 16 22L8 22C5.17157 22 3.75736 22 2.87868 21.1213C2 20.2426 2 18.8284 2 16L2 12C2 9.17157 2 7.75736 2.87868 6.87868C3.75736 6 5.17157 6 8 6L16 6C18.8284 6 20.2426 6 21.1213 6.87868C22 7.75736 22 9.17157 22 12V16Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 2L12 5.5L15 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 6V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 12H19.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 16H19.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'tv',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 16C22 18.8284 22 20.2426 21.1213 21.1213C20.2426 22 18.8284 22 16 22L8 22C5.17157 22 3.75736 22 2.87868 21.1213C2 20.2426 2 18.8284 2 16L2 12C2 9.17157 2 7.75736 2.87868 6.87868C3.75736 6 5.17157 6 8 6L16 6C18.8284 6 20.2426 6 21.1213 6.87868C22 7.75736 22 9.17157 22 12V16Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 6V22" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 2L12 5.5L15 2" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M19 12H19.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M19 16H19.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'tv',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M15.4881 1.43057C15.8026 1.70014 15.839 2.17361 15.5694 2.48811L13.2021 5.25001L16.0549 5.25001C17.4225 5.24999 18.5248 5.24997 19.3918 5.36653C20.2919 5.48755 21.0497 5.74644 21.6516 6.34836C22.2536 6.95028 22.5125 7.70815 22.6335 8.60826C22.75 9.47523 22.75 10.5776 22.75 11.9451V16.0549C22.75 17.4225 22.75 18.5248 22.6335 19.3918C22.5125 20.2919 22.2536 21.0497 21.6517 21.6517C21.0497 22.2536 20.2919 22.5125 19.3918 22.6335C18.5248 22.7501 17.4225 22.75 16.0549 22.75L7.94513 22.75C6.57754 22.75 5.47522 22.7501 4.60825 22.6335C3.70814 22.5125 2.95027 22.2536 2.34835 21.6517C1.74643 21.0497 1.48754 20.2919 1.36652 19.3918C1.24996 18.5248 1.24998 17.4225 1.25 16.0549L1.25 11.9451C1.24998 10.5775 1.24996 9.47523 1.36652 8.60826C1.48754 7.70815 1.74643 6.95028 2.34835 6.34836C2.95027 5.74645 3.70814 5.48755 4.60825 5.36654C5.47521 5.24998 6.57753 5.24999 7.94512 5.25001L10.7979 5.25001L8.43056 2.48811C8.16099 2.17361 8.19741 1.70014 8.51191 1.43057C8.8264 1.16101 9.29988 1.19743 9.56944 1.51192L12 4.34757L14.4306 1.51192C14.7001 1.19743 15.1736 1.161 15.4881 1.43057ZM16.75 6.75079L16.75 21.2492C17.7958 21.246 18.5756 21.2297 19.1919 21.1469C19.9257 21.0482 20.3142 20.8678 20.591 20.591C20.8678 20.3142 21.0482 19.9257 21.1469 19.1919C21.2484 18.4365 21.25 17.4354 21.25 16V12C21.25 10.5646 21.2484 9.56348 21.1469 8.80813C21.0482 8.07436 20.8678 7.68578 20.591 7.40902C20.3142 7.13226 19.9257 6.95181 19.1919 6.85316C18.5756 6.77031 17.7958 6.75399 16.75 6.75079ZM15.25 21.25L15.25 6.75001L8 6.75001C6.56458 6.75001 5.56347 6.75161 4.80812 6.85316C4.07435 6.95181 3.68577 7.13226 3.40901 7.40902C3.13225 7.68579 2.9518 8.07436 2.85315 8.80813C2.75159 9.56348 2.75 10.5646 2.75 12L2.75 16C2.75 17.4354 2.75159 18.4365 2.85315 19.1919C2.9518 19.9257 3.13225 20.3142 3.40901 20.591C3.68577 20.8678 4.07435 21.0482 4.80812 21.1469C5.56347 21.2484 6.56459 21.25 8 21.25L15.25 21.25Z" fill="currentColor"/>
<path d="M20 16C20 15.4477 19.5523 15 19 15C18.4477 15 18 15.4477 18 16C18 16.5523 18.4477 17 19 17C19.5523 17 20 16.5523 20 16Z" fill="currentColor"/>
<path d="M20 12C20 11.4477 19.5523 11 19 11C18.4477 11 18 11.4477 18 12C18 12.5523 18.4477 13 19 13C19.5523 13 20 12.5523 20 12Z" fill="currentColor"/>''',
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
