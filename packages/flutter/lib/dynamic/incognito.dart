// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `incognito` icon in every style.
///
/// Prefer the static widgets (e.g. `IncognitoLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class IncognitoIcon extends StatelessWidget {
  /// Creates the `incognito` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const IncognitoIcon({
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
    name: 'incognito',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.6138 8.54479L4.1875 10.25H2C1.58579 10.25 1.25 10.5858 1.25 11C1.25 11.4142 1.58579 11.75 2 11.75H22C22.4142 11.75 22.75 11.4142 22.75 11C22.75 10.5858 22.4142 10.25 22 10.25H19.8125L19.3862 8.54479C18.8405 6.36211 18.5677 5.27077 17.7539 4.63538C16.9401 4 15.8152 4 13.5653 4H10.4347C8.1848 4 7.05988 4 6.24609 4.63538C5.43231 5.27077 5.15947 6.36211 4.6138 8.54479ZM6.5 21C8.12316 21 9.48826 19.8951 9.88417 18.3963L10.9938 17.8415C11.6272 17.5248 12.3728 17.5248 13.0062 17.8415L14.1158 18.3963C14.5117 19.8951 15.8768 21 17.5 21C19.433 21 21 19.433 21 17.5C21 15.567 19.433 14 17.5 14C15.8399 14 14.4498 15.1558 14.0903 16.7065L13.6771 16.4999C12.6213 15.972 11.3787 15.972 10.3229 16.4999L9.90967 16.7065C9.55023 15.1558 8.16009 14 6.5 14C4.567 14 3 15.567 3 17.5C3 19.433 4.567 21 6.5 21Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'incognito',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M6.5 13C8.433 13 10 14.567 10 16.5C10 18.433 8.433 20 6.5 20C4.567 20 3 18.433 3 16.5C3 14.567 4.567 13 6.5 13Z" fill="currentColor"/>
