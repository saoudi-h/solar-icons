// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-arrow-left-down` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMy41IDE1Ljc1QzEzLjkxNDIgMTUuNzUgMTQuMjUgMTUuNDE0MiAxNC4yNSAxNUMxNC4yNSAxNC41ODU4IDEzLjkxNDIgMTQuMjUgMTMuNSAxNC4yNUgxMC44MTA3TDE1LjUzMDMgOS41MzAzM0MxNS44MjMyIDkuMjM3NDQgMTUuODIzMiA4Ljc2MjU2IDE1LjUzMDMgOC40Njk2N0MxNS4yMzc0IDguMTc2NzggMTQuNzYyNiA4LjE3Njc4IDE0LjQ2OTcgOC40Njk2N0w5Ljc1IDEzLjE4OTNWMTAuNUM5Ljc1IDEwLjA4NTggOS40MTQyMSA5Ljc1IDkgOS43NUM4LjU4NTc5IDkuNzUgOC4yNSAxMC4wODU4IDguMjUgMTAuNVYxNUM4LjI1IDE1LjQxNDIgOC41ODU3OSAxNS43NSA5IDE1Ljc1SDEzLjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RoundArrowLeftDownBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-arrow-left-down` icon in the boldDuotone style.
  const RoundArrowLeftDownBoldDuotoneIcon({
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
    name: 'round-arrow-left-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.5 15.75C13.9142 15.75 14.25 15.4142 14.25 15C14.25 14.5858 13.9142 14.25 13.5 14.25H10.8107L15.5303 9.53033C15.8232 9.23744 15.8232 8.76256 15.5303 8.46967C15.2374 8.17678 14.7626 8.17678 14.4697 8.46967L9.75 13.1893V10.5C9.75 10.0858 9.41421 9.75 9 9.75C8.58579 9.75 8.25 10.0858 8.25 10.5V15C8.25 15.4142 8.58579 15.75 9 15.75H13.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2Z" fill="currentColor"/>''',
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
