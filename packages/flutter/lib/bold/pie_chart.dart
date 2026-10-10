// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04LjIyMjY2IDMuMjg0MTZDOC42MTc4NCAzLjE2MDA0IDkuMDM4OTcgMy4zODAxOSA5LjE2MzA5IDMuNzc1MzdDOS4yODcxNCA0LjE3MDUzIDkuMDY3MDMgNC41OTE2OSA4LjY3MTg4IDQuNzE1OEM1LjIzODgzIDUuNzk0MjkgMi43NTAwNSA5LjAwMTk1IDIuNzUgMTIuNzg5QzIuNzUgMTcuNDYxOCA2LjUzODE1IDIxLjI1IDExLjIxMDkgMjEuMjVDMTQuOTk4IDIxLjI0OTkgMTguMjA1NyAxOC43NjEyIDE5LjI4NDIgMTUuMzI4MUMxOS40MDgzIDE0LjkzMyAxOS44Mjk1IDE0LjcxMjkgMjAuMjI0NiAxNC44MzY5QzIwLjYxOTggMTQuOTYxIDIwLjgzOTkgMTUuMzgyMSAyMC43MTU4IDE1Ljc3NzNDMTkuNDQ2NyAxOS44MTc4IDE1LjY3MjEgMjIuNzQ5OSAxMS4yMTA5IDIyLjc1QzUuNzA5NzIgMjIuNzUgMS4yNSAxOC4yOTAzIDEuMjUgMTIuNzg5QzEuMjUwMDUgOC4zMjc4OSA0LjE4MjIgNC41NTMyNCA4LjIyMjY2IDMuMjg0MTZaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMSA0Ljc2MDcyQzExIDMuMDU0MjkgMTIuNDA5MSAxLjYyODEgMTQuMDUyNyAyLjA4NjlDMTcuODU1NiAzLjE0ODQ1IDIwLjg1MTUgNi4xNDQzNiAyMS45MTMxIDkuOTQ3MjVDMjIuMzcxOSAxMS41OTA4IDIwLjk0NTcgMTMgMTkuMjM5MyAxM0gxMi41NDQ5QzExLjY5MTcgMTMgMTEgMTIuMzA4MyAxMSAxMS40NTUxVjQuNzYwNzJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class PieChartBoldIcon extends StatelessWidget {
  /// Creates the `pie-chart` icon in the bold style.
  const PieChartBoldIcon({
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
    name: 'pie-chart',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8.22266 3.28416C8.61784 3.16004 9.03897 3.38019 9.16309 3.77537C9.28714 4.17053 9.06703 4.59169 8.67188 4.7158C5.23883 5.79429 2.75005 9.00195 2.75 12.789C2.75 17.4618 6.53815 21.25 11.2109 21.25C14.998 21.2499 18.2057 18.7612 19.2842 15.3281C19.4083 14.933 19.8295 14.7129 20.2246 14.8369C20.6198 14.961 20.8399 15.3821 20.7158 15.7773C19.4467 19.8178 15.6721 22.7499 11.2109 22.75C5.70972 22.75 1.25 18.2903 1.25 12.789C1.25005 8.32789 4.1822 4.55324 8.22266 3.28416Z" fill="currentColor"/>
<path d="M11 4.76072C11 3.05429 12.4091 1.6281 14.0527 2.0869C17.8556 3.14845 20.8515 6.14436 21.9131 9.94725C22.3719 11.5908 20.9457 13 19.2393 13H12.5449C11.6917 13 11 12.3083 11 11.4551V4.76072Z" fill="currentColor"/>''',
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
