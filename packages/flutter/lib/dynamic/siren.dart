// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `siren` icon in every style.
///
/// Prefer the static widgets (e.g. `SirenLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class SirenIcon extends StatelessWidget {
  /// Creates the `siren` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const SirenIcon({
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
    name: 'siren',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 8C14.8 8 16.2 8.00013 17.2695 8.54492C18.2103 9.02429 18.9757 9.78966 19.4551 10.7305C19.9999 11.8 20 13.2 20 16V21.25H22C22.4142 21.25 22.75 21.5858 22.75 22C22.75 22.4142 22.4142 22.75 22 22.75H2C1.58579 22.75 1.25 22.4142 1.25 22C1.25 21.5858 1.58579 21.25 2 21.25H4V16C4 13.2 4.00013 11.8 4.54492 10.7305C5.02429 9.78966 5.78966 9.02429 6.73047 8.54492C7.79998 8.00013 9.20005 8 12 8ZM12 16C11.1716 16 10.5 16.6716 10.5 17.5C10.5 18.0552 10.8016 18.5404 11.25 18.7998V21.25H12.75V18.7998C13.1984 18.5404 13.5 18.0552 13.5 17.5C13.5 16.6716 12.8284 16 12 16ZM15 10.0654C14.5858 10.0654 14.25 10.4012 14.25 10.8154C14.2503 11.2294 14.5859 11.5654 15 11.5654C15.842 11.5654 16.4636 12.2034 16.4355 12.9727C16.4204 13.3866 16.7443 13.7349 17.1582 13.75C17.5719 13.7648 17.9195 13.4411 17.9346 13.0273C17.9963 11.3367 16.618 10.0654 15 10.0654Z" fill="currentColor"/>
