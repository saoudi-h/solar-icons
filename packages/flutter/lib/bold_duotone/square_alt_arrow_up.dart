// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-alt-arrow-up` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjAuNTM1NSAzLjQ2NDQ3QzE5LjA3MTEgMiAxNi43MTQgMiAxMiAyQzcuMjg1OTUgMiA0LjkyODkzIDIgMy40NjQ0NyAzLjQ2NDQ3QzIgNC45Mjg5MyAyIDcuMjg1OTYgMiAxMkMyIDE2LjcxNCAyIDE5LjA3MTEgMy40NjQ0NyAyMC41MzU1QzQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMiAyMkMxNi43MTQgMjIgMTkuMDcxMSAyMiAyMC41MzU1IDIwLjUzNTVDMjIgMTkuMDcxMSAyMiAxNi43MTQgMjIgMTJDMjIgNy4yODU5NiAyMiA0LjkyODkzIDIwLjUzNTUgMy40NjQ0N1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE0LjQ2OTcgMTQuMDMwM0MxNC43NjI2IDE0LjMyMzIgMTUuMjM3NCAxNC4zMjMyIDE1LjUzMDMgMTQuMDMwM0MxNS44MjMyIDEzLjczNzQgMTUuODIzMiAxMy4yNjI2IDE1LjUzMDMgMTIuOTY5N0wxMi41MzAzIDkuOTY5NjdDMTIuMzg5NyA5LjgyOTAyIDEyLjE5ODkgOS43NSAxMiA5Ljc1QzExLjgwMTEgOS43NSAxMS42MTAzIDkuODI5MDIgMTEuNDY5NyA5Ljk2OTY3TDguNDY5NjcgMTIuOTY5N0M4LjE3Njc4IDEzLjI2MjYgOC4xNzY3OCAxMy43Mzc0IDguNDY5NjcgMTQuMDMwM0M4Ljc2MjU2IDE0LjMyMzIgOS4yMzc0NCAxNC4zMjMyIDkuNTMwMzMgMTQuMDMwM0wxMiAxMS41NjA3TDE0LjQ2OTcgMTQuMDMwM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class SquareAltArrowUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `square-alt-arrow-up` icon in the boldDuotone style.
  const SquareAltArrowUpBoldDuotoneIcon({
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
    name: 'square-alt-arrow-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.4697 14.0303C14.7626 14.3232 15.2374 14.3232 15.5303 14.0303C15.8232 13.7374 15.8232 13.2626 15.5303 12.9697L12.5303 9.96967C12.3897 9.82902 12.1989 9.75 12 9.75C11.8011 9.75 11.6103 9.82902 11.4697 9.96967L8.46967 12.9697C8.17678 13.2626 8.17678 13.7374 8.46967 14.0303C8.76256 14.3232 9.23744 14.3232 9.53033 14.0303L12 11.5607L14.4697 14.0303Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28596 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28596 22 4.92893 20.5355 3.46447Z" fill="currentColor"/>''',
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
