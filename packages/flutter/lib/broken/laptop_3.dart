// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `laptop-3` icon in the broken style.
class Laptop3BrokenIcon extends StatelessWidget {
  /// Creates the `laptop-3` icon in the broken style.
  const Laptop3BrokenIcon({
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
    name: 'laptop-3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.5 2C6.67157 2 5.25736 2 4.37868 2.87868C3.5 3.75736 3.5 5.17157 3.5 8V11C3.5 12.8856 3.5 13.8284 4.08579 14.4142C4.67157 15 5.61438 15 7.5 15H16.5C18.3856 15 19.3284 15 19.9142 14.4142C20.5 13.8284 20.5 12.8856 20.5 11V8C20.5 5.17157 20.5 3.75736 19.6213 2.87868C18.7426 2 17.3284 2 14.5 2H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22H5C3.34315 22 2 20.6569 2 19V18C2 17.4477 2.44772 17 3 17H7.33333C7.76607 17 8.18714 17.1404 8.53333 17.4L9.46667 18.1C9.81286 18.3596 10.2339 18.5 10.6667 18.5H13.3333C13.7661 18.5 14.1871 18.3596 14.5333 18.1L15.4667 17.4C15.8129 17.1404 16.2339 17 16.6667 17H21C21.5523 17 22 17.4477 22 18V19C22 20.6569 20.6569 22 19 22H16" stroke="currentColor" stroke-linecap="round"/>''',
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
