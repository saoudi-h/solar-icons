// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `airbuds-left` icon in every style.
///
/// Prefer the static widgets (e.g. `AirbudsLeftLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class AirbudsLeftIcon extends StatelessWidget {
  /// Creates the `airbuds-left` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const AirbudsLeftIcon({
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
    name: 'airbuds-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M13.265 4.95082C13.1826 5.35675 13.4449 5.75263 13.8508 5.83503C15.5147 6.17279 16.8272 7.48526 17.165 9.1492C17.2474 9.55513 17.6432 9.81741 18.0492 9.73501C18.4551 9.65261 18.7174 9.25674 18.635 8.8508C18.1774 6.59648 16.4035 4.82261 14.1492 4.36501C13.7433 4.28261 13.3474 4.54488 13.265 4.95082Z" fill="currentColor"/>
<path d="M4.38235 22C3.06662 22 2 20.8807 2 19.5H6.76471C6.76471 20.8807 5.69809 22 4.38235 22Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11 7.88889V5.54167C11 5.34832 11 5.25148 10.9962 5.16977C10.916 3.45743 9.61116 2.08814 7.97939 2.00402C7.90151 2 7.80934 2 7.625 2C7.31777 2 7.16415 2 7.03435 2.00669C4.31474 2.1469 2.13998 4.42905 2.00638 7.28296C2 7.41917 2 7.58038 2 7.90278V17.8333H6.76471V12.3333C6.76471 11.7197 7.23876 11.2222 7.82353 11.2222C9.57785 11.2222 11 9.72984 11 7.88889ZM9.32353 5.125C9.32353 4.66476 8.98774 4.29167 8.57353 4.29167C8.15932 4.29167 7.82353 4.66476 7.82353 5.125V7.90278C7.82353 8.36302 8.15932 8.73611 8.57353 8.73611C8.98774 8.73611 9.32353 8.36302 9.32353 7.90278V5.125Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 22C13.4624 22 11 19.5376 11 16.5C11 13.4624 13.4624 11 16.5 11C19.5376 11 22 13.4624 22 16.5C22 19.5376 19.5376 22 16.5 22ZM15.25 13C15.6642 13 16 13.3358 16 13.75V18H18.25C18.6642 18 19 18.3358 19 18.75C19 19.1642 18.6642 19.5 18.25 19.5H15.25C14.8358 19.5 14.5 19.1642 14.5 18.75V13.75C14.5 13.3358 14.8358 13 15.25 13Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'airbuds-left',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M6.76465 19.5C6.76465 20.8806 5.69834 21.9997 4.38281 22C3.06708 22 2 20.8807 2 19.5H6.76465Z" fill="currentColor"/>
<path d="M15.25 13C15.6642 13 16 13.3358 16 13.75V18H18.25C18.6642 18 19 18.3358 19 18.75C19 19.1642 18.6642 19.5 18.25 19.5H15.25C14.8358 19.5 14.5 19.1642 14.5 18.75V13.75C14.5 13.3358 14.8358 13 15.25 13Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M7.97949 2.00391C9.61121 2.08808 10.9159 3.45761 10.9961 5.16992C10.9999 5.2516 11 5.34876 11 5.54199V7.88867C11 9.72962 9.57756 11.2227 7.82324 11.2227C7.23871 11.2228 6.76482 11.7196 6.76465 12.333V17.833H2V7.90234C2 7.58041 2.00047 7.41931 2.00684 7.2832C2.14044 4.42935 4.31465 2.14713 7.03418 2.00684C7.16399 2.00014 7.31777 2 7.625 2C7.80934 2 7.90161 1.99989 7.97949 2.00391ZM8.57324 4.29199C8.15916 4.29217 7.82324 4.66487 7.82324 5.125V7.90234C7.82324 8.36247 8.15916 8.73616 8.57324 8.73633C8.98746 8.73633 9.32324 8.36258 9.32324 7.90234V5.125C9.32324 4.66476 8.98746 4.29199 8.57324 4.29199Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M16.5 10.9995C19.5376 10.9995 22 13.462 22 16.4995C22 19.5371 19.5376 21.9995 16.5 21.9995C13.4624 21.9995 11 19.5371 11 16.4995C11 13.462 13.4624 10.9995 16.5 10.9995Z" fill="currentColor"/>
<path d="M13.2656 4.94972C13.3482 4.54404 13.7436 4.28239 14.1494 4.36476C16.4036 4.82242 18.1772 6.59586 18.6348 8.85012C18.7171 9.25587 18.4554 9.65127 18.0498 9.7339C17.644 9.81627 17.2476 9.55463 17.165 9.14894C16.8273 7.485 15.5145 6.17225 13.8506 5.83449C13.4448 5.75195 13.1832 5.35556 13.2656 4.94972Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'airbuds-left',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2.00295 13L2 18.6667V19.5C2 19.6393 2 19.7089 2.00295 19.7678C2.06342 20.973 3.02697 21.9366 4.23224 21.997C4.29108 22 4.36072 22 4.5 22C4.63928 22 4.70892 22 4.76776 21.997C5.97302 21.9366 6.93657 20.973 6.99705 19.7678C7 19.7089 7 19.6393 7 19.5V18.6667M2 18.6667H7M7 18.6667V12C7 11.4477 7.44771 11 8 11C9.65685 11 11 9.65685 11 8V5.375L11 5.33562C10.9905 3.49738 9.50262 2.00954 7.66438 2.00004L7.625 2L7.55936 2.00007C4.49563 2.01591 2.0159 4.49563 2.00007 7.55936L2 7.625L2 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 5V8" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 11C12.4624 11 10 13.4624 10 16.5C10 19.5376 12.4624 22 15.5 22C18.5376 22 21 19.5376 21 16.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 14V19H17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.0009 5.09961C15.96 5.49729 17.5032 7.04046 17.9009 8.99959" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'airbuds-left',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 18.6667V19.5C2 20.8807 3.11929 22 4.5 22C5.88071 22 7 20.8807 7 19.5V18.6667M2 18.6667V7.625L2.00007 7.55936C2.01591 4.49563 4.49563 2.01591 7.55936 2.00007L7.625 2L7.66438 2.00004C9.50262 2.00954 10.9905 3.49738 11 5.33562L11 5.375V8C11 9.65685 9.65685 11 8 11C7.44772 11 7 11.4477 7 12V18.6667M2 18.6667H7" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 5V8" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5.5" cy="5.5" r="5.5" transform="matrix(-1 0 0 1 21 11)" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 14V19H17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.0009 5.09961C15.96 5.49729 17.5032 7.04046 17.9009 8.99959" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'airbuds-left',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 18.6667V19.5C2 20.8807 3.11929 22 4.5 22C5.88071 22 7 20.8807 7 19.5V18.6667M2 18.6667V7.625L2.00007 7.55936C2.01591 4.49563 4.49563 2.01591 7.55936 2.00007L7.625 2L7.66438 2.00004C9.50262 2.00954 10.9905 3.49738 11 5.33562L11 5.375V8C11 9.65685 9.65685 11 8 11C7.44772 11 7 11.4477 7 12V18.6667M2 18.6667H7" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 14V19H17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M8 5V8" stroke="currentColor" stroke-linecap="round"/>

