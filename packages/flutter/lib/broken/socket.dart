// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `socket` icon in the broken style.
class SocketBrokenIcon extends StatelessWidget {
  /// Creates the `socket` icon in the broken style.
  const SocketBrokenIcon({
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
    name: 'socket',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C21.5093 4.43821 21.8356 5.80655 21.9449 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.58447 9.41299C6.87047 8.81431 7.2614 8.25323 7.75727 7.75736C10.1004 5.41421 13.8994 5.41421 16.2426 7.75736C18.5857 10.1005 18.5857 13.8995 16.2426 16.2426C13.8994 18.5858 10.1004 18.5858 7.75727 16.2426C7.2614 15.7468 6.87047 15.1857 6.58447 14.587" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 18.0001V16.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 7.5V6" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 12H10.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14 12H14.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
