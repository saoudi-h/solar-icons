// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-alt-arrow-down` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjQ2NDQ3IDMuNDY0NDdDMiA0LjkyODkzIDIgNy4yODU5NSAyIDEyQzIgMTYuNzE0IDIgMTkuMDcxMSAzLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyQzE2LjcxNCAyMiAxOS4wNzExIDIyIDIwLjUzNTUgMjAuNTM1NUMyMiAxOS4wNzExIDIyIDE2LjcxNCAyMiAxMkMyMiA3LjI4NTk1IDIyIDQuOTI4OTMgMjAuNTM1NSAzLjQ2NDQ3QzE5LjA3MTEgMiAxNi43MTQgMiAxMiAyQzcuMjg1OTUgMiA0LjkyODkzIDIgMy40NjQ0NyAzLjQ2NDQ3Wk04LjQ2OTY3IDkuOTY5NjdDOC43NjI1NiA5LjY3Njc4IDkuMjM3NDQgOS42NzY3OCA5LjUzMDMzIDkuOTY5NjdMMTIgMTIuNDM5M0wxNC40Njk3IDkuOTY5NjdDMTQuNzYyNiA5LjY3Njc4IDE1LjIzNzQgOS42NzY3OCAxNS41MzAzIDkuOTY5NjdDMTUuODIzMiAxMC4yNjI2IDE1LjgyMzIgMTAuNzM3NCAxNS41MzAzIDExLjAzMDNMMTIuNTMwMyAxNC4wMzAzQzEyLjM4OTcgMTQuMTcxIDEyLjE5ODkgMTQuMjUgMTIgMTQuMjVDMTEuODAxMSAxNC4yNSAxMS42MTAzIDE0LjE3MSAxMS40Njk3IDE0LjAzMDNMOC40Njk2NyAxMS4wMzAzQzguMTc2NzggMTAuNzM3NCA4LjE3Njc4IDEwLjI2MjYgOC40Njk2NyA5Ljk2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class SquareAltArrowDownBoldIcon extends StatelessWidget {
  /// Creates the `square-alt-arrow-down` icon in the bold style.
  const SquareAltArrowDownBoldIcon({
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
    name: 'square-alt-arrow-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447ZM8.46967 9.96967C8.76256 9.67678 9.23744 9.67678 9.53033 9.96967L12 12.4393L14.4697 9.96967C14.7626 9.67678 15.2374 9.67678 15.5303 9.96967C15.8232 10.2626 15.8232 10.7374 15.5303 11.0303L12.5303 14.0303C12.3897 14.171 12.1989 14.25 12 14.25C11.8011 14.25 11.6103 14.171 11.4697 14.0303L8.46967 11.0303C8.17678 10.7374 8.17678 10.2626 8.46967 9.96967Z" fill="currentColor"/>''',
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
