// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `branching-paths-down` icon in every style.
///
/// Prefer the static widgets (e.g. `BranchingPathsDownLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class BranchingPathsDownIcon extends StatelessWidget {
  /// Creates the `branching-paths-down` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const BranchingPathsDownIcon({
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
    name: 'branching-paths-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447ZM12 5.75C12.4142 5.75 12.75 6.08579 12.75 6.5V12.5C12.75 14.2949 14.2051 15.75 16 15.75H16.1893L15.9697 15.5303C15.6768 15.2374 15.6768 14.7626 15.9697 14.4697C16.2626 14.1768 16.7374 14.1768 17.0303 14.4697L18.5303 15.9697C18.8232 16.2626 18.8232 16.7374 18.5303 17.0303L17.0303 18.5303C16.7374 18.8232 16.2626 18.8232 15.9697 18.5303C15.6768 18.2374 15.6768 17.7626 15.9697 17.4697L16.1893 17.25H16C14.3205 17.25 12.8446 16.3784 12 15.0628C11.1554 16.3784 9.67947 17.25 8 17.25H7.81066L8.03033 17.4697C8.32322 17.7626 8.32322 18.2374 8.03033 18.5303C7.73744 18.8232 7.26256 18.8232 6.96967 18.5303L5.46967 17.0303C5.17678 16.7374 5.17678 16.2626 5.46967 15.9697L6.96967 14.4697C7.26256 14.1768 7.73744 14.1768 8.03033 14.4697C8.32322 14.7626 8.32322 15.2374 8.03033 15.5303L7.81066 15.75H8C9.79493 15.75 11.25 14.2949 11.25 12.5V6.5C11.25 6.08579 11.5858 5.75 12 5.75Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'branching-paths-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 6.5C12.75 6.08579 12.4142 5.75 12 5.75C11.5858 5.75 11.25 6.08579 11.25 6.5V12.5C11.25 14.2949 9.79493 15.75 8 15.75H7.81066L8.03033 15.5303C8.32322 15.2374 8.32322 14.7626 8.03033 14.4697C7.73744 14.1768 7.26256 14.1768 6.96967 14.4697L5.46967 15.9697C5.17678 16.2626 5.17678 16.7374 5.46967 17.0303L6.96967 18.5303C7.26256 18.8232 7.73744 18.8232 8.03033 18.5303C8.32322 18.2374 8.32322 17.7626 8.03033 17.4697L7.81066 17.25H8C9.67947 17.25 11.1554 16.3784 12 15.0628C12.8446 16.3784 14.3205 17.25 16 17.25H16.1893L15.9697 17.4697C15.6768 17.7626 15.6768 18.2374 15.9697 18.5303C16.2626 18.8232 16.7374 18.8232 17.0303 18.5303L18.5303 17.0303C18.8232 16.7374 18.8232 16.2626 18.5303 15.9697L17.0303 14.4697C16.7374 14.1768 16.2626 14.1768 15.9697 14.4697C15.6768 14.7626 15.6768 15.2374 15.9697 15.5303L16.1893 15.75H16C14.2051 15.75 12.75 14.2949 12.75 12.5V6.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'branching-paths-down',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16 16.5H18M16.5 18L18 16.5L16.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16 16.5C13.7909 16.5 12 14.7091 12 12.5V6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 16.5H6M7.5 18L6 16.5L7.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8 16.5C10.2091 16.5 12 14.7091 12 12.5V6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C21.5093 4.43821 21.8356 5.80655 21.9449 8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'branching-paths-down',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 16.5H18M16.5 18L18 16.5L16.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16 16.5C13.7909 16.5 12 14.7091 12 12.5V6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 16.5H6M7.5 18L6 16.5L7.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8 16.5C10.2091 16.5 12 14.7091 12 12.5V6.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'branching-paths-down',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 6.5V12.5C12 14.7091 13.7909 16.5 16 16.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 16.5H18M16.5 18L18 16.5L16.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>

