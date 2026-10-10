// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-block` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSI2IiByPSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1LjUgMTMuNTM1MUMxNC40NzA0IDEzLjE5NDggMTMuMjc1IDEzIDEyIDEzQzguMTM0MDEgMTMgNSAxNC43OTA5IDUgMTdDNSAxNy4zNDUzIDUgMTcuNjgwNCA1LjAyNjczIDE4TTEzIDIwLjk4NjdDMTIuNjgzNiAyMC45OTU1IDEyLjM1MDYgMjEgMTIgMjFDMTAuMjc3NiAyMSA4Ljk3OTA2IDIwLjg5MTYgOCAyMC42OTUyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE5Ljk1MDIgMTcuMDQ5OEwxNi4wNTAyIDIwLjk0OTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSIxOCIgY3k9IjE5IiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class UserBlockBrokenIcon extends StatelessWidget {
  /// Creates the `user-block` icon in the broken style.
  const UserBlockBrokenIcon({
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
    name: 'user-block',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 13.5351C14.4704 13.1948 13.275 13 12 13C8.13401 13 5 14.7909 5 17C5 17.3453 5 17.6804 5.02673 18M13 20.9867C12.6836 20.9955 12.3506 21 12 21C10.2776 21 8.97906 20.8916 8 20.6952" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.9502 17.0498L16.0502 20.9497" stroke="currentColor" stroke-linecap="round"/>
<circle cx="18" cy="19" r="3" stroke="currentColor" stroke-linecap="round"/>''',
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
