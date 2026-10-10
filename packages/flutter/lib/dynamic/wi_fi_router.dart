// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-router` icon in every style.
///
/// Prefer the static widgets (e.g. `WiFiRouterLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class WiFiRouterIcon extends StatelessWidget {
  /// Creates the `wi-fi-router` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const WiFiRouterIcon({
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
    name: 'wi-fi-router',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.0838 3.5C10.1049 3.5 8.40696 4.71031 7.69312 6.43399C7.53464 6.81668 7.09592 6.99844 6.71323 6.83995C6.33053 6.68146 6.14878 6.24275 6.30727 5.86005C7.24515 3.5954 9.47729 2 12.0838 2C14.6904 2 16.9225 3.5954 17.8604 5.86005C18.0189 6.24275 17.8371 6.68146 17.4544 6.83995C17.0717 6.99844 16.633 6.81668 16.4745 6.43399C15.7607 4.71032 14.0627 3.5 12.0838 3.5Z" fill="currentColor"/>
<path d="M12.0846 6C11.0622 6 10.1973 6.68244 9.92427 7.6182C9.80824 8.01583 9.39183 8.24411 8.9942 8.12808C8.59657 8.01205 8.36829 7.59564 8.48432 7.19801C8.93906 5.63969 10.3777 4.5 12.0846 4.5C13.7914 4.5 15.2301 5.63969 15.6848 7.19801C15.8008 7.59564 15.5725 8.01205 15.1749 8.12808C14.7773 8.24411 14.3609 8.01583 14.2448 7.6182C13.9718 6.68244 13.1069 6 12.0846 6Z" fill="currentColor"/>
<path d="M13.084 7.75C13.084 8.30228 12.6363 8.75 12.084 8.75C11.5317 8.75 11.084 8.30228 11.084 7.75C11.084 7.19772 11.5317 6.75 12.084 6.75C12.6363 6.75 13.084 7.19772 13.084 7.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M3.65131 4.37802C3.4458 4.01839 2.98766 3.89344 2.62802 4.09895C2.26839 4.30445 2.14344 4.76259 2.34895 5.12223L6.13624 11.75H6C4.11438 11.75 3.17157 11.75 2.58579 12.3358C2 12.9216 2 13.8644 2 15.75C2 17.6356 2 18.5784 2.58579 19.1642C3.17157 19.75 4.11438 19.75 6 19.75H18C19.8856 19.75 20.8284 19.75 21.4142 19.1642C22 18.5784 22 17.6356 22 15.75C22 13.8644 22 12.9216 21.4142 12.3358C20.8284 11.75 19.8856 11.75 18 11.75H17.8638L21.6511 5.12223C21.8566 4.76259 21.7316 4.30445 21.372 4.09895C21.0123 3.89344 20.5542 4.01839 20.3487 4.37802L16.3487 11.378L16.1287 11.75H7.88128L7.65131 11.378L3.65131 4.37802ZM6 16.75C6.55228 16.75 7 16.3023 7 15.75C7 15.1977 6.55228 14.75 6 14.75C5.44772 14.75 5 15.1977 5 15.75C5 16.3023 5.44772 16.75 6 16.75ZM10 15.75C10 16.3023 9.55228 16.75 9 16.75C8.44772 16.75 8 16.3023 8 15.75C8 15.1977 8.44772 14.75 9 14.75C9.55228 14.75 10 15.1977 10 15.75ZM14 15C13.5858 15 13.25 15.3358 13.25 15.75C13.25 16.1642 13.5858 16.5 14 16.5H18C18.4142 16.5 18.75 16.1642 18.75 15.75C18.75 15.3358 18.4142 15 18 15H14Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'wi-fi-router',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M18 11.75C19.8856 11.75 20.8283 11.7502 21.4141 12.3359C21.9998 12.9217 22 13.8644 22 15.75C22 17.6356 21.9998 18.5783 21.4141 19.1641C20.8283 19.7498 19.8856 19.75 18 19.75H6C4.11438 19.75 3.17172 19.7498 2.58594 19.1641C2.00015 18.5783 2 17.6356 2 15.75C2 13.8644 2.00015 12.9217 2.58594 12.3359C3.17172 11.7502 4.11438 11.75 6 11.75H18ZM6 14.75C5.44772 14.75 5 15.1977 5 15.75C5 16.3023 5.44772 16.75 6 16.75C6.55228 16.75 7 16.3023 7 15.75C7 15.1977 6.55228 14.75 6 14.75ZM9 14.75C8.44772 14.75 8 15.1977 8 15.75C8 16.3023 8.44772 16.75 9 16.75C9.55228 16.75 10 16.3023 10 15.75C10 15.1977 9.55228 14.75 9 14.75ZM14 15C13.5858 15 13.25 15.3358 13.25 15.75C13.25 16.1642 13.5858 16.5 14 16.5H18C18.4142 16.5 18.75 16.1642 18.75 15.75C18.75 15.3358 18.4142 15 18 15H14Z" fill="currentColor"/>
<path d="M12.084 6.75C12.6363 6.75 13.084 7.19772 13.084 7.75C13.084 8.30228 12.6363 8.75 12.084 8.75C11.5317 8.75 11.084 8.30228 11.084 7.75C11.084 7.19772 11.5317 6.75 12.084 6.75Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M2.62808 4.09863C2.98769 3.89319 3.44601 4.01835 3.65152 4.37793L7.65152 11.3779L7.85952 11.75H6.13687L2.34878 5.12207C2.14348 4.76247 2.26853 4.30409 2.62808 4.09863Z" fill="currentColor"/>
<path d="M20.3498 4.37793C20.5553 4.01863 21.0127 3.89351 21.3722 4.09863C21.7318 4.30413 21.857 4.76244 21.6515 5.12207L17.8644 11.75H16.1408L16.3498 11.3779L20.3498 4.37793Z" fill="currentColor"/>
<path d="M12.0851 4.5C13.7918 4.50018 15.23 5.64004 15.6847 7.19824C15.8006 7.59583 15.5725 8.01191 15.175 8.12793C14.7774 8.24392 14.3613 8.01575 14.2453 7.61816C13.9722 6.68253 13.1073 6.00018 12.0851 6C11.0628 6 10.197 6.68241 9.92398 7.61816C9.80791 8.01574 9.39189 8.24395 8.99429 8.12793C8.59679 8.01188 8.36863 7.59578 8.48452 7.19824C8.93926 5.63992 10.3783 4.5 12.0851 4.5Z" fill="currentColor"/>
<path d="M12.0841 2C14.6906 2.00006 16.9226 3.59574 17.8605 5.86035C18.0188 6.24299 17.8369 6.68139 17.4543 6.83984C17.0716 6.99815 16.6332 6.81621 16.4748 6.43359C15.7609 4.71013 14.0628 3.50006 12.0841 3.5C10.1054 3.5 8.40745 4.71014 7.69351 6.43359C7.53502 6.81629 7.09573 6.99833 6.71304 6.83984C6.33061 6.68126 6.14942 6.24291 6.30777 5.86035C7.24564 3.5957 9.4776 2 12.0841 2Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'wi-fi-router',
    style: SolarIconStyle.broken,
    body: r'''<path d="M7 11L3 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 11L21 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 15L18 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.1673 5.39702C16.3414 3.40286 14.3763 2 12.0836 2C9.79092 2 7.82586 3.40286 7 5.39702" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.9646 6.65811C14.6007 5.41107 13.4489 4.5 12.0844 4.5C10.7198 4.5 9.568 5.41107 9.2041 6.65811" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 19H6C4.11438 19 3.17157 19 2.58579 18.4142C2 17.8284 2 16.8856 2 15C2 13.1144 2 12.1716 2.58579 11.5858C3.17157 11 4.11438 11 6 11H18C19.8856 11 20.8284 11 21.4142 11.5858C22 12.1716 22 13.1144 22 15C22 16.8856 22 17.8284 21.4142 18.4142C20.8284 19 19.8856 19 18 19H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 7H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 15H9.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 15H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'wi-fi-router',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 15C2 13.1144 2 12.1716 2.58579 11.5858C3.17157 11 4.11438 11 6 11H18C19.8856 11 20.8284 11 21.4142 11.5858C22 12.1716 22 13.1144 22 15C22 16.8856 22 17.8284 21.4142 18.4142C20.8284 19 19.8856 19 18 19H6C4.11438 19 3.17157 19 2.58579 18.4142C2 17.8284 2 16.8856 2 15Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 11L3 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 11L21 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 15L18 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.1673 5.39702C16.3414 3.40286 14.3763 2 12.0836 2C9.79092 2 7.82586 3.40286 7 5.39702" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.9646 6.65811C14.6007 5.41107 13.4489 4.5 12.0844 4.5C10.7198 4.5 9.568 5.41107 9.2041 6.65811" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 7H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 15H9.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 15H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'wi-fi-router',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 15C2 13.1144 2 12.1716 2.58579 11.5858C3.17157 11 4.11438 11 6 11H18C19.8856 11 20.8284 11 21.4142 11.5858C22 12.1716 22 13.1144 22 15C22 16.8856 22 17.8284 21.4142 18.4142C20.8284 19 19.8856 19 18 19H6C4.11438 19 3.17157 19 2.58579 18.4142C2 17.8284 2 16.8856 2 15Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 11L3 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 11L21 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 7H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14 15L18 15" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M17.1673 5.39702C16.3414 3.40286 14.3763 2 12.0836 2C9.79092 2 7.82586 3.40286 7 5.39702" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14.9646 6.65811C14.6007 5.41107 13.4489 4.5 12.0844 4.5C10.7198 4.5 9.568 5.41107 9.2041 6.65811" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M9 15H9.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M6 15H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'wi-fi-router',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M7.69293 5.68399C8.40677 3.96031 10.1047 2.75 12.0836 2.75C14.0625 2.75 15.7605 3.96031 16.4743 5.68399C16.6328 6.06668 17.0715 6.24844 17.4542 6.08995C17.8369 5.93146 18.0187 5.49275 17.8602 5.11005C16.9223 2.8454 14.6902 1.25 12.0836 1.25C9.4771 1.25 7.24495 2.8454 6.30707 5.11005C6.14859 5.49275 6.33034 5.93146 6.71304 6.08995C7.09573 6.24844 7.53444 6.06668 7.69293 5.68399Z" fill="currentColor"/>
<path d="M7 15C7 15.5523 6.55229 16 6 16C5.44772 16 5 15.5523 5 15C5 14.4477 5.44772 14 6 14C6.55229 14 7 14.4477 7 15Z" fill="currentColor"/>
<path d="M10 15C10 15.5523 9.55229 16 9 16C8.44772 16 8 15.5523 8 15C8 14.4477 8.44772 14 9 14C9.55229 14 10 14.4477 10 15Z" fill="currentColor"/>
<path d="M13.25 15C13.25 14.5858 13.5858 14.25 14 14.25H18C18.4142 14.25 18.75 14.5858 18.75 15C18.75 15.4142 18.4142 15.75 18 15.75H14C13.5858 15.75 13.25 15.4142 13.25 15Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M2.6279 3.34882C2.98754 3.14331 3.44568 3.26826 3.65119 3.6279L7.43525 10.25H16.5648L20.3488 3.6279C20.5543 3.26826 21.0125 3.14331 21.3721 3.34882C21.7317 3.55433 21.8567 4.01247 21.6512 4.3721L18.2924 10.2501C19.0849 10.2506 19.7536 10.2572 20.2945 10.3299C20.9223 10.4143 21.4891 10.6 21.9445 11.0555C22.4 11.5109 22.5857 12.0777 22.6701 12.7055C22.7501 13.3003 22.75 14.0495 22.75 14.948V15.052C22.75 15.9505 22.7501 16.6997 22.6701 17.2945C22.5857 17.9223 22.4 18.4891 21.9445 18.9445C21.4891 19.4 20.9223 19.5857 20.2945 19.6701C19.6998 19.7501 18.9506 19.75 18.0522 19.75H5.94801C5.04962 19.75 4.30026 19.7501 3.70552 19.6701C3.07773 19.5857 2.51093 19.4 2.05546 18.9445C1.59999 18.4891 1.41432 17.9223 1.32991 17.2945C1.24995 16.6997 1.24997 15.9505 1.25 15.052V14.948C1.24997 14.0495 1.24995 13.3003 1.32991 12.7055C1.41432 12.0777 1.59999 11.5109 2.05546 11.0555C2.51093 10.6 3.07773 10.4143 3.70552 10.3299C4.24646 10.2572 4.91513 10.2506 5.70765 10.2501L2.34882 4.3721C2.14331 4.01247 2.26826 3.55433 2.6279 3.34882ZM16.9854 11.75C16.9947 11.7502 17.0039 11.7502 17.0132 11.75H18C18.964 11.75 19.6116 11.7516 20.0946 11.8165C20.5561 11.8786 20.7536 11.9858 20.8839 12.1161C21.0142 12.2464 21.1214 12.4439 21.1835 12.9054C21.2484 13.3884 21.25 14.036 21.25 15C21.25 15.964 21.2484 16.6116 21.1835 17.0946C21.1214 17.5561 21.0142 17.7536 20.8839 17.8839C20.7536 18.0142 20.5561 18.1214 20.0946 18.1835C19.6116 18.2484 18.964 18.25 18 18.25H6C5.03599 18.25 4.38843 18.2484 3.9054 18.1835C3.44393 18.1214 3.24644 18.0142 3.11612 17.8839C2.9858 17.7536 2.87858 17.5561 2.81654 17.0946C2.7516 16.6116 2.75 15.964 2.75 15C2.75 14.036 2.7516 13.3884 2.81654 12.9054C2.87858 12.4439 2.9858 12.2464 3.11612 12.1161C3.24644 11.9858 3.44393 11.8786 3.9054 11.8165C4.38843 11.7516 5.03599 11.75 6 11.75H6.98684C6.99607 11.7502 7.00531 11.7502 7.01456 11.75H16.9854Z" fill="currentColor"/>
<path d="M12.0844 5.25C11.062 5.25 10.1971 5.93244 9.92408 6.8682C9.80805 7.26583 9.39164 7.49411 8.99401 7.37808C8.59638 7.26205 8.3681 6.84564 8.48413 6.44801C8.93886 4.88969 10.3775 3.75 12.0844 3.75C13.7912 3.75 15.2299 4.88969 15.6846 6.44801C15.8006 6.84564 15.5723 7.26205 15.1747 7.37808C14.7771 7.49411 14.3607 7.26583 14.2447 6.8682C13.9716 5.93244 13.1067 5.25 12.0844 5.25Z" fill="currentColor"/>
<path d="M12.084 8C12.6363 8 13.084 7.55228 13.084 7C13.084 6.44772 12.6363 6 12.084 6C11.5317 6 11.084 6.44772 11.084 7C11.084 7.55228 11.5317 8 12.084 8Z" fill="currentColor"/>''',
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
