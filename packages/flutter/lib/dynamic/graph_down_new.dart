// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `graph-down-new` icon in every style.
///
/// Prefer the static widgets (e.g. `GraphDownNewLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class GraphDownNewIcon extends StatelessWidget {
  /// Creates the `graph-down-new` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const GraphDownNewIcon({
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
    name: 'graph-down-new',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C13.3988 2 14.5903 1.99983 15.6123 2.03809C14.9199 2.8295 14.5 3.86584 14.5 5C14.5 7.48528 16.5147 9.5 19 9.5C20.1342 9.5 21.1705 9.0801 21.9619 8.3877C22.0002 9.40967 22 10.6012 22 12C22 16.714 21.9996 19.0707 20.5352 20.5352C19.0707 21.9996 16.714 22 12 22C7.28595 22 4.92931 21.9996 3.46484 20.5352C2.00038 19.0707 2 16.714 2 12C2 7.28595 2.00038 4.92931 3.46484 3.46484C4.92931 2.00038 7.28595 2 12 2ZM7.53027 9.46973C7.23738 9.17683 6.76262 9.17683 6.46973 9.46973C6.17683 9.76262 6.17683 10.2374 6.46973 10.5303L8.7627 12.8232C9.44609 13.5066 10.5539 13.5066 11.2373 12.8232L12.8232 11.2373C12.9209 11.1398 13.0791 11.1398 13.1768 11.2373L15.1895 13.25H14.5C14.0858 13.25 13.75 13.5858 13.75 14C13.75 14.4142 14.0858 14.75 14.5 14.75H17C17.4142 14.75 17.75 14.4142 17.75 14V11.5C17.75 11.0858 17.4142 10.75 17 10.75C16.5858 10.75 16.25 11.0858 16.25 11.5V12.1895L14.2373 10.1768C13.5539 9.49344 12.4461 9.49344 11.7627 10.1768L10.1768 11.7627C10.0791 11.8602 9.92085 11.8602 9.82324 11.7627L7.53027 9.46973Z" fill="currentColor"/>
