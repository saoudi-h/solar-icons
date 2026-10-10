// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-arrow-right` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjAuNTM1NSAyMC41MzU1QzIyIDE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyQzIyIDcuMjg1OTUgMjIgNC45Mjg5MyAyMC41MzU1IDMuNDY0NDdDMTkuMDcxMSAyIDE2LjcxNCAyIDEyIDJDNy4yODU5NSAyIDQuOTI4OTMgMiAzLjQ2NDQ3IDMuNDY0NDdDMiA0LjkyODkzIDIgNy4yODU5NSAyIDEyQzIgMTYuNzE0IDIgMTkuMDcxMSAzLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyQzE2LjcxNCAyMiAxOS4wNzExIDIyIDIwLjUzNTUgMjAuNTM1NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTggMTEuMjVDNy41ODU3OSAxMS4yNSA3LjI1IDExLjU4NTggNy4yNSAxMkM3LjI1IDEyLjQxNDIgNy41ODU3OSAxMi43NSA4IDEyLjc1SDE0LjE4OTNMMTIuNDY5NyAxNC40Njk3QzEyLjE3NjggMTQuNzYyNiAxMi4xNzY4IDE1LjIzNzQgMTIuNDY5NyAxNS41MzAzQzEyLjc2MjYgMTUuODIzMiAxMy4yMzc0IDE1LjgyMzIgMTMuNTMwMyAxNS41MzAzTDE2LjUzMDMgMTIuNTMwM0MxNi42NzEgMTIuMzg5NyAxNi43NSAxMi4xOTg5IDE2Ljc1IDEyQzE2Ljc1IDExLjgwMTEgMTYuNjcxIDExLjYxMDMgMTYuNTMwMyAxMS40Njk3TDEzLjUzMDMgOC40Njk2N0MxMy4yMzc0IDguMTc2NzggMTIuNzYyNiA4LjE3Njc4IDEyLjQ2OTcgOC40Njk2N0MxMi4xNzY4IDguNzYyNTYgMTIuMTc2OCA5LjIzNzQ0IDEyLjQ2OTcgOS41MzAzM0wxNC4xODkzIDExLjI1SDhaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class SquareArrowRightBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `square-arrow-right` icon in the boldDuotone style.
  const SquareArrowRightBoldDuotoneIcon({
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
    name: 'square-arrow-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8 11.25C7.58579 11.25 7.25 11.5858 7.25 12C7.25 12.4142 7.58579 12.75 8 12.75H14.1893L12.4697 14.4697C12.1768 14.7626 12.1768 15.2374 12.4697 15.5303C12.7626 15.8232 13.2374 15.8232 13.5303 15.5303L16.5303 12.5303C16.671 12.3897 16.75 12.1989 16.75 12C16.75 11.8011 16.671 11.6103 16.5303 11.4697L13.5303 8.46967C13.2374 8.17678 12.7626 8.17678 12.4697 8.46967C12.1768 8.76256 12.1768 9.23744 12.4697 9.53033L14.1893 11.25H8Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355Z" fill="currentColor"/>''',
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
