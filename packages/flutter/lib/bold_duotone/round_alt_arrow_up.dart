// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTcuNTIyOCA2LjQ3NzE1IDIyIDEyIDIyQzE3LjUyMjggMjIgMjIgMTcuNTIyOCAyMiAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTguNDY5NjcgMTIuOTY5N0M4LjE3Njc4IDEzLjI2MjYgOC4xNzY3OCAxMy43Mzc0IDguNDY5NjcgMTQuMDMwM0M4Ljc2MjU2IDE0LjMyMzIgOS4yMzc0NCAxNC4zMjMyIDkuNTMwMzMgMTQuMDMwM0wxMiAxMS41NjA3TDE0LjQ2OTcgMTQuMDMwM0MxNC43NjI2IDE0LjMyMzIgMTUuMjM3NCAxNC4zMjMyIDE1LjUzMDMgMTQuMDMwM0MxNS44MjMyIDEzLjczNzQgMTUuODIzMiAxMy4yNjI2IDE1LjUzMDMgMTIuOTY5N0wxMi41MzAzIDkuOTY5NjdDMTIuMjM3NCA5LjY3Njc4IDExLjc2MjYgOS42NzY3OCAxMS40Njk3IDkuOTY5NjdMOC40Njk2NyAxMi45Njk3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class RoundAltArrowUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-alt-arrow-up` icon in the boldDuotone style.
  const RoundAltArrowUpBoldDuotoneIcon({
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
    name: 'round-alt-arrow-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.46967 12.9697C8.17678 13.2626 8.17678 13.7374 8.46967 14.0303C8.76256 14.3232 9.23744 14.3232 9.53033 14.0303L12 11.5607L14.4697 14.0303C14.7626 14.3232 15.2374 14.3232 15.5303 14.0303C15.8232 13.7374 15.8232 13.2626 15.5303 12.9697L12.5303 9.96967C12.2374 9.67678 11.7626 9.67678 11.4697 9.96967L8.46967 12.9697Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12Z" fill="currentColor"/>''',
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