<path d="M19 2C20.6569 2 22 3.34315 22 5C22 6.65685 20.6569 8 19 8C17.3431 8 16 6.65685 16 5C16 3.34315 17.3431 2 19 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'graph-down-new',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M6.46967 9.46973C6.76256 9.17683 7.23732 9.17683 7.53022 9.46973L9.82319 11.7627C9.9208 11.8602 10.0791 11.8602 10.1767 11.7627L11.7626 10.1768C12.446 9.49344 13.5538 9.49344 14.2372 10.1768L16.2499 12.1895V11.5C16.2499 11.0858 16.5857 10.75 16.9999 10.75C17.4142 10.75 17.7499 11.0858 17.7499 11.5V14C17.7499 14.4142 17.4142 14.75 16.9999 14.75H14.4999C14.0857 14.75 13.7499 14.4142 13.7499 14C13.7499 13.5858 14.0857 13.25 14.4999 13.25H15.1894L13.1767 11.2373C13.0791 11.1398 12.9208 11.1398 12.8232 11.2373L11.2372 12.8232C10.5538 13.5066 9.44604 13.5066 8.76264 12.8232L6.46967 10.5303C6.17678 10.2374 6.17678 9.76262 6.46967 9.46973Z" fill="currentColor"/>
<path d="M18.9999 2C20.6568 2 21.9999 3.34315 21.9999 5C21.9999 6.65685 20.6568 8 18.9999 8C17.3431 8 15.9999 6.65685 15.9999 5C15.9999 3.34315 17.3431 2 18.9999 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'graph-down-new',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7 10L9.29289 12.2929C9.68342 12.6834 10.3166 12.6834 10.7071 12.2929L12.2929 10.7071C12.6834 10.3166 13.3166 10.3166 13.7071 10.7071L17 14M14.5 14H17V11.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="19" cy="5" r="3" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 10.5V12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 10.8717 2 9.87835 2.02008 9M13.5 2H12C7.28595 2 4.92893 2 3.46447 3.46447C3.02355 3.90538 2.71538 4.4272 2.5 5.0699" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'graph-down-new',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M7 10L9.29289 12.2929C9.68342 12.6834 10.3166 12.6834 10.7071 12.2929L12.2929 10.7071C12.6834 10.3166 13.3166 10.3166 13.7071 10.7071L17 14M14.5 14H17V11.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 10.5V12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2H13.5" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19" cy="5" r="3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'graph-down-new',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7 10L9.29289 12.2929C9.68342 12.6834 10.3166 12.6834 10.7071 12.2929L12.2929 10.7071C12.6834 10.3166 13.3166 10.3166 13.7071 10.7071L17 14M14.5 14H17V11.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="19" cy="5" r="3" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 10.5V12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2H13.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'graph-down-new',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M11.9426 1.25H13.5C13.9142 1.25 14.25 1.58579 14.25 2C14.25 2.41421 13.9142 2.75 13.5 2.75H12C9.62178 2.75 7.91356 2.75159 6.61358 2.92637C5.33517 3.09825 4.56445 3.42514 3.9948 3.9948C3.42514 4.56445 3.09825 5.33517 2.92637 6.61358C2.75159 7.91356 2.75 9.62178 2.75 12C2.75 14.3782 2.75159 16.0864 2.92637 17.3864C3.09825 18.6648 3.42514 19.4355 3.9948 20.0052C4.56445 20.5749 5.33517 20.9018 6.61358 21.0736C7.91356 21.2484 9.62178 21.25 12 21.25C14.3782 21.25 16.0864 21.2484 17.3864 21.0736C18.6648 20.9018 19.4355 20.5749 20.0052 20.0052C20.5749 19.4355 20.9018 18.6648 21.0736 17.3864C21.2484 16.0864 21.25 14.3782 21.25 12V10.5C21.25 10.0858 21.5858 9.75 22 9.75C22.4142 9.75 22.75 10.0858 22.75 10.5V12.0574C22.75 14.3658 22.75 16.1748 22.5603 17.5863C22.366 19.031 21.9607 20.1711 21.0659 21.0659C20.1711 21.9607 19.031 22.366 17.5863 22.5603C16.1748 22.75 14.3658 22.75 12.0574 22.75H11.9426C9.63423 22.75 7.82519 22.75 6.41371 22.5603C4.96897 22.366 3.82895 21.9607 2.93414 21.0659C2.03933 20.1711 1.63399 19.031 1.43975 17.5863C1.24998 16.1748 1.24999 14.3658 1.25 12.0574V11.9426C1.24999 9.63423 1.24998 7.82519 1.43975 6.41371C1.63399 4.96897 2.03933 3.82895 2.93414 2.93414C3.82895 2.03933 4.96897 1.63399 6.41371 1.43975C7.82519 1.24998 9.63423 1.24999 11.9426 1.25Z" fill="currentColor"/>
<path d="M6.46967 9.46967C6.76256 9.17678 7.23744 9.17678 7.53033 9.46967L9.82322 11.7626C9.92085 11.8602 10.0791 11.8602 10.1768 11.7626L11.7626 10.1768C12.446 9.49336 13.554 9.49336 14.2374 10.1768L16.25 12.1893V11.5C16.25 11.0858 16.5858 10.75 17 10.75C17.4142 10.75 17.75 11.0858 17.75 11.5V14C17.75 14.4142 17.4142 14.75 17 14.75H14.5C14.0858 14.75 13.75 14.4142 13.75 14C13.75 13.5858 14.0858 13.25 14.5 13.25H15.1893L13.1768 11.2374C13.0791 11.1398 12.9209 11.1398 12.8232 11.2374L11.2374 12.8232C10.554 13.5066 9.44598 13.5066 8.76256 12.8232L6.46967 10.5303C6.17678 10.2374 6.17678 9.76256 6.46967 9.46967Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M19 1.25C16.9289 1.25 15.25 2.92893 15.25 5C15.25 7.07107 16.9289 8.75 19 8.75C21.0711 8.75 22.75 7.07107 22.75 5C22.75 2.92893 21.0711 1.25 19 1.25ZM16.75 5C16.75 3.75736 17.7574 2.75 19 2.75C20.2426 2.75 21.25 3.75736 21.25 5C21.25 6.24264 20.2426 7.25 19 7.25C17.7574 7.25 16.75 6.24264 16.75 5Z" fill="currentColor"/>''',
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
