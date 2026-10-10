// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `stopwatch-play` icon in every style.
///
/// Prefer the static widgets (e.g. `StopwatchPlayLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class StopwatchPlayIcon extends StatelessWidget {
  /// Creates the `stopwatch-play` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const StopwatchPlayIcon({
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
    name: 'stopwatch-play',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.25 2.75C9.25 2.33579 9.58579 2 10 2H14C14.4142 2 14.75 2.33579 14.75 2.75C14.75 3.16421 14.4142 3.5 14 3.5H10C9.58579 3.5 9.25 3.16421 9.25 2.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M21 13.75C21 18.7206 16.9706 22.75 12 22.75C7.02944 22.75 3 18.7206 3 13.75C3 8.77944 7.02944 4.75 12 4.75C16.9706 4.75 21 8.77944 21 13.75ZM13.0261 11.0249C12.7888 10.8583 12.5201 10.686 12.2419 10.5168C11.1695 9.86466 10.6333 9.53859 10.1524 9.8996C9.6715 10.2606 9.62779 11.0164 9.54038 12.5278C9.51566 12.9553 9.5 13.3743 9.5 13.75C9.5 14.1257 9.51566 14.5447 9.54038 14.9722C9.62779 16.4836 9.6715 17.2394 10.1524 17.6004C10.6333 17.9614 11.1695 17.6353 12.2419 16.9832C12.5201 16.814 12.7888 16.6417 13.0261 16.4751C13.2966 16.2852 13.5909 16.0573 13.8876 15.8152C14.9625 14.9383 15.5 14.4999 15.5 13.75C15.5 13.0001 14.9625 12.5617 13.8876 11.6848C13.5909 11.4427 13.2966 11.2148 13.0261 11.0249Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'stopwatch-play',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.1523 10.1494C10.6332 9.78846 11.1698 10.1145 12.2422 10.7666C12.5204 10.9358 12.7891 11.1088 13.0264 11.2754C13.2967 11.4652 13.5911 11.6926 13.8877 11.9346C14.9626 12.8114 15.5 13.2501 15.5 14C15.5 14.7499 14.9626 15.1886 13.8877 16.0654C13.5911 16.3074 13.2967 16.5348 13.0264 16.7246C12.7891 16.8912 12.5204 17.0642 12.2422 17.2334C11.1698 17.8855 10.6332 18.2115 10.1523 17.8506C9.67143 17.4896 9.62745 16.7332 9.54004 15.2217C9.51533 14.7944 9.5 14.3755 9.5 14C9.5 13.6245 9.51533 13.2056 9.54004 12.7783C9.62745 11.2668 9.67143 10.5104 10.1523 10.1494Z" fill="currentColor"/>
