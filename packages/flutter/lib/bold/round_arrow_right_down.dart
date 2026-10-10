// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMkMyMiAxNy41MjI4IDE3LjUyMjggMjIgMTIgMjJDNi40NzcxNSAyMiAyIDE3LjUyMjggMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJaTTkuNzUgMTVDOS43NSAxNS40MTQyIDEwLjA4NTggMTUuNzUgMTAuNSAxNS43NUgxNUMxNS40MTQyIDE1Ljc1IDE1Ljc1IDE1LjQxNDIgMTUuNzUgMTVWMTAuNUMxNS43NSAxMC4wODU4IDE1LjQxNDIgOS43NSAxNSA5Ljc1QzE0LjU4NTggOS43NSAxNC4yNSAxMC4wODU4IDE0LjI1IDEwLjVWMTMuMTg5M0w5LjUzMDMzIDguNDY5NjdDOS4yMzc0NCA4LjE3Njc4IDguNzYyNTYgOC4xNzY3OCA4LjQ2OTY3IDguNDY5NjdDOC4xNzY3OCA4Ljc2MjU2IDguMTc2NzggOS4yMzc0NCA4LjQ2OTY3IDkuNTMwMzNMMTMuMTg5MyAxNC4yNUgxMC41QzEwLjA4NTggMTQuMjUgOS43NSAxNC41ODU4IDkuNzUgMTVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RoundArrowRightDownBoldIcon extends StatelessWidget {
  /// Creates the `round-arrow-right-down` icon in the bold style.
  const RoundArrowRightDownBoldIcon({
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
    name: 'round-arrow-right-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2ZM9.75 15C9.75 15.4142 10.0858 15.75 10.5 15.75H15C15.4142 15.75 15.75 15.4142 15.75 15V10.5C15.75 10.0858 15.4142 9.75 15 9.75C14.5858 9.75 14.25 10.0858 14.25 10.5V13.1893L9.53033 8.46967C9.23744 8.17678 8.76256 8.17678 8.46967 8.46967C8.17678 8.76256 8.17678 9.23744 8.46967 9.53033L13.1893 14.25H10.5C10.0858 14.25 9.75 14.5858 9.75 15Z" fill="currentColor"/>''',
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
