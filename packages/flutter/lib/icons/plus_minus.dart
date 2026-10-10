// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `plus-minus` icon.
class PlusMinusIcon extends StatelessWidget {
  /// Creates the `plus-minus` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const PlusMinusIcon({
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

  /// When true, ignores [SolarTheme] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'plus-minus',
    style: SolarIconStyle.bold,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.866 22 5.54466 22 4.04833 21.0123L21.0123 4.04833C22 5.54466 22 7.866 22 12ZM18.75 17C18.75 17.4142 18.4142 17.75 18 17.75H13C12.5858 17.75 12.25 17.4142 12.25 17C12.25 16.5858 12.5858 16.25 13 16.25H18C18.4142 16.25 18.75 16.5858 18.75 17Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.134 2 18.4553 2.98767 19.9517L19.9517 2.98767C18.4553 2 16.134 2 12 2ZM8 4.74996C8.41421 4.74996 8.75 5.08575 8.75 5.49996L8.75 7.24998H10.5C10.9142 7.24998 11.25 7.58577 11.25 7.99998C11.25 8.41419 10.9142 8.74998 10.5 8.74998H8.75L8.75 10.5C8.75 10.9142 8.41421 11.25 8 11.25C7.58579 11.25 7.25 10.9142 7.25 10.5L7.25 8.74998H5.5C5.08579 8.74998 4.75 8.41419 4.75 7.99998C4.75 7.58577 5.08579 7.24998 5.5 7.24998H7.25V5.49996C7.25 5.08575 7.58579 4.74996 8 4.74996Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'plus-minus',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M20.5361 3.46436C22.0005 4.92879 22 7.28584 22 11.9995C22 16.7136 22.0006 19.0712 20.5361 20.5356C19.0717 22.0001 16.714 21.9995 12 21.9995C7.28633 21.9995 4.92928 22 3.46484 20.5356L20.5361 3.46436ZM13.001 16.2505C12.5868 16.2505 12.251 16.5863 12.251 17.0005C12.2512 17.4145 12.5869 17.7505 13.001 17.7505H18.001C18.4148 17.7502 18.7507 17.4143 18.751 17.0005C18.751 16.5864 18.415 16.2508 18.001 16.2505H13.001Z" fill="currentColor"/>
<path d="M8 4.75049C8.41421 4.75049 8.75 5.08627 8.75 5.50049V7.25049H10.5C10.9142 7.25049 11.25 7.58627 11.25 8.00049C11.2497 8.41449 10.9141 8.75049 10.5 8.75049H8.75V10.4995C8.75 10.9137 8.41421 11.2495 8 11.2495C7.58579 11.2495 7.25 10.9137 7.25 10.4995V8.75049H5.5C5.08594 8.75049 4.75025 8.41449 4.75 8.00049C4.75 7.58627 5.08579 7.25049 5.5 7.25049H7.25V5.50049C7.25 5.08627 7.58579 4.75049 8 4.75049Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2 12C2 16.714 2 19.0711 3.46447 20.5355L20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'plus-minus',
    style: SolarIconStyle.broken,
    body: r'''<path d="M3.46436 20.5354L20.5354 3.46436" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 17H13" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 8.00002H8M8 8.00002L5.5 8.00002M8 8.00002L8 5.5M8 8.00002L8 10.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C21.5093 4.43821 21.8356 5.80655 21.9449 8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'plus-minus',
    style: SolarIconStyle.linear,
    body: r'''<path d="M3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447M3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447M3.46447 20.5355L20.5355 3.46447" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 17H13" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 8.00002H8M8 8.00002L5.5 8.00002M8 8.00002L8 5.5M8 8.00002L8 10.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'plus-minus',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355M20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355M20.5355 3.46447L3.46447 20.5355" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<path opacity="0.5" d="M18 17H13" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10.5 8.00002H8M8 8.00002L5.5 8.00002M8 8.00002L8 5.5M8 8.00002L8 10.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'plus-minus',
    style: SolarIconStyle.outline,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9426 1.25H12.0574C14.3658 1.24999 16.1748 1.24998 17.5863 1.43975C19.031 1.63399 20.1711 2.03933 21.0659 2.93414C21.9607 3.82895 22.366 4.96897 22.5603 6.41371C22.75 7.82519 22.75 9.63423 22.75 11.9426V12.0574C22.75 14.3658 22.75 16.1748 22.5603 17.5863C22.366 19.031 21.9607 20.1711 21.0659 21.0659C20.1711 21.9607 19.031 22.366 17.5863 22.5603C16.1748 22.75 14.3658 22.75 12.0574 22.75H11.9426C9.63423 22.75 7.82519 22.75 6.41371 22.5603C4.96897 22.366 3.82895 21.9607 2.93414 21.0659C2.03933 20.1711 1.63399 19.031 1.43975 17.5863C1.24998 16.1748 1.24999 14.3658 1.25 12.0574V11.9426C1.24999 9.63423 1.24998 7.82519 1.43975 6.41371C1.63399 4.96897 2.03933 3.82895 2.93414 2.93414C3.82895 2.03933 4.96897 1.63399 6.41371 1.43975C7.82519 1.24998 9.63423 1.24999 11.9426 1.25ZM6.61358 2.92637C5.33517 3.09825 4.56445 3.42514 3.9948 3.9948C3.42514 4.56445 3.09825 5.33517 2.92637 6.61358C2.75159 7.91356 2.75 9.62177 2.75 12C2.75 14.3782 2.75159 16.0864 2.92637 17.3864C3.0449 18.268 3.23714 18.9082 3.53188 19.4075L19.4075 3.53188C18.9082 3.23714 18.268 3.0449 17.3864 2.92637C16.0864 2.75159 14.3782 2.75 12 2.75C9.62177 2.75 7.91356 2.75159 6.61358 2.92637ZM20.4681 4.59254L4.59254 20.4681C5.09183 20.7629 5.73199 20.9551 6.61358 21.0736C7.91356 21.2484 9.62177 21.25 12 21.25C14.3782 21.25 16.0864 21.2484 17.3864 21.0736C18.6648 20.9018 19.4355 20.5749 20.0052 20.0052C20.5749 19.4355 20.9018 18.6648 21.0736 17.3864C21.2484 16.0864 21.25 14.3782 21.25 12C21.25 9.62177 21.2484 7.91356 21.0736 6.61358C20.9551 5.73199 20.7629 5.09183 20.4681 4.59254ZM8 4.74996C8.41421 4.74996 8.75 5.08575 8.75 5.49996L8.75 7.24998H10.5C10.9142 7.24998 11.25 7.58577 11.25 7.99998C11.25 8.41419 10.9142 8.74998 10.5 8.74998H8.75L8.75 10.5C8.75 10.9142 8.41421 11.25 8 11.25C7.58579 11.25 7.25 10.9142 7.25 10.5L7.25 8.74998L5.5 8.74998C5.08579 8.74998 4.75 8.41419 4.75 7.99998C4.75 7.58577 5.08579 7.24998 5.5 7.24998L7.25 7.24998L7.25 5.49996C7.25 5.08575 7.58579 4.74996 8 4.74996ZM12.25 17C12.25 16.5858 12.5858 16.25 13 16.25H18C18.4142 16.25 18.75 16.5858 18.75 17C18.75 17.4142 18.4142 17.75 18 17.75H13C12.5858 17.75 12.25 17.4142 12.25 17Z" fill="currentColor"/>''',
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
