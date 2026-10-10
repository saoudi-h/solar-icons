// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-arrow-left-up` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMy40NjQ0NyAzLjQ2NDQ3QzQuOTI4OTMgMiA3LjI4NTk1IDIgMTIgMkMxNi43MTQgMiAxOS4wNzExIDIgMjAuNTM1NSAzLjQ2NDQ3QzIyIDQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC41MzU1IDIwLjUzNTVDMTkuMDcxMSAyMiAxNi43MTQgMjIgMTIgMjJDNy4yODU5NSAyMiA0LjkyODkzIDIyIDMuNDY0NDcgMjAuNTM1NUMyIDE5LjA3MTEgMiAxNi43MTQgMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTguNDIxMzkgOS4xNzE4OEM4LjQyMTM5IDguNzU3NjYgOC43NTcxNyA4LjQyMTg4IDkuMTcxMzkgOC40MjE4OEwxMy40MTQgOC40MjE4OEMxMy44MjgyIDguNDIxODcgMTQuMTY0IDguNzU3NjYgMTQuMTY0IDkuMTcxODhDMTQuMTY0IDkuNTg2MDkgMTMuODI4MiA5LjkyMTg3IDEzLjQxNCA5LjkyMTg4SDEwLjk4MkwxNS4zNTg2IDE0LjI5ODRDMTUuNjUxNSAxNC41OTEzIDE1LjY1MTUgMTUuMDY2MiAxNS4zNTg2IDE1LjM1OTFDMTUuMDY1NyAxNS42NTIgMTQuNTkwOCAxNS42NTIgMTQuMjk3OSAxNS4zNTkxTDkuOTIxMzkgMTAuOTgyNUw5LjkyMTM5IDEzLjQxNDVDOS45MjEzOSAxMy44Mjg3IDkuNTg1NiAxNC4xNjQ1IDkuMTcxMzkgMTQuMTY0NUM4Ljc1NzE3IDE0LjE2NDUgOC40MjEzOSAxMy44Mjg3IDguNDIxMzkgMTMuNDE0NUw4LjQyMTM5IDkuMTcxODhaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class SquareArrowLeftUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `square-arrow-left-up` icon in the boldDuotone style.
  const SquareArrowLeftUpBoldDuotoneIcon({
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
    name: 'square-arrow-left-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.42139 9.17188C8.42139 8.75766 8.75717 8.42188 9.17139 8.42188L13.414 8.42188C13.8282 8.42187 14.164 8.75766 14.164 9.17188C14.164 9.58609 13.8282 9.92187 13.414 9.92188H10.982L15.3586 14.2984C15.6515 14.5913 15.6515 15.0662 15.3586 15.3591C15.0657 15.652 14.5908 15.652 14.2979 15.3591L9.92139 10.9825L9.92139 13.4145C9.92139 13.8287 9.5856 14.1645 9.17139 14.1645C8.75717 14.1645 8.42139 13.8287 8.42139 13.4145L8.42139 9.17188Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447Z" fill="currentColor"/>''',
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