<path d="M2.46973 4.46973C2.76262 4.17683 3.23738 4.17683 3.53027 4.46973L5.03027 5.96973C5.32317 6.26262 5.32317 6.73738 5.03027 7.03027C4.73738 7.32317 4.26262 7.32317 3.96973 7.03027L2.46973 5.53027C2.17683 5.23738 2.17683 4.76262 2.46973 4.46973Z" fill="currentColor"/>
<path d="M20.4697 4.46973C20.7626 4.17683 21.2374 4.17683 21.5303 4.46973C21.8232 4.76262 21.8232 5.23738 21.5303 5.53027L20.0303 7.03027C19.7374 7.32317 19.2626 7.32317 18.9697 7.03027C18.6768 6.73738 18.6768 6.26262 18.9697 5.96973L20.4697 4.46973Z" fill="currentColor"/>
<path d="M12 1.25C12.4142 1.25 12.75 1.58579 12.75 2V5C12.75 5.41421 12.4142 5.75 12 5.75C11.5858 5.75 11.25 5.41421 11.25 5V2C11.25 1.58579 11.5858 1.25 12 1.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'siren',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 16C12.8284 16 13.5 16.6716 13.5 17.5C13.5 18.0552 13.1984 18.5404 12.75 18.7998V21.25H22C22.4142 21.25 22.75 21.5858 22.75 22C22.75 22.4142 22.4142 22.75 22 22.75H2C1.58579 22.75 1.25 22.4142 1.25 22C1.25 21.5858 1.58579 21.25 2 21.25H11.25V18.7998C10.8016 18.5404 10.5 18.0552 10.5 17.5C10.5 16.6716 11.1716 16 12 16Z" fill="currentColor"/>
<path d="M15 10.0654C16.618 10.0654 17.9963 11.3367 17.9346 13.0273C17.9195 13.4411 17.5719 13.7648 17.1582 13.75C16.7443 13.7349 16.4204 13.3866 16.4355 12.9727C16.4636 12.2034 15.842 11.5654 15 11.5654C14.5859 11.5654 14.2503 11.2294 14.25 10.8154C14.25 10.4012 14.5858 10.0654 15 10.0654Z" fill="currentColor"/>
<path d="M2.46973 4.46973C2.76262 4.17683 3.23738 4.17683 3.53027 4.46973L5.03027 5.96973C5.32317 6.26262 5.32317 6.73738 5.03027 7.03027C4.73738 7.32317 4.26262 7.32317 3.96973 7.03027L2.46973 5.53027C2.17683 5.23738 2.17683 4.76262 2.46973 4.46973Z" fill="currentColor"/>
<path d="M20.4697 4.46973C20.7626 4.17683 21.2374 4.17683 21.5303 4.46973C21.8232 4.76262 21.8232 5.23738 21.5303 5.53027L20.0303 7.03027C19.7374 7.32317 19.2626 7.32317 18.9697 7.03027C18.6768 6.73738 18.6768 6.26262 18.9697 5.96973L20.4697 4.46973Z" fill="currentColor"/>
<path d="M12 1.25C12.4142 1.25 12.75 1.58579 12.75 2V5C12.75 5.41421 12.4142 5.75 12 5.75C11.5858 5.75 11.25 5.41421 11.25 5V2C11.25 1.58579 11.5858 1.25 12 1.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 21.25V16C20 13.1997 20 11.7996 19.455 10.73C18.9757 9.78924 18.2108 9.02433 17.27 8.54497C16.2004 8 14.8003 8 12 8C9.19974 8 7.79961 8 6.73005 8.54497C5.78924 9.02433 5.02433 9.78924 4.54497 10.73C4 11.7996 4 13.1997 4 16V21.25H20Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'siren',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 22V16C20 13.1997 20 11.7996 19.455 10.73C18.9757 9.78924 18.2108 9.02433 17.27 8.54497C16.2004 8 14.8003 8 12 8C9.19974 8 7.79961 8 6.73005 8.54497C5.78924 9.02433 5.02433 9.78924 4.54497 10.73C4.35683 11.0993 4.23364 11.5079 4.15298 12M4 22V16" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 10.8149C16.23 10.8149 17.23 11.77 17.1851 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 22H14M22 22H18" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2V5" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 5L19.5 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 5L4.5 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 17.5C13.5 18.3284 12.8284 19 12 19C11.1716 19 10.5 18.3284 10.5 17.5C10.5 16.6716 11.1716 16 12 16C12.8284 16 13.5 16.6716 13.5 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19V22" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'siren',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20 22V16C20 13.1997 20 11.7996 19.455 10.73C18.9757 9.78924 18.2108 9.02433 17.27 8.54497C16.2004 8 14.8003 8 12 8C9.19974 8 7.79961 8 6.73005 8.54497C5.78924 9.02433 5.02433 9.78924 4.54497 10.73C4 11.7996 4 13.1997 4 16V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 10.8149C16.23 10.8149 17.23 11.77 17.1851 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 22H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2V5" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 5L19.5 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 5L4.5 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 17.5C13.5 18.3284 12.8284 19 12 19C11.1716 19 10.5 18.3284 10.5 17.5C10.5 16.6716 11.1716 16 12 16C12.8284 16 13.5 16.6716 13.5 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19V22" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'siren',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15 10.8149C16.23 10.8149 17.23 11.77 17.1851 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 22H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2V5" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 5L19.5 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 5L4.5 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 17.5C13.5 18.3284 12.8284 19 12 19C11.1716 19 10.5 18.3284 10.5 17.5C10.5 16.6716 11.1716 16 12 16C12.8284 16 13.5 16.6716 13.5 17.5Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 22V16C20 13.1997 20 11.7996 19.455 10.73C18.9757 9.78924 18.2108 9.02433 17.27 8.54497C16.2004 8 14.8003 8 12 8C9.19974 8 7.79961 8 6.73005 8.54497C5.78924 9.02433 5.02433 9.78924 4.54497 10.73C4 11.7996 4 13.1997 4 16V22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 19V22" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'siren',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.75 2C12.75 1.58579 12.4142 1.25 12 1.25C11.5858 1.25 11.25 1.58579 11.25 2V5C11.25 5.41421 11.5858 5.75 12 5.75C12.4142 5.75 12.75 5.41421 12.75 5V2Z" fill="currentColor"/>
<path d="M15 10.0649C14.5858 10.0649 14.25 10.4007 14.25 10.8149C14.25 11.2292 14.5858 11.5649 15 11.5649C15.842 11.5649 16.4637 12.2034 16.4356 12.9727C16.4205 13.3866 16.7438 13.7344 17.1577 13.7495C17.5717 13.7646 17.9195 13.4413 17.9346 13.0274C17.9963 11.3367 16.618 10.0649 15 10.0649Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9664 7.25C10.5947 7.25 9.51929 7.24999 8.65494 7.32061C7.77479 7.39252 7.04768 7.54138 6.38955 7.87671C5.30762 8.42798 4.42798 9.30762 3.87671 10.3896C3.54138 11.0477 3.39252 11.7748 3.32061 12.6549C3.24999 13.5193 3.25 14.5947 3.25 15.9664L3.25 21.25H2C1.58579 21.25 1.25 21.5858 1.25 22C1.25 22.4142 1.58579 22.75 2 22.75H22C22.4142 22.75 22.75 22.4142 22.75 22C22.75 21.5858 22.4142 21.25 22 21.25H20.75V15.9664C20.75 14.5949 20.75 13.5192 20.6794 12.6549C20.6075 11.7748 20.4586 11.0477 20.1233 10.3896C19.572 9.30762 18.6924 8.42798 17.6104 7.87671C16.9523 7.54138 16.2252 7.39252 15.3451 7.32061C14.4807 7.24999 13.4053 7.25 12.0336 7.25H11.9664ZM12.75 21.25H19.25V16C19.25 14.5875 19.2494 13.5732 19.1844 12.7771C19.12 11.9897 18.9964 11.482 18.7868 11.0705C18.3793 10.2709 17.7291 9.62068 16.9295 9.21322C16.518 9.00359 16.0103 8.87996 15.2229 8.81563C14.4268 8.75058 13.4125 8.75 12 8.75C10.5875 8.75 9.57322 8.75058 8.77708 8.81563C7.9897 8.87996 7.48197 9.00359 7.07054 9.21322C6.27085 9.62068 5.62068 10.2709 5.21322 11.0705C5.00359 11.482 4.87996 11.9897 4.81563 12.7771C4.75058 13.5732 4.75 14.5875 4.75 16V21.25H11.25V19.622C10.3761 19.3131 9.75 18.4797 9.75 17.5C9.75 16.2574 10.7574 15.25 12 15.25C13.2426 15.25 14.25 16.2574 14.25 17.5C14.25 18.4797 13.6239 19.3131 12.75 19.622V21.25ZM12 18.25C12.4142 18.25 12.75 17.9142 12.75 17.5C12.75 17.0858 12.4142 16.75 12 16.75C11.5858 16.75 11.25 17.0858 11.25 17.5C11.25 17.9142 11.5858 18.25 12 18.25Z" fill="currentColor"/>
<path d="M21.5303 5.53033L20.0303 7.03033C19.7374 7.32322 19.2626 7.32322 18.9697 7.03033C18.6768 6.73744 18.6768 6.26256 18.9697 5.96967L20.4697 4.46967C20.7626 4.17678 21.2374 4.17678 21.5303 4.46967C21.8232 4.76256 21.8232 5.23744 21.5303 5.53033Z" fill="currentColor"/>
<path d="M3.53033 4.46967C3.23744 4.17678 2.76256 4.17678 2.46967 4.46967C2.17678 4.76256 2.17678 5.23744 2.46967 5.53033L3.96967 7.03033C4.26256 7.32322 4.73744 7.32322 5.03033 7.03033C5.32322 6.73744 5.32322 6.26256 5.03033 5.96967L3.53033 4.46967Z" fill="currentColor"/>''',
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
