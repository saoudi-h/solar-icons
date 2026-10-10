// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cash-out` icon in every style.
///
/// Prefer the static widgets (e.g. `CashOutLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class CashOutIcon extends StatelessWidget {
  /// Creates the `cash-out` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const CashOutIcon({
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
    name: 'cash-out',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.25 6.5H9C7.11438 6.5 6.17157 6.5 5.58579 7.08579C5 7.67157 5 8.61438 5 10.5L5.00005 16.75H18.9999L19 10.5C19 8.61438 19 7.67157 18.4142 7.08579C17.8284 6.5 16.8856 6.5 15 6.5H12.75V11.4726L13.4306 10.6786C13.7001 10.3641 14.1736 10.3277 14.4881 10.5972C14.8026 10.8668 14.839 11.3403 14.5695 11.6548L12.5695 13.9881C12.427 14.1543 12.219 14.25 12 14.25C11.7811 14.25 11.5731 14.1543 11.4306 13.9881L9.43057 11.6548C9.161 11.3403 9.19743 10.8668 9.51192 10.5972C9.82641 10.3277 10.2999 10.3641 10.5695 10.6786L11.25 11.4726V6.5Z" fill="currentColor"/>
<path d="M5.0306 18.25H18.9694C18.9181 19.0406 18.781 19.5474 18.4142 19.9142C17.8284 20.5 16.8856 20.5 15 20.5H9C7.11438 20.5 6.17157 20.5 5.58579 19.9142C5.21898 19.5474 5.08186 19.0406 5.0306 18.25Z" fill="currentColor"/>
<path d="M5.88889 3.5H18.1111C20.2589 3.5 22 5.29998 22 7.52036C22 8.80971 21.4129 9.95731 20.5 10.693L20.5 10.4105C20.5001 9.5449 20.5002 8.75122 20.4134 8.1056C20.3178 7.39464 20.0929 6.64319 19.4748 6.02514C18.8568 5.40709 18.1054 5.1822 17.3944 5.08661C16.7488 4.99981 15.9551 4.9999 15.0895 5.00001H8.91048C8.04485 4.9999 7.25118 4.99981 6.60556 5.08661C5.8946 5.1822 5.14315 5.40709 4.5251 6.02514C3.90706 6.64319 3.68216 7.39464 3.58657 8.1056C3.49977 8.75122 3.49987 9.54488 3.49997 10.4105L3.49998 10.693C2.58709 9.95727 2 8.80969 2 7.52036C2 5.29998 3.74112 3.5 5.88889 3.5Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'cash-out',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.25 6.5H9C7.11438 6.5 6.17157 6.5 5.58579 7.08579C5 7.67157 5 8.61438 5 10.5V16.5C5 16.8677 5 17.1996 5.00435 17.5H18.9957C19 17.1996 19 16.8677 19 16.5V10.5C19 8.61438 19 7.67157 18.4142 7.08579C17.8284 6.5 16.8856 6.5 15 6.5H12.75V11.4726L13.4306 10.6786C13.7001 10.3641 14.1736 10.3277 14.4881 10.5972C14.8026 10.8668 14.839 11.3403 14.5694 11.6548L12.5694 13.9881C12.427 14.1543 12.2189 14.25 12 14.25C11.7811 14.25 11.573 14.1543 11.4306 13.9881L9.43056 11.6548C9.16099 11.3403 9.19741 10.8668 9.51191 10.5972C9.8264 10.3277 10.2999 10.3641 10.5694 10.6786L11.25 11.4726V6.5Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M18.9951 17.5C18.9772 18.7396 18.8854 19.4425 18.4141 19.9141C17.8283 20.4998 16.8853 20.5 15 20.5H9C7.11438 20.5 6.17075 20.4998 5.58496 19.9141C5.11365 19.4425 5.02184 18.7395 5.00391 17.5H18.9951Z" fill="currentColor"/>
<path d="M18.1113 3.5C20.259 3.50012 22 5.3002 22 7.52051C21.9999 9.42466 20.7194 11.0199 19 11.4355V10.5C19 8.61438 18.9998 7.67172 18.4141 7.08594C17.8283 6.50015 16.8856 6.5 15 6.5H9C7.11438 6.5 6.17172 6.50015 5.58594 7.08594C5.00015 7.67172 5 8.61438 5 10.5V11.4355C3.28062 11.0199 2.00007 9.42466 2 7.52051C2 5.3002 3.741 3.50012 5.88867 3.5H18.1113Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'cash-out',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5.88889 3.5C3.74111 3.5 2 5.29998 2 7.52036C2 9.42457 3.28058 11.0196 5 11.4352" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 11.4352C20.7194 11.0196 22 9.42457 22 7.52036C22 5.29998 20.2589 3.5 18.1111 3.5H10.0049" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6.5V13.5M10 11.1667L12 13.5L14 11.1667" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 10.5C5 8.61438 5 7.67157 5.58579 7.08579C6.17157 6.5 7.11438 6.5 9 6.5H15C16.8856 6.5 17.8284 6.5 18.4142 7.08579C19 7.67157 19 8.61438 19 10.5V16.5C19 18.3856 19 19.3284 18.4142 19.9142C17.8284 20.5 16.8856 20.5 15 20.5H9C7.11438 20.5 6.17157 20.5 5.58579 19.9142C5 19.3284 5 18.3856 5 16.5V10.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 17.5H13.0047" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17.011 17.5H19.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'cash-out',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M5 11.4352C3.28058 11.0196 2 9.42457 2 7.52036C2 5.29998 3.74111 3.5 5.88889 3.5H18.1111C20.2589 3.5 22 5.29998 22 7.52036C22 9.42457 20.7194 11.0196 19 11.4352" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6.5V13.5M10 11.1667L12 13.5L14 11.1667" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 10.5C5 8.61438 5 7.67157 5.58579 7.08579C6.17157 6.5 7.11438 6.5 9 6.5H15C16.8856 6.5 17.8284 6.5 18.4142 7.08579C19 7.67157 19 8.61438 19 10.5V16.5C19 18.3856 19 19.3284 18.4142 19.9142C17.8284 20.5 16.8856 20.5 15 20.5H9C7.11438 20.5 6.17157 20.5 5.58579 19.9142C5 19.3284 5 18.3856 5 16.5V10.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 17.5H19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'cash-out',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 6.5V13.5M10 11.1667L12 13.5L14 11.1667" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 10.5C5 8.61438 5 7.67157 5.58579 7.08579C6.17157 6.5 7.11438 6.5 9 6.5H15C16.8856 6.5 17.8284 6.5 18.4142 7.08579C19 7.67157 19 8.61438 19 10.5V16.5C19 18.3856 19 19.3284 18.4142 19.9142C17.8284 20.5 16.8856 20.5 15 20.5H9C7.11438 20.5 6.17157 20.5 5.58579 19.9142C5 19.3284 5 18.3856 5 16.5V10.5Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M5 11.4352C3.28058 11.0196 2 9.42457 2 7.52036C2 5.29998 3.74111 3.5 5.88889 3.5H18.1111C20.2589 3.5 22 5.29998 22 7.52036C22 9.42457 20.7194 11.0196 19 11.4352" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5 17.5H19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'cash-out',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M18.1113 2.75C20.6965 2.75012 22.75 4.90968 22.75 7.52051C22.7499 9.54922 21.5138 11.2988 19.75 11.9834V16.5C19.75 16.825 19.7484 17.1308 19.7451 17.417C19.7481 17.4443 19.75 17.4719 19.75 17.5C19.75 17.5335 19.7464 17.5663 19.7422 17.5986C19.7341 18.049 19.7165 18.4484 19.6699 18.7949C19.5855 19.4225 19.3997 19.989 18.9443 20.4443C18.489 20.8997 17.9225 21.0855 17.2949 21.1699C16.6887 21.2514 15.9216 21.25 15 21.25H9C8.07839 21.25 7.3113 21.2514 6.70508 21.1699C6.07747 21.0855 5.51102 20.8997 5.05566 20.4443C4.6003 19.989 4.41451 19.4225 4.33008 18.7949C4.28349 18.4484 4.26494 18.049 4.25684 17.5986C4.25259 17.5663 4.25 17.5335 4.25 17.5C4.25 17.472 4.25091 17.4442 4.25391 17.417C4.25059 17.1308 4.25 16.825 4.25 16.5V11.9834C2.48624 11.2988 1.25006 9.54922 1.25 7.52051C1.25 4.90968 3.30348 2.75012 5.88867 2.75H18.1113ZM5.81641 18.5947C5.87845 19.0561 5.9859 19.2535 6.11621 19.3838C6.24652 19.5141 6.44388 19.6215 6.90527 19.6836C7.38831 19.7485 8.03599 19.75 9 19.75H15C15.964 19.75 16.6117 19.7485 17.0947 19.6836C17.5561 19.6215 17.7535 19.5141 17.8838 19.3838C18.0141 19.2535 18.1215 19.0561 18.1836 18.5947C18.1979 18.4884 18.208 18.3739 18.2168 18.25H5.7832C5.79202 18.3739 5.80211 18.4884 5.81641 18.5947ZM9 7.25C8.03599 7.25 7.38831 7.25146 6.90527 7.31641C6.44388 7.37845 6.24652 7.4859 6.11621 7.61621C5.9859 7.74652 5.87845 7.94388 5.81641 8.40527C5.75146 8.88831 5.75 9.53599 5.75 10.5V16.5C5.75 16.5858 5.75188 16.6691 5.75195 16.75H18.248C18.2481 16.6691 18.25 16.5858 18.25 16.5V10.5C18.25 9.53599 18.2485 8.88831 18.1836 8.40527C18.1215 7.94388 18.0141 7.74652 17.8838 7.61621C17.7535 7.4859 17.5561 7.37845 17.0947 7.31641C16.6117 7.25146 15.964 7.25 15 7.25H12.75V11.4727L13.4307 10.6787C13.7002 10.3642 14.1738 10.3281 14.4883 10.5977C14.8024 10.8672 14.8386 11.3399 14.5693 11.6543L12.5693 13.9883C12.4269 14.1544 12.2189 14.25 12 14.25C11.7811 14.25 11.5731 14.1544 11.4307 13.9883L9.43066 11.6543C9.16139 11.3399 9.19759 10.8672 9.51172 10.5977C9.82621 10.3281 10.2998 10.3642 10.5693 10.6787L11.25 11.4727V7.25H9ZM5.88867 4.25C4.17852 4.25012 2.75 5.69072 2.75 7.52051C2.75005 8.70915 3.35676 9.73582 4.25 10.3076C4.25018 9.47122 4.25431 8.76861 4.33008 8.20508C4.41451 7.57747 4.6003 7.01102 5.05566 6.55566C5.51102 6.1003 6.07747 5.91451 6.70508 5.83008C7.3113 5.74857 8.07839 5.75 9 5.75H15C15.9216 5.75 16.6887 5.74857 17.2949 5.83008C17.9225 5.91451 18.489 6.1003 18.9443 6.55566C19.3997 7.01102 19.5855 7.57747 19.6699 8.20508C19.7457 8.76861 19.7488 9.47122 19.749 10.3076C20.6426 9.7359 21.2499 8.70946 21.25 7.52051C21.25 5.69072 19.8215 4.25012 18.1113 4.25H5.88867Z" fill="currentColor"/>''',
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
