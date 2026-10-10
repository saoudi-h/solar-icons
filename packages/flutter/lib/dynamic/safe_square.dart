// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `safe-square` icon in every style.
///
/// Prefer the static widgets (e.g. `SafeSquareLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class SafeSquareIcon extends StatelessWidget {
  /// Creates the `safe-square` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const SafeSquareIcon({
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
    name: 'safe-square',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.75 12C11.75 10.7574 12.7574 9.75 14 9.75C15.2426 9.75 16.25 10.7574 16.25 12C16.25 13.2426 15.2426 14.25 14 14.25C12.7574 14.25 11.75 13.2426 11.75 12Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447ZM6.75 7C6.75 6.58579 6.41421 6.25 6 6.25C5.58579 6.25 5.25 6.58579 5.25 7L5.25 17C5.25 17.4142 5.58579 17.75 6 17.75C6.41421 17.75 6.75 17.4142 6.75 17L6.75 7ZM10.5303 7.46967C10.2374 7.17678 9.76256 7.17678 9.46967 7.46967C9.17678 7.76256 9.17678 8.23744 9.46967 8.53033L10.8713 9.93196C10.4787 10.5248 10.25 11.2357 10.25 12C10.25 12.7643 10.4787 13.4752 10.8713 14.068L9.46967 15.4697C9.17678 15.7626 9.17678 16.2374 9.46967 16.5303C9.76256 16.8232 10.2374 16.8232 10.5303 16.5303L11.932 15.1287C12.5248 15.5213 13.2357 15.75 14 15.75C14.7643 15.75 15.4752 15.5213 16.068 15.1287L17.4697 16.5303C17.7626 16.8232 18.2374 16.8232 18.5303 16.5303C18.8232 16.2374 18.8232 15.7626 18.5303 15.4697L17.1287 14.068C17.5213 13.4752 17.75 12.7643 17.75 12C17.75 11.2357 17.5213 10.5248 17.1287 9.93196L18.5303 8.53033C18.8232 8.23744 18.8232 7.76256 18.5303 7.46967C18.2374 7.17678 17.7626 7.17678 17.4697 7.46967L16.068 8.8713C15.4752 8.47866 14.7643 8.25 14 8.25C13.2357 8.25 12.5248 8.47866 11.932 8.8713L10.5303 7.46967Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'safe-square',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M6.75 7C6.75 6.58579 6.41421 6.25 6 6.25C5.58579 6.25 5.25 6.58579 5.25 7L5.25 17C5.25 17.4142 5.58579 17.75 6 17.75C6.41421 17.75 6.75 17.4142 6.75 17L6.75 7Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M9.46967 7.46967C9.76256 7.17678 10.2374 7.17678 10.5303 7.46967L11.932 8.8713C12.5248 8.47866 13.2357 8.25 14 8.25C14.7643 8.25 15.4752 8.47866 16.068 8.8713L17.4697 7.46967C17.7626 7.17678 18.2374 7.17678 18.5303 7.46967C18.8232 7.76256 18.8232 8.23744 18.5303 8.53033L17.1287 9.93196C17.5213 10.5248 17.75 11.2357 17.75 12C17.75 12.7643 17.5213 13.4752 17.1287 14.068L18.5303 15.4697C18.8232 15.7626 18.8232 16.2374 18.5303 16.5303C18.2374 16.8232 17.7626 16.8232 17.4697 16.5303L16.068 15.1287C15.4752 15.5213 14.7643 15.75 14 15.75C13.2357 15.75 12.5248 15.5213 11.932 15.1287L10.5303 16.5303C10.2374 16.8232 9.76256 16.8232 9.46967 16.5303C9.17678 16.2374 9.17678 15.7626 9.46967 15.4697L10.8713 14.068C10.4787 13.4752 10.25 12.7643 10.25 12C10.25 11.2357 10.4787 10.5248 10.8713 9.93196L9.46967 8.53033C9.17678 8.23744 9.17678 7.76256 9.46967 7.46967ZM11.75 12C11.75 10.7574 12.7574 9.75 14 9.75C15.2426 9.75 16.25 10.7574 16.25 12C16.25 13.2426 15.2426 14.25 14 14.25C12.7574 14.25 11.75 13.2426 11.75 12Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'safe-square',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M6 7L6 8M6 17L6 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 12C11 10.3431 12.3431 9 14 9C15.6569 9 17 10.3431 17 12C17 13.6569 15.6569 15 14 15C12.3431 15 11 13.6569 11 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.5 9.40135C12.9413 9.14609 13.4536 9 14 9C15.6569 9 17 10.3431 17 12C17 13.6569 15.6569 15 14 15C12.3431 15 11 13.6569 11 12C11 11.4536 11.1461 10.9413 11.4013 10.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 9.5L18 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 16L11.5 14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 9.5L10 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 16L16.5 14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C21.5093 4.43821 21.8356 5.80655 21.9449 8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'safe-square',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 7L6 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 12C11 10.3431 12.3431 9 14 9C15.6569 9 17 10.3431 17 12C17 13.6569 15.6569 15 14 15C12.3431 15 11 13.6569 11 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 9.5L18 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 16L11.5 14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 9.5L10 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 16L16.5 14.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'safe-square',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 12C11 10.3431 12.3431 9 14 9C15.6569 9 17 10.3431 17 12C17 13.6569 15.6569 15 14 15C12.3431 15 11 13.6569 11 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6 7L6 17" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M16.5 9.5L18 8" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 16L11.5 14.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11.5 9.5L10 8" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M18 16L16.5 14.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'safe-square',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9426 1.25H12.0574C14.3658 1.24999 16.1748 1.24998 17.5863 1.43975C19.031 1.63399 20.1711 2.03933 21.0659 2.93414C21.9607 3.82895 22.366 4.96897 22.5603 6.41371C22.75 7.82519 22.75 9.63423 22.75 11.9426V12.0574C22.75 14.3658 22.75 16.1748 22.5603 17.5863C22.366 19.031 21.9607 20.1711 21.0659 21.0659C20.1711 21.9607 19.031 22.366 17.5863 22.5603C16.1748 22.75 14.3658 22.75 12.0574 22.75H11.9426C9.63423 22.75 7.82519 22.75 6.41371 22.5603C4.96897 22.366 3.82895 21.9607 2.93414 21.0659C2.03933 20.1711 1.63399 19.031 1.43975 17.5863C1.24998 16.1748 1.24999 14.3658 1.25 12.0574V11.9426C1.24999 9.63423 1.24998 7.82519 1.43975 6.41371C1.63399 4.96897 2.03933 3.82895 2.93414 2.93414C3.82895 2.03933 4.96897 1.63399 6.41371 1.43975C7.82519 1.24998 9.63423 1.24999 11.9426 1.25ZM6.61358 2.92637C5.33517 3.09825 4.56445 3.42514 3.9948 3.9948C3.42514 4.56445 3.09825 5.33517 2.92637 6.61358C2.75159 7.91356 2.75 9.62177 2.75 12C2.75 14.3782 2.75159 16.0864 2.92637 17.3864C3.09825 18.6648 3.42514 19.4355 3.9948 20.0052C4.56445 20.5749 5.33517 20.9018 6.61358 21.0736C7.91356 21.2484 9.62177 21.25 12 21.25C14.3782 21.25 16.0864 21.2484 17.3864 21.0736C18.6648 20.9018 19.4355 20.5749 20.0052 20.0052C20.5749 19.4355 20.9018 18.6648 21.0736 17.3864C21.2484 16.0864 21.25 14.3782 21.25 12C21.25 9.62177 21.2484 7.91356 21.0736 6.61358C20.9018 5.33517 20.5749 4.56445 20.0052 3.9948C19.4355 3.42514 18.6648 3.09825 17.3864 2.92637C16.0864 2.75159 14.3782 2.75 12 2.75C9.62177 2.75 7.91356 2.75159 6.61358 2.92637ZM6 6.25C6.41421 6.25 6.75 6.58579 6.75 7L6.75 17C6.75 17.4142 6.41421 17.75 6 17.75C5.58579 17.75 5.25 17.4142 5.25 17L5.25 7C5.25 6.58579 5.58579 6.25 6 6.25ZM9.46967 7.46967C9.76256 7.17678 10.2374 7.17678 10.5303 7.46967L11.932 8.8713C12.5248 8.47866 13.2357 8.25 14 8.25C14.7643 8.25 15.4752 8.47866 16.068 8.8713L17.4697 7.46967C17.7626 7.17678 18.2374 7.17678 18.5303 7.46967C18.8232 7.76256 18.8232 8.23744 18.5303 8.53033L17.1287 9.93196C17.5213 10.5248 17.75 11.2357 17.75 12C17.75 12.7643 17.5213 13.4752 17.1287 14.068L18.5303 15.4697C18.8232 15.7626 18.8232 16.2374 18.5303 16.5303C18.2374 16.8232 17.7626 16.8232 17.4697 16.5303L16.068 15.1287C15.4752 15.5213 14.7643 15.75 14 15.75C13.2357 15.75 12.5248 15.5213 11.932 15.1287L10.5303 16.5303C10.2374 16.8232 9.76256 16.8232 9.46967 16.5303C9.17678 16.2374 9.17678 15.7626 9.46967 15.4697L10.8713 14.068C10.4787 13.4752 10.25 12.7643 10.25 12C10.25 11.2357 10.4787 10.5248 10.8713 9.93196L9.46967 8.53033C9.17678 8.23744 9.17678 7.76256 9.46967 7.46967ZM14 9.75C12.7574 9.75 11.75 10.7574 11.75 12C11.75 13.2426 12.7574 14.25 14 14.25C15.2426 14.25 16.25 13.2426 16.25 12C16.25 10.7574 15.2426 9.75 14 9.75Z" fill="currentColor"/>''',
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
