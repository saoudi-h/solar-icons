// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `planet-4` icon in the broken style.
class Planet4BrokenIcon extends StatelessWidget {
  /// Creates the `planet-4` icon in the broken style.
  const Planet4BrokenIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

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

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'planet-4',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M6 20.9297C7.17669 21.6104 8.54285 22 10 22C13.6302 22 16.6956 19.5821 17.6737 16.2689C17.886 15.5496 18 14.7881 18 14C18 12.9452 17.7959 11.9381 17.4249 11.016C16.2421 8.07568 13.3635 6 10 6C6.74483 6 3.94375 7.94416 2.69456 10.7347C2.24822 11.7318 2 12.8369 2 14C2 14.6986 2.08954 15.3763 2.25778 16.0222C2.44046 16.7235 2.71591 17.3874 3.07026 18" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.69458 10.7344C2.8019 10.8344 2.90448 10.925 2.99993 11.0052C2.99993 11.0052 5.28439 13.0001 8.78439 13.0001C11.1666 13.0001 12.431 11.818 13.4999 11.5039C15.5089 10.9136 16.9999 11.0052 16.9999 11.0052C17.1278 11.0076 17.2706 11.011 17.4249 11.0157" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.25768 16.0219C2.56575 16.0064 2.81573 16.002 2.99994 16.0051C2.99994 16.0051 4.6006 15.9135 6.75717 16.5038C7.90465 16.8179 9.26199 18 11.8193 18C14.1271 18 15.9427 17.2473 16.9999 16.6667C17.1998 16.5567 17.4285 16.4226 17.6736 16.2687" stroke="currentColor" stroke-linecap="round"/>
<circle cx="18.665" cy="4.76756" r="2.00098" transform="rotate(-30 18.665 4.76756)" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="18.6653" cy="4.76786" rx="2.50586" ry="0.47168" transform="rotate(-30 18.6653 4.76786)" stroke="currentColor" stroke-linecap="round"/>''',
  );

  SolarIconData get _data => data;

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
