// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-left` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDExLjI1QzIwLjQxNDIgMTEuMjUgMjAuNzUgMTEuNTg1OCAyMC43NSAxMkMyMC43NSAxMi40MTQyIDIwLjQxNDIgMTIuNzUgMjAgMTIuNzVIMTAuNzVMMTAuNzUgMThDMTAuNzUgMTguMzAzNCAxMC41NjczIDE4LjU3NjggMTAuMjg3IDE4LjY5MjlDMTAuMDA2OCAxOC44MDkgOS42ODQxNyAxOC43NDQ5IDkuNDY5NjcgMTguNTMwNEwzLjQ2OTY3IDEyLjUzMDRDMy4zMjkwMiAxMi4zODk3IDMuMjUgMTIuMTk4OSAzLjI1IDEyQzMuMjUgMTEuODAxMSAzLjMyOTAyIDExLjYxMDMgMy40Njk2NyAxMS40Njk3TDkuNDY5NjcgNS40Njk2OUM5LjY4NDE3IDUuMjU1MTkgMTAuMDA2OCA1LjE5MTAzIDEwLjI4NyA1LjMwNzExQzEwLjU2NzMgNS40MjMyIDEwLjc1IDUuNjk2NjggMTAuNzUgNi4wMDAwMkwxMC43NSAxMS4yNUgyMFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowLeftBoldIcon extends StatelessWidget {
  /// Creates the `arrow-left` icon in the bold style.
  const ArrowLeftBoldIcon({
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
    name: 'arrow-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M20 11.25C20.4142 11.25 20.75 11.5858 20.75 12C20.75 12.4142 20.4142 12.75 20 12.75H10.75L10.75 18C10.75 18.3034 10.5673 18.5768 10.287 18.6929C10.0068 18.809 9.68417 18.7449 9.46967 18.5304L3.46967 12.5304C3.32902 12.3897 3.25 12.1989 3.25 12C3.25 11.8011 3.32902 11.6103 3.46967 11.4697L9.46967 5.46969C9.68417 5.25519 10.0068 5.19103 10.287 5.30711C10.5673 5.4232 10.75 5.69668 10.75 6.00002L10.75 11.25H20Z" fill="currentColor"/>''',
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