<g opacity="0.5">
<path d="M8 16.5C10.2091 16.5 12 14.7091 12 12.5V6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 16.5H6M7.5 18L6 16.5L7.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
</g>''',
  );

  static const outline = SolarIconData(
    name: 'branching-paths-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9426 1.25H12.0574C14.3658 1.24999 16.1748 1.24998 17.5863 1.43975C19.031 1.63399 20.1711 2.03933 21.0659 2.93414C21.9607 3.82895 22.366 4.96897 22.5603 6.41371C22.75 7.82519 22.75 9.63423 22.75 11.9426V12.0574C22.75 14.3658 22.75 16.1748 22.5603 17.5863C22.366 19.031 21.9607 20.1711 21.0659 21.0659C20.1711 21.9607 19.031 22.366 17.5863 22.5603C16.1748 22.75 14.3658 22.75 12.0574 22.75H11.9426C9.63423 22.75 7.82519 22.75 6.41371 22.5603C4.96897 22.366 3.82895 21.9607 2.93414 21.0659C2.03933 20.1711 1.63399 19.031 1.43975 17.5863C1.24998 16.1748 1.24999 14.3658 1.25 12.0574V11.9426C1.24999 9.63423 1.24998 7.82519 1.43975 6.41371C1.63399 4.96897 2.03933 3.82895 2.93414 2.93414C3.82895 2.03933 4.96897 1.63399 6.41371 1.43975C7.82519 1.24998 9.63423 1.24999 11.9426 1.25ZM6.61358 2.92637C5.33517 3.09825 4.56445 3.42514 3.9948 3.9948C3.42514 4.56445 3.09825 5.33517 2.92637 6.61358C2.75159 7.91356 2.75 9.62177 2.75 12C2.75 14.3782 2.75159 16.0864 2.92637 17.3864C3.09825 18.6648 3.42514 19.4355 3.9948 20.0052C4.56445 20.5749 5.33517 20.9018 6.61358 21.0736C7.91356 21.2484 9.62177 21.25 12 21.25C14.3782 21.25 16.0864 21.2484 17.3864 21.0736C18.6648 20.9018 19.4355 20.5749 20.0052 20.0052C20.5749 19.4355 20.9018 18.6648 21.0736 17.3864C21.2484 16.0864 21.25 14.3782 21.25 12C21.25 9.62177 21.2484 7.91356 21.0736 6.61358C20.9018 5.33517 20.5749 4.56445 20.0052 3.9948C19.4355 3.42514 18.6648 3.09825 17.3864 2.92637C16.0864 2.75159 14.3782 2.75 12 2.75C9.62177 2.75 7.91356 2.75159 6.61358 2.92637Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 5.75C12.4142 5.75 12.75 6.08579 12.75 6.5V12.5C12.75 14.2949 14.2051 15.75 16 15.75H16.1893L15.9697 15.5303C15.6768 15.2374 15.6768 14.7626 15.9697 14.4697C16.2626 14.1768 16.7374 14.1768 17.0303 14.4697L18.5303 15.9697C18.8232 16.2626 18.8232 16.7374 18.5303 17.0303L17.0303 18.5303C16.7374 18.8232 16.2626 18.8232 15.9697 18.5303C15.6768 18.2374 15.6768 17.7626 15.9697 17.4697L16.1893 17.25H16C14.3205 17.25 12.8446 16.3784 12 15.0628C11.1554 16.3784 9.67947 17.25 8 17.25H7.81066L8.03033 17.4697C8.32322 17.7626 8.32322 18.2374 8.03033 18.5303C7.73744 18.8232 7.26256 18.8232 6.96967 18.5303L5.46967 17.0303C5.17678 16.7374 5.17678 16.2626 5.46967 15.9697L6.96967 14.4697C7.26256 14.1768 7.73744 14.1768 8.03033 14.4697C8.32322 14.7626 8.32322 15.2374 8.03033 15.5303L7.81066 15.75H8C9.79493 15.75 11.25 14.2949 11.25 12.5V6.5C11.25 6.08579 11.5858 5.75 12 5.75Z" fill="currentColor"/>''',
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