<path d="M14 2C14.4142 2 14.75 2.33579 14.75 2.75C14.75 3.16421 14.4142 3.5 14 3.5H10C9.58579 3.5 9.25 3.16421 9.25 2.75C9.25 2.33579 9.58579 2 10 2H14Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M12 23C16.9706 23 21 18.9706 21 14C21 9.02944 16.9706 5 12 5C7.02944 5 3 9.02944 3 14C3 18.9706 7.02944 23 12 23Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'stopwatch-play',
    style: SolarIconStyle.broken,
    body: r'''<path d="M10 2H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.8876 10.9348C14.9625 11.8117 15.5 12.2501 15.5 13C15.5 13.7499 14.9625 14.1883 13.8876 15.0652C13.5909 15.3073 13.2966 15.5352 13.0261 15.7251C12.7888 15.8917 12.5201 16.064 12.2419 16.2332C11.1695 16.8853 10.6333 17.2114 10.1524 16.8504C9.6715 16.4894 9.62779 15.7336 9.54038 14.2222C9.51566 13.7947 9.5 13.3757 9.5 13C9.5 12.6243 9.51566 12.2053 9.54038 11.7778C9.62779 10.2664 9.6715 9.51061 10.1524 9.1496C10.6333 8.78859 11.1695 9.11466 12.2419 9.76679C12.5201 9.93597 12.7888 10.1083 13.0261 10.2749C13.2966 10.4648 13.5909 10.6927 13.8876 10.9348Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.5 5.20404C8.82378 4.43827 10.3607 4 12 4C16.9706 4 21 8.02944 21 13C21 17.9706 16.9706 22 12 22C7.02944 22 3 17.9706 3 13C3 11.3607 3.43827 9.82378 4.20404 8.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'stopwatch-play',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="13" r="9" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 2H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.8876 10.9348C14.9625 11.8117 15.5 12.2501 15.5 13C15.5 13.7499 14.9625 14.1883 13.8876 15.0652C13.5909 15.3073 13.2966 15.5352 13.0261 15.7251C12.7888 15.8917 12.5201 16.064 12.2419 16.2332C11.1695 16.8853 10.6333 17.2114 10.1524 16.8504C9.6715 16.4894 9.62779 15.7336 9.54038 14.2222C9.51566 13.7947 9.5 13.3757 9.5 13C9.5 12.6243 9.51566 12.2053 9.54038 11.7778C9.62779 10.2664 9.6715 9.51061 10.1524 9.1496C10.6333 8.78859 11.1695 9.11466 12.2419 9.76679C12.5201 9.93597 12.7888 10.1083 13.0261 10.2749C13.2966 10.4648 13.5909 10.6927 13.8876 10.9348Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'stopwatch-play',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M10 2H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.8876 10.9348C14.9625 11.8117 15.5 12.2501 15.5 13C15.5 13.7499 14.9625 14.1883 13.8876 15.0652C13.5909 15.3073 13.2966 15.5352 13.0261 15.7251C12.7888 15.8917 12.5201 16.064 12.2419 16.2332C11.1695 16.8853 10.6333 17.2114 10.1524 16.8504C9.6715 16.4894 9.62779 15.7336 9.54038 14.2222C9.51566 13.7947 9.5 13.3757 9.5 13C9.5 12.6243 9.51566 12.2053 9.54038 11.7778C9.62779 10.2664 9.6715 9.51061 10.1524 9.1496C10.6333 8.78859 11.1695 9.11466 12.2419 9.76679C12.5201 9.93597 12.7888 10.1083 13.0261 10.2749C13.2966 10.4648 13.5909 10.6927 13.8876 10.9348Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="13" r="9" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'stopwatch-play',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.25 2C9.25 1.58579 9.58579 1.25 10 1.25H14C14.4142 1.25 14.75 1.58579 14.75 2C14.75 2.41421 14.4142 2.75 14 2.75H10C9.58579 2.75 9.25 2.41421 9.25 2ZM12 4.75C7.44365 4.75 3.75 8.44365 3.75 13C3.75 17.5564 7.44365 21.25 12 21.25C16.5563 21.25 20.25 17.5564 20.25 13C20.25 8.44365 16.5563 4.75 12 4.75ZM2.25 13C2.25 7.61522 6.61522 3.25 12 3.25C17.3848 3.25 21.75 7.61522 21.75 13C21.75 18.3848 17.3848 22.75 12 22.75C6.61522 22.75 2.25 18.3848 2.25 13ZM12.5727 9.09016C12.5923 9.10207 12.6119 9.11401 12.6316 9.12597C12.9188 9.30059 13.2022 9.48215 13.4571 9.66113C13.7473 9.86492 14.0567 10.1049 14.3617 10.3536C14.3771 10.3662 14.3925 10.3787 14.4078 10.3912C14.9056 10.7973 15.3532 11.1623 15.6659 11.5264C16.0204 11.9393 16.25 12.4034 16.25 13C16.25 13.5966 16.0204 14.0607 15.6659 14.4736C15.3532 14.8377 14.9057 15.2027 14.4078 15.6088L14.3617 15.6464C14.0567 15.8951 13.7473 16.1351 13.4571 16.3389C13.2022 16.5178 12.9188 16.6994 12.6316 16.874C12.6119 16.886 12.5923 16.8979 12.5727 16.9098C12.0879 17.2049 11.6298 17.4836 11.2289 17.6276C11.0061 17.7076 10.7505 17.7664 10.4754 17.7459C10.1864 17.7244 9.92767 17.6195 9.70216 17.4502C9.24308 17.1056 9.05869 16.6066 8.96253 16.1104C8.87092 15.6376 8.83573 15.0287 8.79462 14.3171L8.79163 14.2655C8.76641 13.8293 8.75 13.3949 8.75 13C8.75 12.6051 8.76641 12.1707 8.79163 11.7345L8.79462 11.6829C8.83573 10.9713 8.87092 10.3624 8.96253 9.88961C9.05869 9.39339 9.24308 8.89441 9.70216 8.54979C9.92767 8.3805 10.1864 8.27557 10.4754 8.25409C10.7505 8.23364 11.0061 8.29238 11.2289 8.37243C11.6298 8.51644 12.0879 8.79515 12.5727 9.09016ZM10.6004 9.75114C10.5758 9.76995 10.5007 9.83653 10.4351 10.175C10.365 10.5368 10.3341 11.0435 10.2891 11.8212C10.2649 12.2399 10.25 12.6436 10.25 13C10.25 13.3564 10.2649 13.7601 10.2891 14.1788C10.3341 14.9565 10.365 15.4632 10.4351 15.825C10.5007 16.1635 10.5758 16.2301 10.6004 16.2489C10.6192 16.2465 10.6575 16.239 10.7218 16.2159C10.9612 16.1299 11.2865 15.9364 11.8523 15.5924C12.1215 15.4287 12.3755 15.2655 12.5951 15.1113C12.8458 14.9353 13.125 14.7194 13.4135 14.484C13.9722 14.0283 14.3127 13.747 14.5279 13.4964C14.7108 13.2833 14.75 13.1532 14.75 13C14.75 12.8468 14.7108 12.7167 14.5279 12.5036C14.3127 12.253 13.9722 11.9717 13.4135 11.516C13.125 11.2806 12.8458 11.0647 12.5951 10.8887C12.3755 10.7345 12.1215 10.5713 11.8523 10.4076C11.2865 10.0636 10.9612 9.87009 10.7218 9.7841C10.6575 9.76101 10.6192 9.75355 10.6004 9.75114Z" fill="currentColor"/>''',
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