<path d="M17.5 13C19.433 13 21 14.567 21 16.5C21 18.433 19.433 20 17.5 20C15.567 20 14 18.433 14 16.5C14 14.567 15.567 13 17.5 13Z" fill="currentColor"/>
<path d="M22 9.25C22.4142 9.25 22.75 9.58579 22.75 10C22.75 10.4142 22.4142 10.75 22 10.75H2C1.58579 10.75 1.25 10.4142 1.25 10C1.25 9.58579 1.58579 9.25 2 9.25H22Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M10.3232 15.5C11.3789 14.9723 12.6211 14.9723 13.6768 15.5L14.0898 15.7061C14.0307 15.961 14 16.227 14 16.5C14 16.8098 14.0397 17.1105 14.1152 17.3965L13.0059 16.8418C12.3725 16.5252 11.6275 16.5252 10.9941 16.8418L9.88379 17.3965C9.95939 17.1104 10 16.8099 10 16.5C10 16.2272 9.96821 15.9618 9.90918 15.707L10.3232 15.5Z" fill="currentColor"/>
<path d="M13.5654 3C15.8152 3 16.9401 3.00037 17.7539 3.63574C18.5676 4.27115 18.8401 5.3624 19.3857 7.54492L19.8125 9.25H4.1875L4.61426 7.54492C5.15989 5.3624 5.43244 4.27115 6.24609 3.63574C7.05987 3.00037 8.18477 3 10.4346 3H13.5654Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'incognito',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21 17.5C21 19.433 19.433 21 17.5 21C15.567 21 14 19.433 14 17.5C14 15.567 15.567 14 17.5 14C19.433 14 21 15.567 21 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11H14M22 11H18" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 11L4.6138 8.54479C5.15947 6.36211 5.43231 5.27077 6.24609 4.63538C7.0057 4.0423 8.03639 4.00282 10 4.00019M20 11L19.3862 8.54479C18.8405 6.36211 18.5677 5.27077 17.7539 4.63538C16.9943 4.0423 15.9636 4.00282 14 4.00019" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 17.5C10 19.433 8.433 21 6.5 21C4.567 21 3 19.433 3 17.5C3 15.567 4.567 14 6.5 14C8.433 14 10 15.567 10 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 17.4999L10.6584 17.1707C11.5029 16.7484 12.4971 16.7484 13.3416 17.1707L14 17.4999" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'incognito',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M21 17.5C21 19.433 19.433 21 17.5 21C15.567 21 14 19.433 14 17.5C14 15.567 15.567 14 17.5 14C19.433 14 21 15.567 21 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 11L4.6138 8.54479C5.15947 6.36211 5.43231 5.27077 6.24609 4.63538C7.05988 4 8.1848 4 10.4347 4H13.5653C15.8152 4 16.9401 4 17.7539 4.63538C18.5677 5.27077 18.8405 6.36211 19.3862 8.54479L20 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 17.5C10 19.433 8.433 21 6.5 21C4.567 21 3 19.433 3 17.5C3 15.567 4.567 14 6.5 14C8.433 14 10 15.567 10 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 17.4999L10.6584 17.1707C11.5029 16.7484 12.4971 16.7484 13.3416 17.1707L14 17.4999" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'incognito',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21 17.5C21 19.433 19.433 21 17.5 21C15.567 21 14 19.433 14 17.5C14 15.567 15.567 14 17.5 14C19.433 14 21 15.567 21 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 17.5C10 19.433 8.433 21 6.5 21C4.567 21 3 19.433 3 17.5C3 15.567 4.567 14 6.5 14C8.433 14 10 15.567 10 17.5Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 11L4.6138 8.54479C5.15947 6.36211 5.43231 5.27077 6.24609 4.63538C7.05988 4 8.1848 4 10.4347 4H13.5653C15.8152 4 16.9401 4 17.7539 4.63538C18.5677 5.27077 18.8405 6.36211 19.3862 8.54479L20 11" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 17.4999L10.6584 17.1707C11.5029 16.7484 12.4971 16.7484 13.3416 17.1707L14 17.4999" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'incognito',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.3879 3.25H13.6121C14.6973 3.24998 15.5784 3.24997 16.2872 3.33473C17.0262 3.4231 17.6608 3.6112 18.2155 4.04423C18.7701 4.47727 19.1065 5.04733 19.3715 5.74284C19.6256 6.40994 19.8393 7.26472 20.1025 8.31749L20.5856 10.25H22C22.4142 10.25 22.75 10.5858 22.75 11C22.75 11.4142 22.4142 11.75 22 11.75H20.0157C20.0048 11.7502 19.994 11.7502 19.9832 11.75H4.01681C4.00601 11.7502 3.99518 11.7502 3.98432 11.75H2C1.58579 11.75 1.25 11.4142 1.25 11C1.25 10.5858 1.58579 10.25 2 10.25H3.41442L3.89754 8.31749C4.16072 7.26472 4.3744 6.40994 4.62854 5.74284C4.89351 5.04733 5.22991 4.47727 5.78453 4.04423C6.33916 3.6112 6.97379 3.4231 7.7128 3.33473C8.42162 3.24997 9.3027 3.24998 10.3879 3.25ZM4.96058 10.25H19.0394L18.6586 8.72669C18.3813 7.61763 18.1882 6.85038 17.9697 6.27686C17.7584 5.72218 17.5515 5.42889 17.2923 5.22654C17.0332 5.02419 16.6985 4.89459 16.1091 4.82412C15.4997 4.75125 14.7085 4.75 13.5653 4.75H10.4347C9.29147 4.75 8.50029 4.75125 7.8909 4.82412C7.30154 4.89459 6.96681 5.02419 6.70765 5.22654C6.44849 5.42889 6.24158 5.72218 6.03027 6.27686C5.81177 6.85038 5.61867 7.61763 5.34141 8.72669L4.96058 10.25ZM6.5 14.75C4.98122 14.75 3.75 15.9812 3.75 17.5C3.75 19.0188 4.98122 20.25 6.5 20.25C8.01878 20.25 9.25 19.0188 9.25 17.5C9.25 15.9812 8.01878 14.75 6.5 14.75ZM2.25 17.5C2.25 15.1528 4.15279 13.25 6.5 13.25C8.45789 13.25 10.1066 14.5739 10.5996 16.3754C11.4979 16.0137 12.5021 16.0137 13.4004 16.3754C13.8934 14.5739 15.5421 13.25 17.5 13.25C19.8472 13.25 21.75 15.1528 21.75 17.5C21.75 19.8472 19.8472 21.75 17.5 21.75C15.314 21.75 13.5134 20.0995 13.2764 17.9767L13.0062 17.8416C12.3728 17.5249 11.6272 17.5249 10.9938 17.8416L10.7236 17.9767C10.4866 20.0995 8.68604 21.75 6.5 21.75C4.15279 21.75 2.25 19.8472 2.25 17.5ZM17.5 14.75C15.9812 14.75 14.75 15.9812 14.75 17.5C14.75 19.0188 15.9812 20.25 17.5 20.25C19.0188 20.25 20.25 19.0188 20.25 17.5C20.25 15.9812 19.0188 14.75 17.5 14.75Z" fill="currentColor"/>''',
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
