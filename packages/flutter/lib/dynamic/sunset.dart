// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sunset` icon in every style.
///
/// Prefer the static widgets (e.g. `SunsetLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class SunsetIcon extends StatelessWidget {
  /// Creates the `sunset` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const SunsetIcon({
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
    name: 'sunset',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 19C4.25 18.5858 4.58579 18.25 5 18.25H19C19.4142 18.25 19.75 18.5858 19.75 19C19.75 19.4142 19.4142 19.75 19 19.75H5C4.58579 19.75 4.25 19.4142 4.25 19ZM7.25 22C7.25 21.5858 7.58579 21.25 8 21.25H16C16.4142 21.25 16.75 21.5858 16.75 22C16.75 22.4142 16.4142 22.75 16 22.75H8C7.58579 22.75 7.25 22.4142 7.25 22Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C12.4142 1.25 12.75 1.58579 12.75 2V3C12.75 3.41421 12.4142 3.75 12 3.75C11.5858 3.75 11.25 3.41421 11.25 3V2C11.25 1.58579 11.5858 1.25 12 1.25ZM4.39861 4.39861C4.6915 4.10572 5.16638 4.10572 5.45927 4.39861L5.85211 4.79145C6.145 5.08434 6.145 5.55921 5.85211 5.85211C5.55921 6.145 5.08434 6.145 4.79145 5.85211L4.39861 5.45927C4.10572 5.16638 4.10572 4.6915 4.39861 4.39861ZM19.6011 4.39887C19.894 4.69176 19.894 5.16664 19.6011 5.45953L19.2083 5.85237C18.9154 6.14526 18.4405 6.14526 18.1476 5.85237C17.8547 5.55947 17.8547 5.0846 18.1476 4.79171L18.5405 4.39887C18.8334 4.10598 19.3082 4.10598 19.6011 4.39887ZM1.25 12C1.25 11.5858 1.58579 11.25 2 11.25H3C3.41421 11.25 3.75 11.5858 3.75 12C3.75 12.4142 3.41421 12.75 3 12.75H2C1.58579 12.75 1.25 12.4142 1.25 12ZM20.25 12C20.25 11.5858 20.5858 11.25 21 11.25H22C22.4142 11.25 22.75 11.5858 22.75 12C22.75 12.4142 22.4142 12.75 22 12.75H21C20.5858 12.75 20.25 12.4142 20.25 12Z" fill="currentColor"/>
