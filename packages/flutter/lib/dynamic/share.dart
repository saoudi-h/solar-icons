// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `share` icon in every style.
///
/// Prefer the static widgets (e.g. `ShareLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ShareIcon extends StatelessWidget {
  /// Creates the `share` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ShareIcon({
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
    name: 'share',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17 2.25C18.7949 2.25 20.25 3.70507 20.25 5.5C20.25 7.29493 18.7949 8.75 17 8.75C16.1304 8.75 15.343 8.40587 14.7598 7.84961C13.1933 8.8679 11.6271 9.88698 10.0605 10.9053C10.1829 11.2474 10.25 11.6158 10.25 12C10.25 12.3843 10.182 12.7525 10.0596 13.0947C11.6262 14.1131 13.1931 15.1311 14.7598 16.1494C15.343 15.5934 16.1306 15.25 17 15.25C18.7949 15.25 20.25 16.7051 20.25 18.5C20.25 20.2949 18.7949 21.75 17 21.75C15.2051 21.75 13.75 20.2949 13.75 18.5C13.75 18.1158 13.8171 17.7474 13.9395 17.4053C12.3728 16.387 10.8059 15.3688 9.23926 14.3506C8.65611 14.9063 7.86912 15.25 7 15.25C5.20507 15.25 3.75 13.7949 3.75 12C3.75 10.2051 5.20507 8.75 7 8.75C7.86887 8.75 8.65616 9.09301 9.23926 9.64844C10.8059 8.63012 12.3728 7.61206 13.9395 6.59375C13.8173 6.25189 13.75 5.88385 13.75 5.5C13.75 3.70507 15.2051 2.25 17 2.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'share',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17 15.25C18.7949 15.25 20.25 16.7051 20.25 18.5C20.25 20.2949 18.7949 21.75 17 21.75C15.2051 21.75 13.75 20.2949 13.75 18.5C13.75 16.7051 15.2051 15.25 17 15.25Z" fill="currentColor"/>
