// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-none` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjAxNzYgMTguNzE0NEMxMi40MzE4IDE4LjcxNDQgMTIuNzY3NiAxOS4wNTAxIDEyLjc2NzYgMTkuNDY0NEMxMi43Njc2IDE5Ljg3ODYgMTIuNDMxOCAyMC4yMTQ0IDEyLjAxNzYgMjAuMjE0NEMxMS42MDM0IDIwLjIxNDQgMTEuMjY3NiAxOS44Nzg2IDExLjI2NzYgMTkuNDY0NEMxMS4yNjc2IDE5LjA1MDEgMTEuNjAzNCAxOC43MTQ0IDEyLjAxNzYgMTguNzE0NFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class WiFiNoneBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `wi-fi-none` icon in the boldDuotone style.
  const WiFiNoneBoldDuotoneIcon({
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
    name: 'wi-fi-none',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.0176 18.7144C12.4318 18.7144 12.7676 19.0501 12.7676 19.4644C12.7676 19.8786 12.4318 20.2144 12.0176 20.2144C11.6034 20.2144 11.2676 19.8786 11.2676 19.4644C11.2676 19.0501 11.6034 18.7144 12.0176 18.7144Z" fill="currentColor"/>''',
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