<circle opacity="0.5" cx="5.5" cy="5.5" r="5.5" transform="matrix(-1 0 0 1 21 11)" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14.0009 5.09961C15.96 5.49729 17.5032 7.04046 17.9009 8.99959" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'airbuds-left',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.62585 1.25L7.66826 1.25005C9.91768 1.26167 11.7383 3.08232 11.7499 5.33174L11.75 5.33476L11.75 5.37415L11.75 8C11.75 10.0711 10.0711 11.75 8 11.75C7.86193 11.75 7.75 11.8619 7.75 12V19.5C7.75 21.2949 6.29493 22.75 4.5 22.75C2.70507 22.75 1.25 21.2949 1.25 19.5L1.25008 7.55549C1.26803 4.08057 4.08057 1.26804 7.55548 1.25009L7.55851 1.25008L7.62585 1.25ZM7.56324 2.75007C7.56275 2.75007 7.56227 2.75007 7.56179 2.75007C4.91039 2.76455 2.76455 4.9104 2.75007 7.56179C2.75007 7.56227 2.75007 7.56275 2.75006 7.56324L2.75 7.625V17.9167H6.25V12C6.25 11.0335 7.0335 10.25 8 10.25C9.24264 10.25 10.25 9.24264 10.25 8L10.25 5.37586L10.25 5.33949C10.25 5.33909 10.25 5.33869 10.25 5.33828C10.2419 3.91226 9.08792 2.75817 7.66193 2.75004C7.66146 2.75004 7.66098 2.75004 7.66051 2.75004L7.62585 2.75H7.62415L7.56324 2.75007ZM6.25 19.4167H2.75V19.5C2.75 20.4665 3.5335 21.25 4.5 21.25C5.4665 21.25 6.25 20.4665 6.25 19.5V19.4167ZM8 4.25C8.41421 4.25 8.75 4.58579 8.75 5V8C8.75 8.41422 8.41421 8.75 8 8.75C7.58579 8.75 7.25 8.41422 7.25 8V5C7.25 4.58579 7.58579 4.25 8 4.25ZM13.2658 4.95082C13.3482 4.54489 13.7441 4.28261 14.15 4.36501C16.4043 4.82261 18.1782 6.59648 18.6358 8.8508C18.7182 9.25674 18.4559 9.65261 18.05 9.73501C17.6441 9.81741 17.2482 9.55514 17.1658 9.1492C16.828 7.48526 15.5156 6.17279 13.8516 5.83503C13.4457 5.75263 13.1834 5.35676 13.2658 4.95082ZM9.25 16.5C9.25 13.0482 12.0482 10.25 15.5 10.25C18.9518 10.25 21.75 13.0482 21.75 16.5C21.75 19.9518 18.9518 22.75 15.5 22.75C12.0482 22.75 9.25 19.9518 9.25 16.5ZM15.5 11.75C12.8766 11.75 10.75 13.8766 10.75 16.5C10.75 19.1234 12.8766 21.25 15.5 21.25C18.1234 21.25 20.25 19.1234 20.25 16.5C20.25 13.8766 18.1234 11.75 15.5 11.75ZM14 13.25C14.4142 13.25 14.75 13.5858 14.75 14V18.25H17C17.4142 18.25 17.75 18.5858 17.75 19C17.75 19.4142 17.4142 19.75 17 19.75H14C13.5858 19.75 13.25 19.4142 13.25 19V14C13.25 13.5858 13.5858 13.25 14 13.25Z" fill="currentColor"/>''',
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
