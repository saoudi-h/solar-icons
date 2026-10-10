// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `play` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMyAxMkMyMyAxMC45NjQ4IDIyLjQ2OTUgOS45Mjk1MyAyMS40MDg2IDkuMzUyNThMOC41OTY2MSAyLjM4NTQ4QzYuNTM0MzUgMS4yNjQwMiA0IDIuNzIzNjggNCA1LjAzMjlMNCAxMkgyM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNOC41OTY2MiAyMS42MTQ1TDIxLjQwODYgMTQuNjQ3NEMyMi40Njk1IDE0LjA3MDUgMjMgMTMuMDM1MiAyMyAxMkg0TDQgMTguOTY3MUM0IDIxLjI3NjMgNi41MzQzNSAyMi43MzYgOC41OTY2MiAyMS42MTQ1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class PlayBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `play` icon in the boldDuotone style.
  const PlayBoldDuotoneIcon({
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
    name: 'play',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M23 12C23 10.9648 22.4695 9.92953 21.4086 9.35258L8.59661 2.38548C6.53435 1.26402 4 2.72368 4 5.0329L4 12H23Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.59662 21.6145L21.4086 14.6474C22.4695 14.0705 23 13.0352 23 12H4L4 18.9671C4 21.2763 6.53435 22.736 8.59662 21.6145Z" fill="currentColor"/>''',
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
