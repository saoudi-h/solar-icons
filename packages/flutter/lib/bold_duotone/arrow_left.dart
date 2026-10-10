// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMC43NSAxMkMyMC43NSAxMS41ODU4IDIwLjQxNDIgMTEuMjUgMjAgMTEuMjVIMTAuNzVWMTIuNzVIMjBDMjAuNDE0MiAxMi43NSAyMC43NSAxMi40MTQyIDIwLjc1IDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTAuNzUgMThDMTAuNzUgMTguMzAzNCAxMC41NjczIDE4LjU3NjggMTAuMjg3IDE4LjY5MjlDMTAuMDA2OCAxOC44MDkgOS42ODQxNyAxOC43NDQ5IDkuNDY5NjcgMTguNTMwNEwzLjQ2OTY3IDEyLjUzMDRDMy4zMjkwMiAxMi4zODk3IDMuMjUgMTIuMTk4OSAzLjI1IDEyQzMuMjUgMTEuODAxMSAzLjMyOTAyIDExLjYxMDMgMy40Njk2NyAxMS40Njk3TDkuNDY5NjcgNS40Njk2OUM5LjY4NDE3IDUuMjU1MTkgMTAuMDA2OCA1LjE5MTAzIDEwLjI4NyA1LjMwNzExQzEwLjU2NzMgNS40MjMyIDEwLjc1IDUuNjk2NjggMTAuNzUgNi4wMDAwMlYxOFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowLeftBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-left` icon in the boldDuotone style.
  const ArrowLeftBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.75 18C10.75 18.3034 10.5673 18.5768 10.287 18.6929C10.0068 18.809 9.68417 18.7449 9.46967 18.5304L3.46967 12.5304C3.32902 12.3897 3.25 12.1989 3.25 12C3.25 11.8011 3.32902 11.6103 3.46967 11.4697L9.46967 5.46969C9.68417 5.25519 10.0068 5.19103 10.287 5.30711C10.5673 5.4232 10.75 5.69668 10.75 6.00002V18Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M20.75 12C20.75 11.5858 20.4142 11.25 20 11.25H10.75V12.75H20C20.4142 12.75 20.75 12.4142 20.75 12Z" fill="currentColor"/>''',
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
