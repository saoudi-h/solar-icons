// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-alt-arrow-left` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMy40NjQ0NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyQzIgNy4yODU5NSAyIDQuOTI4OTMgMy40NjQ0NyAzLjQ2NDQ3QzQuOTI4OTMgMiA3LjI4NTk2IDIgMTIgMkMxNi43MTQgMiAxOS4wNzExIDIgMjAuNTM1NSAzLjQ2NDQ3QzIyIDQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC41MzU1IDIwLjUzNTVDMTkuMDcxMSAyMiAxNi43MTQgMjIgMTIgMjJDNy4yODU5NiAyMiA0LjkyODkzIDIyIDMuNDY0NDcgMjAuNTM1NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE0LjAzMDMgMTQuNDY5N0MxNC4zMjMyIDE0Ljc2MjYgMTQuMzIzMiAxNS4yMzc0IDE0LjAzMDMgMTUuNTMwM0MxMy43Mzc0IDE1LjgyMzIgMTMuMjYyNiAxNS44MjMyIDEyLjk2OTcgMTUuNTMwM0w5Ljk2OTY3IDEyLjUzMDNDOS44MjkwMiAxMi4zODk3IDkuNzUgMTIuMTk4OSA5Ljc1IDEyQzkuNzUgMTEuODAxMSA5LjgyOTAyIDExLjYxMDMgOS45Njk2NyAxMS40Njk3TDEyLjk2OTcgOC40Njk2N0MxMy4yNjI2IDguMTc2NzggMTMuNzM3NCA4LjE3Njc4IDE0LjAzMDMgOC40Njk2N0MxNC4zMjMyIDguNzYyNTYgMTQuMzIzMiA5LjIzNzQ0IDE0LjAzMDMgOS41MzAzM0wxMS41NjA3IDEyTDE0LjAzMDMgMTQuNDY5N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class SquareAltArrowLeftBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `square-alt-arrow-left` icon in the boldDuotone style.
  const SquareAltArrowLeftBoldDuotoneIcon({
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
    name: 'square-alt-arrow-left',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.0303 14.4697C14.3232 14.7626 14.3232 15.2374 14.0303 15.5303C13.7374 15.8232 13.2626 15.8232 12.9697 15.5303L9.96967 12.5303C9.82902 12.3897 9.75 12.1989 9.75 12C9.75 11.8011 9.82902 11.6103 9.96967 11.4697L12.9697 8.46967C13.2626 8.17678 13.7374 8.17678 14.0303 8.46967C14.3232 8.76256 14.3232 9.23744 14.0303 9.53033L11.5607 12L14.0303 14.4697Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28596 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28596 22 4.92893 22 3.46447 20.5355Z" fill="currentColor"/>''',
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
