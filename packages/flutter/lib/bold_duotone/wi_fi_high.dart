// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-high` icon in the boldDuotone style.
class WiFiHighBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `wi-fi-high` icon in the boldDuotone style.
  const WiFiHighBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.0176 18.7144C12.4318 18.7144 12.7676 19.0501 12.7676 19.4644C12.7676 19.8786 12.4318 20.2144 12.0176 20.2144C11.6034 20.2144 11.2676 19.8786 11.2676 19.4644C11.2676 19.0501 11.6034 18.7144 12.0176 18.7144Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M8.1169 15.3828C10.2547 13.076 13.7459 13.0757 15.8835 15.3828C16.1648 15.6863 16.1466 16.1607 15.8435 16.4423C15.5396 16.7238 15.0644 16.7061 14.7829 16.4023C13.2389 14.736 10.7606 14.7361 9.21651 16.4023C8.93497 16.706 8.46073 16.7238 8.15693 16.4423C7.85337 16.1608 7.83548 15.6865 8.1169 15.3828Z" fill="currentColor"/>
<path d="M4.78291 11.7851C8.76166 7.49105 15.2379 7.49076 19.2165 11.7851C19.4977 12.0889 19.479 12.5632 19.1755 12.8447C18.8717 13.1261 18.3974 13.1084 18.1159 12.8046C14.7309 9.15097 9.26761 9.15107 5.88252 12.8046C5.60104 13.1083 5.12676 13.126 4.82295 12.8447C4.51935 12.5631 4.50148 12.0889 4.78291 11.7851Z" fill="currentColor"/>
</g>''',
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