<path d="M5.25 12C5.25 13.1778 5.5521 14.2858 6.08267 15.25H2C1.58579 15.25 1.25 15.5858 1.25 16C1.25 16.4142 1.58579 16.75 2 16.75H22C22.4142 16.75 22.75 16.4142 22.75 16C22.75 15.5858 22.4142 15.25 22 15.25H17.9173C18.4479 14.2858 18.75 13.1778 18.75 12C18.75 8.52558 16.125 5.66428 12.75 5.2912V10.1892L13.4697 9.46956C13.7626 9.17666 14.2374 9.17666 14.5303 9.46956C14.8232 9.76245 14.8232 10.2373 14.5303 10.5302L12.5303 12.5302C12.2374 12.8231 11.7626 12.8231 11.4697 12.5302L9.46967 10.5302C9.17678 10.2373 9.17678 9.76245 9.46967 9.46956C9.76256 9.17666 10.2374 9.17666 10.5303 9.46956L11.25 10.1892V5.2912C7.87504 5.66428 5.25 8.52558 5.25 12Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'sunset',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16 21.25C16.4142 21.25 16.75 21.5858 16.75 22C16.75 22.4142 16.4142 22.75 16 22.75H8C7.58579 22.75 7.25 22.4142 7.25 22C7.25 21.5858 7.58579 21.25 8 21.25H16Z" fill="currentColor"/>
<path d="M22 15.25C22.4142 15.25 22.75 15.5858 22.75 16C22.75 16.4142 22.4142 16.75 22 16.75H2C1.58579 16.75 1.25 16.4142 1.25 16C1.25 15.5858 1.58579 15.25 2 15.25H22Z" fill="currentColor"/>
<path d="M11.25 5.29102C11.5637 5.26247 12.3028 5.2225 12.75 5.29102V10.5L13.4697 9.78027C13.7626 9.48746 14.2374 9.48746 14.5303 9.78027C14.8231 10.0731 14.8231 10.5479 14.5303 10.8408L12.5303 12.8408C12.2374 13.1337 11.7626 13.1337 11.4697 12.8408L9.46973 10.8408C9.17689 10.5479 9.17685 10.0731 9.46973 9.78027C9.76261 9.48746 10.2374 9.48746 10.5303 9.78027L11.25 10.5V5.29102Z" fill="currentColor"/>
<path d="M3 11.25C3.41421 11.25 3.75 11.5858 3.75 12C3.75 12.4142 3.41421 12.75 3 12.75H2C1.58579 12.75 1.25 12.4142 1.25 12C1.25 11.5858 1.58579 11.25 2 11.25H3Z" fill="currentColor"/>
<path d="M22 11.25C22.4142 11.25 22.75 11.5858 22.75 12C22.75 12.4142 22.4142 12.75 22 12.75H21C20.5858 12.75 20.25 12.4142 20.25 12C20.25 11.5858 20.5858 11.25 21 11.25H22Z" fill="currentColor"/>
<path d="M12 1.25C12.4142 1.25 12.75 1.58579 12.75 2V3C12.75 3.41421 12.4142 3.75 12 3.75C11.5858 3.75 11.25 3.41421 11.25 3V2C11.25 1.58579 11.5858 1.25 12 1.25Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M18.9999 18.2499C19.4142 18.2499 19.7499 18.5857 19.7499 18.9999C19.7499 19.4142 19.4142 19.7499 18.9999 19.7499H4.99994C4.58573 19.7499 4.24994 19.4142 4.24994 18.9999C4.24994 18.5857 4.58573 18.2499 4.99994 18.2499H18.9999Z" fill="currentColor"/>
<path d="M12.7499 5.29096C16.1249 5.66404 18.7499 8.52553 18.7499 11.9999C18.7499 13.1776 18.4475 14.2858 17.9169 15.2499H6.08295C5.5524 14.2858 5.24997 13.1776 5.24994 11.9999C5.24994 8.52553 7.87498 5.66404 11.2499 5.29096H12.7499Z" fill="currentColor"/>
<path d="M18.54 4.39838C18.8328 4.10557 19.3076 4.10575 19.6005 4.39838C19.8934 4.69127 19.8934 5.16603 19.6005 5.45893L19.208 5.85248C18.9151 6.14507 18.4402 6.14507 18.1474 5.85248C17.8545 5.55959 17.8545 5.08385 18.1474 4.79096L18.54 4.39838Z" fill="currentColor"/>
<path d="M4.39838 4.39838C4.69127 4.10549 5.16603 4.10549 5.45893 4.39838L5.85151 4.79096C6.1444 5.08385 6.1444 5.55861 5.85151 5.85151C5.55861 6.1444 5.08385 6.1444 4.79096 5.85151L4.39838 5.45893C4.10549 5.16603 4.10549 4.69127 4.39838 4.39838Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'sunset',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 22H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 19H19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 16H22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 6V13M10 11L12 13L14 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 2V3" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12L21 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 12L2 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.0708 4.92969L18.678 5.32252" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.32178 5.32227L4.92894 4.92943" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 6.34141C10.6256 6.12031 11.2987 6 12 6C15.3137 6 18 8.68629 18 12C18 13.5217 17.4335 14.911 16.5 15.9687H7.5C6.56645 14.911 6 13.5217 6 12C6 11.2987 6.12031 10.6256 6.34141 10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'sunset',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8 22H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 19H19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 16H22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 6C15.3137 6 18 8.68629 18 12C18 13.5217 17.4335 14.911 16.5 15.9687H7.5C6.56645 14.911 6 13.5217 6 12C6 8.68629 8.68629 6 12 6Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6V13M10 11L12 13L14 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 2V3" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12L21 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 12L2 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.0708 4.92969L18.678 5.32252" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.32178 5.32227L4.92894 4.92943" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'sunset',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 22H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 16H22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 6V13M10 11L12 13L14 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M5 19H19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M12 6C8.68629 6 6 8.68629 6 12C6 13.5217 6.56645 14.911 7.5 15.9687H16.5C17.4335 14.911 18 13.5217 18 12C18 8.68629 15.3137 6 12 6Z" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 2V3" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M22 12L21 12" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M3 12L2 12" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M19.0708 4.92969L18.678 5.32252" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5.32178 5.32227L4.92894 4.92943" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'sunset',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C12.4142 1.25 12.75 1.58579 12.75 2V3C12.75 3.41421 12.4142 3.75 12 3.75C11.5858 3.75 11.25 3.41421 11.25 3V2C11.25 1.58579 11.5858 1.25 12 1.25ZM4.39861 4.39861C4.6915 4.10572 5.16638 4.10572 5.45927 4.39861L5.85211 4.79145C6.145 5.08434 6.145 5.55921 5.85211 5.85211C5.55921 6.145 5.08434 6.145 4.79145 5.85211L4.39861 5.45927C4.10572 5.16638 4.10572 4.6915 4.39861 4.39861ZM19.6011 4.39887C19.894 4.69176 19.894 5.16664 19.6011 5.45953L19.2083 5.85237C18.9154 6.14526 18.4405 6.14526 18.1476 5.85237C17.8547 5.55947 17.8547 5.0846 18.1476 4.79171L18.5405 4.39887C18.8334 4.10598 19.3082 4.10598 19.6011 4.39887ZM11.25 6.80317C8.70578 7.16709 6.75 9.35515 6.75 12C6.75 13.2135 7.16093 14.3296 7.85208 15.2187H16.1479C16.8391 14.3296 17.25 13.2135 17.25 12C17.25 9.35515 15.2942 7.16709 12.75 6.80317V11.1893L13.4697 10.4697C13.7626 10.1768 14.2374 10.1768 14.5303 10.4697C14.8232 10.7626 14.8232 11.2374 14.5303 11.5303L12.5303 13.5303C12.2374 13.8232 11.7626 13.8232 11.4697 13.5303L9.46967 11.5303C9.17678 11.2374 9.17678 10.7626 9.46967 10.4697C9.76256 10.1768 10.2374 10.1768 10.5303 10.4697L11.25 11.1893V6.80317ZM6.08267 15.25C5.5521 14.2858 5.25 13.1778 5.25 12C5.25 8.27208 8.27208 5.25 12 5.25C15.7279 5.25 18.75 8.27208 18.75 12C18.75 13.1778 18.4479 14.2858 17.9173 15.25H22C22.4142 15.25 22.75 15.5858 22.75 16C22.75 16.4142 22.4142 16.75 22 16.75H2C1.58579 16.75 1.25 16.4142 1.25 16C1.25 15.5858 1.58579 15.25 2 15.25H6.08267ZM1.25 12C1.25 11.5858 1.58579 11.25 2 11.25H3C3.41421 11.25 3.75 11.5858 3.75 12C3.75 12.4142 3.41421 12.75 3 12.75H2C1.58579 12.75 1.25 12.4142 1.25 12ZM20.25 12C20.25 11.5858 20.5858 11.25 21 11.25H22C22.4142 11.25 22.75 11.5858 22.75 12C22.75 12.4142 22.4142 12.75 22 12.75H21C20.5858 12.75 20.25 12.4142 20.25 12ZM4.25 19C4.25 18.5858 4.58579 18.25 5 18.25H19C19.4142 18.25 19.75 18.5858 19.75 19C19.75 19.4142 19.4142 19.75 19 19.75H5C4.58579 19.75 4.25 19.4142 4.25 19ZM7.25 22C7.25 21.5858 7.58579 21.25 8 21.25H16C16.4142 21.25 16.75 21.5858 16.75 22C16.75 22.4142 16.4142 22.75 16 22.75H8C7.58579 22.75 7.25 22.4142 7.25 22Z" fill="currentColor"/>''',
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
