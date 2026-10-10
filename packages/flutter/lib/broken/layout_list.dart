// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `layout-list` icon in the broken style.
class LayoutListBrokenIcon extends StatelessWidget {
  /// Creates the `layout-list` icon in the broken style.
  const LayoutListBrokenIcon({
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
    name: 'layout-list',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 19.4468C9.93403 19.9004 9.80601 20.2222 9.55758 20.4706C9.04502 20.9832 8.22006 20.9832 6.57014 20.9832C4.92023 20.9832 4.09527 20.9832 3.58271 20.4706C3.07014 19.958 3.07014 19.1331 3.07014 17.4832C3.07014 15.8332 3.07014 15.0083 3.58271 14.4957C4.09527 13.9832 4.92023 13.9832 6.57015 13.9832C8.22006 13.9832 9.04502 13.9832 9.55758 14.4957C9.78756 14.7257 9.91435 15.0186 9.98425 15.4206" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 15.0171H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 20.0171H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.07007 4.51951C3.13604 4.06595 3.26406 3.74414 3.51249 3.49572C4.02505 2.98315 4.85001 2.98315 6.49992 2.98315C8.14984 2.98315 8.9748 2.98315 9.48736 3.49572C9.99992 4.00828 9.99992 4.83324 9.99992 6.48315C9.99992 8.13307 9.99992 8.95803 9.48736 9.47059C8.9748 9.98315 8.14984 9.98315 6.49992 9.98315C4.85001 9.98315 4.02505 9.98315 3.51249 9.47059C3.28251 9.24061 3.15572 8.94775 3.08582 8.54569" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 3.98315L14 3.98315" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 8.98315H14" stroke="currentColor" stroke-linecap="round"/>''',
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
