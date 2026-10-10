// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wireless-charge` icon in every style.
///
/// Prefer the static widgets (e.g. `WirelessChargeLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class WirelessChargeIcon extends StatelessWidget {
  /// Creates the `wireless-charge` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const WirelessChargeIcon({
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
    name: 'wireless-charge',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.0646 17.9997C16.4827 18.0354 20.0354 14.4827 19.9997 10.0646C19.9641 5.64642 16.3536 2.03592 11.9354 2.00027C7.51731 1.96461 3.96461 5.51731 4.00027 9.93545C4.03592 14.3536 7.64642 17.9641 12.0646 17.9997ZM13.3739 6.4569C13.6739 6.74256 13.6854 7.2173 13.3998 7.51724L11.7495 9.25H13.9995C14.2996 9.25 14.5707 9.4288 14.6889 9.70456C14.8071 9.98032 14.7495 10.3 14.5426 10.5172L11.6855 13.5172C11.3998 13.8172 10.9251 13.8288 10.6251 13.5431C10.3252 13.2574 10.3136 12.7827 10.5993 12.4828L12.2495 10.75H9.99953C9.69951 10.75 9.42836 10.5712 9.31017 10.2954C9.19199 10.0197 9.24952 9.70002 9.45643 9.48276L12.3136 6.48276C12.5992 6.18281 13.074 6.17123 13.3739 6.4569Z" fill="currentColor"/>