<path d="M7 8.75C8.79493 8.75 10.25 10.2051 10.25 12C10.25 13.7949 8.79493 15.25 7 15.25C5.20507 15.25 3.75 13.7949 3.75 12C3.75 10.2051 5.20507 8.75 7 8.75Z" fill="currentColor"/>
<path d="M17 2.25C18.7949 2.25 20.25 3.70507 20.25 5.5C20.25 7.29493 18.7949 8.75 17 8.75C15.2051 8.75 13.75 7.29493 13.75 5.5C13.75 3.70507 15.2051 2.25 17 2.25Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M8.468 12.9538C8.69381 12.6067 9.15889 12.5084 9.50609 12.7341C11.4417 13.9922 13.3772 15.2504 15.3127 16.5085C15.66 16.7342 15.7582 17.1993 15.5325 17.5466C15.3066 17.8936 14.8425 17.992 14.4953 17.7663C12.5596 16.5081 10.6234 15.2501 8.68773 13.9919C8.34066 13.7661 8.24232 13.301 8.468 12.9538Z" fill="currentColor"/>
<path d="M8.46765 11.046C8.24214 10.6988 8.34108 10.2338 8.68828 10.0081C10.6239 8.75003 12.5595 7.49199 14.495 6.23388C14.8423 6.00814 15.3072 6.10723 15.5329 6.45452C15.7584 6.80178 15.6599 7.26586 15.3127 7.49152C13.377 8.74972 11.4412 10.0085 9.50554 11.2667C9.15827 11.4922 8.69333 11.3932 8.46765 11.046Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'share',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4.5 12C4.5 13.3807 5.61929 14.5 7 14.5C8.38071 14.5 9.5 13.3807 9.5 12C9.5 10.6193 8.38071 9.5 7 9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 21C18.3807 21 19.5 19.8807 19.5 18.5C19.5 17.1193 18.3807 16 17 16C15.6193 16 14.5 17.1193 14.5 18.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.1655 6.75042C18.4751 7.94615 16.9461 8.35584 15.7504 7.66548C14.5547 6.97513 14.145 5.44615 14.8354 4.25042C15.5257 3.05469 17.0547 2.645 18.2504 3.33535" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.09644 13.3628C11.0322 14.621 12.9679 15.8792 14.9036 17.1374" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.09644 10.6372C11.0322 9.379 12.9679 8.12079 14.9036 6.86258" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'share',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19.5 5.5C19.5 6.88071 18.3807 8 17 8C15.6193 8 14.5 6.88071 14.5 5.5C14.5 4.11929 15.6193 3 17 3C18.3807 3 19.5 4.11929 19.5 5.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 16C15.6193 16 14.5 17.1193 14.5 18.5C14.5 19.8807 15.6193 21 17 21C18.3807 21 19.5 19.8807 19.5 18.5C19.5 17.1193 18.3807 16 17 16Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 9.5C5.61929 9.5 4.5 10.6193 4.5 12C4.5 13.3807 5.61929 14.5 7 14.5C8.38071 14.5 9.5 13.3807 9.5 12C9.5 10.6193 8.38071 9.5 7 9.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.09668 13.3628C11.0324 14.621 12.9681 15.8792 14.9038 17.1374" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.09668 10.6372C11.0324 9.379 12.9681 8.12079 14.9039 6.86258" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'share',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M19.5 5.5C19.5 6.88071 18.3807 8 17 8C15.6193 8 14.5 6.88071 14.5 5.5C14.5 4.11929 15.6193 3 17 3C18.3807 3 19.5 4.11929 19.5 5.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 16C15.6193 16 14.5 17.1193 14.5 18.5C14.5 19.8807 15.6193 21 17 21C18.3807 21 19.5 19.8807 19.5 18.5C19.5 17.1193 18.3807 16 17 16Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 9.5C5.61929 9.5 4.5 10.6193 4.5 12C4.5 13.3807 5.61929 14.5 7 14.5C8.38071 14.5 9.5 13.3807 9.5 12C9.5 10.6193 8.38071 9.5 7 9.5Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.09644 13.3628C11.0322 14.621 12.9679 15.8792 14.9036 17.1374" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M9.09644 10.6372C11.0322 9.379 12.9679 8.12079 14.9036 6.86258" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'share',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17 2.25C18.7949 2.25 20.25 3.70507 20.25 5.5C20.25 7.29493 18.7949 8.75 17 8.75C16.1304 8.75 15.343 8.40587 14.7598 7.84961C13.193 8.86805 11.6263 9.88683 10.0596 10.9053C10.182 11.2475 10.25 11.6157 10.25 12C10.25 12.3843 10.182 12.7525 10.0596 13.0947C11.6262 14.1131 13.1931 15.1311 14.7598 16.1494C15.343 15.5934 16.1306 15.25 17 15.25C18.7949 15.25 20.25 16.7051 20.25 18.5C20.25 20.2949 18.7949 21.75 17 21.75C15.2051 21.75 13.75 20.2949 13.75 18.5C13.75 18.1158 13.8171 17.7474 13.9395 17.4053C12.3728 16.387 10.8059 15.3688 9.23926 14.3506C8.65611 14.9063 7.86912 15.25 7 15.25C5.20507 15.25 3.75 13.7949 3.75 12C3.75 10.2051 5.20507 8.75 7 8.75C7.86887 8.75 8.65616 9.09301 9.23926 9.64844C10.8059 8.63012 12.3728 7.61206 13.9395 6.59375C13.8173 6.25189 13.75 5.88385 13.75 5.5C13.75 3.70507 15.2051 2.25 17 2.25ZM17 16.75C16.0335 16.75 15.25 17.5335 15.25 18.5C15.25 19.4665 16.0335 20.25 17 20.25C17.9665 20.25 18.75 19.4665 18.75 18.5C18.75 17.5335 17.9665 16.75 17 16.75ZM7 10.25C6.0335 10.25 5.25 11.0335 5.25 12C5.25 12.9665 6.0335 13.75 7 13.75C7.9665 13.75 8.75 12.9665 8.75 12C8.75 11.0335 7.9665 10.25 7 10.25ZM17 3.75C16.0335 3.75 15.25 4.5335 15.25 5.5C15.25 6.4665 16.0335 7.25 17 7.25C17.9665 7.25 18.75 6.4665 18.75 5.5C18.75 4.5335 17.9665 3.75 17 3.75Z" fill="currentColor"/>''',
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
