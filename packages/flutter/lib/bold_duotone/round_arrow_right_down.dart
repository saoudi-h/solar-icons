// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-arrow-right-down` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMkMyMiAxNy41MjI4IDE3LjUyMjggMjIgMTIgMjJDNi40NzcxNSAyMiAyIDE3LjUyMjggMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMC41IDE1Ljc1QzEwLjA4NTggMTUuNzUgOS43NSAxNS40MTQyIDkuNzUgMTVDOS43NSAxNC41ODU4IDEwLjA4NTggMTQuMjUgMTAuNSAxNC4yNUgxMy4xODkzTDguNDY5NjcgOS41MzAzM0M4LjE3Njc4IDkuMjM3NDQgOC4xNzY3OCA4Ljc2MjU2IDguNDY5NjcgOC40Njk2N0M4Ljc2MjU2IDguMTc2NzggOS4yMzc0NCA4LjE3Njc4IDkuNTMwMzMgOC40Njk2N0wxNC4yNSAxMy4xODkzVjEwLjVDMTQuMjUgMTAuMDg1OCAxNC41ODU4IDkuNzUgMTUgOS43NUMxNS40MTQyIDkuNzUgMTUuNzUgMTAuMDg1OCAxNS43NSAxMC41VjE1QzE1Ljc1IDE1LjQxNDIgMTUuNDE0MiAxNS43NSAxNSAxNS43NUgxMC41WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class RoundArrowRightDownBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-arrow-right-down` icon in the boldDuotone style.
  const RoundArrowRightDownBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.5 15.75C10.0858 15.75 9.75 15.4142 9.75 15C9.75 14.5858 10.0858 14.25 10.5 14.25H13.1893L8.46967 9.53033C8.17678 9.23744 8.17678 8.76256 8.46967 8.46967C8.76256 8.17678 9.23744 8.17678 9.53033 8.46967L14.25 13.1893V10.5C14.25 10.0858 14.5858 9.75 15 9.75C15.4142 9.75 15.75 10.0858 15.75 10.5V15C15.75 15.4142 15.4142 15.75 15 15.75H10.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2Z" fill="currentColor"/>''',
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
