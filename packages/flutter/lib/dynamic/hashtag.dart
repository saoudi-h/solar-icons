// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hashtag` icon in every style.
///
/// Prefer the static widgets (e.g. `HashtagLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class HashtagIcon extends StatelessWidget {
  /// Creates the `hashtag` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const HashtagIcon({
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
    name: 'hashtag',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.7226 3.20068C10.8335 2.80158 10.5998 2.38817 10.2007 2.27731C9.80163 2.16645 9.38822 2.40011 9.27736 2.79921L7.76327 8.24995H4C3.58579 8.24995 3.25 8.58573 3.25 8.99995C3.25 9.41416 3.58579 9.74995 4 9.74995H7.3466L5.81882 15.2499H2C1.58579 15.2499 1.25 15.5857 1.25 15.9999C1.25 16.4142 1.58579 16.7499 2 16.7499H5.40216L4.27736 20.7992C4.1665 21.1983 4.40016 21.6117 4.79927 21.7226C5.19837 21.8334 5.61178 21.5998 5.72264 21.2007L6.95895 16.7499H14.4022L13.2774 20.7992C13.1665 21.1983 13.4002 21.6117 13.7993 21.7226C14.1984 21.8334 14.6118 21.5998 14.7226 21.2007L15.959 16.7499H20C20.4142 16.7499 20.75 16.4142 20.75 15.9999C20.75 15.5857 20.4142 15.2499 20 15.2499H16.3756L17.9034 9.74995H22C22.4142 9.74995 22.75 9.41416 22.75 8.99995C22.75 8.58573 22.4142 8.24995 22 8.24995H18.3201L19.7226 3.20068C19.8335 2.80158 19.5998 2.38817 19.2007 2.27731C18.8016 2.16645 18.3882 2.40011 18.2774 2.79921L16.7633 8.24995H9.32006L10.7226 3.20068ZM14.8188 15.2499L16.3466 9.74995H8.9034L7.37562 15.2499H14.8188Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'hashtag',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.27741 2.79973C9.38828 2.40062 9.80214 2.1664 10.2012 2.27727C10.6002 2.3882 10.8336 2.80205 10.7227 3.20109L5.72273 21.2011C5.61178 21.5999 5.1988 21.8332 4.79987 21.7226C4.4009 21.6117 4.1668 21.1987 4.27741 20.7997L9.27741 2.79973Z" fill="currentColor"/>
<path d="M18.2774 2.79973C18.3883 2.40062 18.8021 2.1664 19.2012 2.27727C19.6002 2.3882 19.8336 2.80205 19.7227 3.20109L14.7227 21.2011C14.6118 21.5999 14.1988 21.8332 13.7999 21.7226C13.4009 21.6117 13.1668 21.1987 13.2774 20.7997L18.2774 2.79973Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M20 15.25C20.4142 15.25 20.75 15.5858 20.75 16C20.75 16.4142 20.4142 16.75 20 16.75H2C1.58579 16.75 1.25 16.4142 1.25 16C1.25 15.5858 1.58579 15.25 2 15.25H20Z" fill="currentColor"/>
<path d="M22 8.25C22.4142 8.25 22.75 8.58579 22.75 9C22.75 9.41421 22.4142 9.75 22 9.75H4C3.58579 9.75 3.25 9.41421 3.25 9C3.25 8.58579 3.58579 8.25 4 8.25H22Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'hashtag',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 3L8.75 7.5L8.61111 8L7.77778 11M5 21L6.94444 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 3L14 21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 9H4" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20 16H2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'hashtag',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M10 3L5 21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 3L14 21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 9H4" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20 16H2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'hashtag',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M10 3L5 21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 3L14 21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 9H4" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M20 16H2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'hashtag',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.7226 3.20068C10.8335 2.80158 10.5998 2.38817 10.2007 2.27731C9.80163 2.16645 9.38822 2.40011 9.27736 2.79921L7.76327 8.24995H4C3.58579 8.24995 3.25 8.58573 3.25 8.99995C3.25 9.41416 3.58579 9.74995 4 9.74995H7.3466L5.81882 15.2499H2C1.58579 15.2499 1.25 15.5857 1.25 15.9999C1.25 16.4142 1.58579 16.7499 2 16.7499H5.40216L4.27736 20.7992C4.1665 21.1983 4.40016 21.6117 4.79927 21.7226C5.19837 21.8334 5.61178 21.5998 5.72264 21.2007L6.95895 16.7499H14.4022L13.2774 20.7992C13.1665 21.1983 13.4002 21.6117 13.7993 21.7226C14.1984 21.8334 14.6118 21.5998 14.7226 21.2007L15.959 16.7499H20C20.4142 16.7499 20.75 16.4142 20.75 15.9999C20.75 15.5857 20.4142 15.2499 20 15.2499H16.3756L17.9034 9.74995H22C22.4142 9.74995 22.75 9.41416 22.75 8.99995C22.75 8.58573 22.4142 8.24995 22 8.24995H18.3201L19.7226 3.20068C19.8335 2.80158 19.5998 2.38817 19.2007 2.27731C18.8016 2.16645 18.3882 2.40011 18.2774 2.79921L16.7633 8.24995H9.32006L10.7226 3.20068ZM14.8188 15.2499L16.3466 9.74995H8.9034L7.37562 15.2499H14.8188Z" fill="currentColor"/>''',
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
