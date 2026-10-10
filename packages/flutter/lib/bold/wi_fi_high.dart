// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-high` icon in the bold style.
class WiFiHighBoldIcon extends StatelessWidget {
  /// Creates the `wi-fi-high` icon in the bold style.
  const WiFiHighBoldIcon({
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
    name: 'wi-fi-high',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.0183 18.7148C12.4323 18.7151 12.7683 19.0507 12.7683 19.4648C12.768 19.8786 12.4321 20.2145 12.0183 20.2148C11.6042 20.2148 11.2685 19.8788 11.2683 19.4648C11.2683 19.0506 11.604 18.7148 12.0183 18.7148Z" fill="currentColor"/>
<path d="M8.11787 15.3828C10.2556 13.076 13.7469 13.0757 15.8845 15.3828C16.1657 15.6863 16.1475 16.1607 15.8444 16.4423C15.5406 16.7238 15.0654 16.7061 14.7839 16.4023C13.2399 14.736 10.7616 14.7361 9.21748 16.4023C8.93595 16.706 8.4617 16.7238 8.15791 16.4423C7.85435 16.1608 7.83646 15.6865 8.11787 15.3828Z" fill="currentColor"/>
<path d="M4.78389 11.7851C8.76264 7.49105 15.2389 7.49076 19.2175 11.7851C19.4987 12.0889 19.48 12.5632 19.1765 12.8447C18.8727 13.1261 18.3984 13.1084 18.1169 12.8046C14.7319 9.15097 9.26858 9.15107 5.8835 12.8046C5.60202 13.1083 5.12773 13.126 4.82393 12.8447C4.52033 12.5631 4.50246 12.0889 4.78389 11.7851Z" fill="currentColor"/>''',
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