<path d="M11.1173 20.9242C11.1584 20.9412 11.2019 20.9544 11.25 20.9647V22C11.25 22.4142 11.5858 22.75 12 22.75C12.4142 22.75 12.75 22.4142 12.75 22V20.9647C12.7981 20.9544 12.8416 20.9412 12.8827 20.9242C13.1277 20.8227 13.3224 20.628 13.4239 20.383C13.5 20.1992 13.5 19.9663 13.5 19.5003V18.8964C13.0303 18.9685 12.5481 19.004 12.0565 19C11.526 18.9958 11.0059 18.9457 10.5 18.8535V19.5003C10.5 19.9663 10.5 20.1992 10.5761 20.383C10.6776 20.628 10.8723 20.8227 11.1173 20.9242Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'wireless-charge',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.5 18.8534C11.0059 18.9455 11.5262 18.9956 12.0567 18.9998C12.5483 19.0038 13.0304 18.9684 13.5 18.8963V19.4998C13.5 19.9657 13.4999 20.1989 13.4239 20.3827C13.3224 20.6276 13.1278 20.8222 12.8829 20.9237C12.8418 20.9407 12.7981 20.9544 12.75 20.9647V21.9998C12.75 22.4141 12.4143 22.7498 12 22.7498C11.5858 22.7498 11.25 22.4141 11.25 21.9998V20.9647C11.202 20.9544 11.1583 20.9407 11.1172 20.9237C10.8723 20.8222 10.6777 20.6276 10.5762 20.3827C10.5002 20.1989 10.5 19.9657 10.5 19.4998V18.8534Z" fill="currentColor"/>
<path d="M12.3145 6.48227C12.6002 6.18273 13.0742 6.17146 13.3741 6.45688C13.674 6.74254 13.6861 7.21748 13.4004 7.51742L11.75 9.24985H14C14.2999 9.24985 14.5712 9.42839 14.6895 9.70395C14.8077 9.97971 14.7499 10.3002 14.543 10.5174L11.6856 13.5174C11.3999 13.817 10.9258 13.8282 10.626 13.5428C10.3261 13.2572 10.314 12.7822 10.5997 12.4823L12.25 10.7498H10C9.70016 10.7498 9.42886 10.5713 9.3106 10.2957C9.19241 10.02 9.25017 9.69953 9.45708 9.48227L12.3145 6.48227Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.9997 10.0726C21.0398 15.043 17.043 19.0398 12.0726 18.9997C7.10223 18.9596 3.04041 14.8978 3.0003 9.92738C2.96019 4.95698 6.95698 0.96019 11.9274 1.0003C16.8978 1.04041 20.9596 5.10223 20.9997 10.0726Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'wireless-charge',
    style: SolarIconStyle.broken,
    body: r'''<path d="M12 21V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.8571 7L10 10H14L11.1429 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13.5 18V19.5C13.5 19.9659 13.5 20.1989 13.4239 20.3827C13.3224 20.6277 13.1277 20.8224 12.8827 20.9239C12.6989 21 12.4659 21 12 21C11.5341 21 11.3011 21 11.1173 20.9239C10.8723 20.8224 10.6776 20.6277 10.5761 20.3827C10.5 20.1989 10.5 19.9659 10.5 19.5V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.58152 7C4.20651 7.92643 4 8.9391 4 10C4 14.4183 7.58172 18 12 18C16.4183 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C10.9391 2 9.92643 2.20651 9 2.58152" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'wireless-charge',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12.0646 17.9997C16.4827 18.0354 20.0354 14.4827 19.9997 10.0646C19.9641 5.64642 16.3536 2.03592 11.9354 2.00027C7.51731 1.96461 3.96461 5.51731 4.00027 9.93545C4.03592 14.3536 7.64642 17.9641 12.0646 17.9997Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 21V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.8571 7L10 10H14L11.1429 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13.5 18V19.5C13.5 19.9659 13.5 20.1989 13.4239 20.3827C13.3224 20.6277 13.1277 20.8224 12.8827 20.9239C12.6989 21 12.4659 21 12 21C11.5341 21 11.3011 21 11.1173 20.9239C10.8723 20.8224 10.6776 20.6277 10.5761 20.3827C10.5 20.1989 10.5 19.9659 10.5 19.5V18" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'wireless-charge',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12.0646 17.9997C16.4827 18.0354 20.0354 14.4827 19.9997 10.0646C19.9641 5.64642 16.3536 2.03592 11.9354 2.00027C7.51731 1.96461 3.96461 5.51731 4.00027 9.93545C4.03592 14.3536 7.64642 17.9641 12.0646 17.9997Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.8571 7L10 10H14L11.1429 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M12 21V22M12 21C11.5341 21 11.3011 21 11.1173 20.9239C10.8723 20.8224 10.6776 20.6277 10.5761 20.3827C10.5 20.1989 10.5 19.9659 10.5 19.5V18M12 21C12.4659 21 12.6989 21 12.8827 20.9239C13.1277 20.8224 13.3224 20.6277 13.4239 20.3827C13.5 20.1989 13.5 19.9659 13.5 19.5V18" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'wireless-charge',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9294 2.75024C7.9302 2.71797 4.71797 5.9302 4.75024 9.92939C4.78259 13.938 8.06196 17.2174 12.0706 17.2498C16.0698 17.282 19.282 14.0698 19.2498 10.0706C19.2174 6.06196 15.938 2.78259 11.9294 2.75024ZM3.25029 9.9415C3.21126 5.10443 7.10443 1.21126 11.9415 1.25029C16.7691 1.28925 20.7108 5.23089 20.7497 10.0585C20.7826 14.1381 18.0185 17.5463 14.25 18.4902V19.5218C14.25 19.736 14.25 19.9329 14.2387 20.0982C14.2266 20.2759 14.199 20.4712 14.1168 20.6697C13.9392 21.0985 13.5985 21.4392 13.1697 21.6168C13.0263 21.6762 12.8846 21.7071 12.75 21.7242V22C12.75 22.4142 12.4142 22.75 12 22.75C11.5858 22.75 11.25 22.4142 11.25 22V21.7242C11.1154 21.7071 10.9737 21.6762 10.8303 21.6168C10.4015 21.4392 10.0608 21.0985 9.88321 20.6697C9.80099 20.4712 9.77338 20.2759 9.76126 20.0982C9.74998 19.9329 9.74999 19.736 9.75 19.5218L9.75 18.4239C6.03406 17.383 3.28281 13.9708 3.25029 9.9415ZM11.25 18.7064V19.5C11.25 19.7432 11.2504 19.8881 11.2578 19.9961C11.2623 20.0629 11.2684 20.0913 11.2703 20.0987C11.2956 20.1575 11.3425 20.2044 11.4013 20.2297C11.4087 20.2316 11.4371 20.2377 11.5039 20.2422C11.6119 20.2496 11.7568 20.25 12 20.25C12.2432 20.25 12.3881 20.2496 12.4961 20.2422C12.5629 20.2377 12.5913 20.2316 12.5987 20.2297C12.6575 20.2044 12.7044 20.1575 12.7297 20.0987C12.7316 20.0913 12.7377 20.0629 12.7422 19.9961C12.7496 19.8881 12.75 19.7432 12.75 19.5V18.7284C12.5219 18.7444 12.2913 18.7516 12.0585 18.7497C11.786 18.7475 11.5163 18.7329 11.25 18.7064ZM13.3741 6.4569C13.6741 6.74256 13.6856 7.21729 13.4 7.51724L11.7497 9.25H13.9997C14.2997 9.25 14.5709 9.4288 14.6891 9.70456C14.8073 9.98032 14.7497 10.3 14.5428 10.5172L11.6857 13.5172C11.4 13.8172 10.9253 13.8288 10.6253 13.5431C10.3254 13.2574 10.3138 12.7827 10.5995 12.4828L12.2497 10.75H9.99972C9.6997 10.75 9.42855 10.5712 9.31036 10.2954C9.19218 10.0197 9.24971 9.70002 9.45662 9.48276L12.3138 6.48276C12.5994 6.18281 13.0742 6.17123 13.3741 6.4569Z" fill="currentColor"/>''',
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
