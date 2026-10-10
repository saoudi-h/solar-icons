// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-down` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjc1IDRDMTIuNzUgMy41ODU3OSAxMi40MTQyIDMuMjUgMTIgMy4yNUMxMS41ODU4IDMuMjUgMTEuMjUgMy41ODU3OSAxMS4yNSA0TDExLjI1IDEzLjI1SDYuMDAwMDJDNS42OTY2OCAxMy4yNSA1LjQyMzIgMTMuNDMyNyA1LjMwNzExIDEzLjcxM0M1LjE5MTAzIDEzLjk5MzIgNS4yNTUxOSAxNC4zMTU4IDUuNDY5NjkgMTQuNTMwM0wxMS40Njk3IDIwLjUzMDNDMTEuNjEwMyAyMC42NzEgMTEuODAxMSAyMC43NSAxMiAyMC43NUMxMi4xOTg5IDIwLjc1IDEyLjM4OTcgMjAuNjcxIDEyLjUzMDQgMjAuNTMwM0wxOC41MzA0IDE0LjUzMDNDMTguNzQ0OSAxNC4zMTU4IDE4LjgwOSAxMy45OTMyIDE4LjY5MjkgMTMuNzEzQzE4LjU3NjggMTMuNDMyNyAxOC4zMDM0IDEzLjI1IDE4IDEzLjI1SDEyLjc1TDEyLjc1IDRaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ArrowDownBoldIcon extends StatelessWidget {
  /// Creates the `arrow-down` icon in the bold style.
  const ArrowDownBoldIcon({
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
    name: 'arrow-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.75 4C12.75 3.58579 12.4142 3.25 12 3.25C11.5858 3.25 11.25 3.58579 11.25 4L11.25 13.25H6.00002C5.69668 13.25 5.4232 13.4327 5.30711 13.713C5.19103 13.9932 5.25519 14.3158 5.46969 14.5303L11.4697 20.5303C11.6103 20.671 11.8011 20.75 12 20.75C12.1989 20.75 12.3897 20.671 12.5304 20.5303L18.5304 14.5303C18.7449 14.3158 18.809 13.9932 18.6929 13.713C18.5768 13.4327 18.3034 13.25 18 13.25H12.75L12.75 4Z" fill="currentColor"/>''',
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
