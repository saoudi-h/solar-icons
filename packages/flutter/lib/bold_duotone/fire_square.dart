// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `fire-square` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMy40NjQ0NyAyMC41MzU1QzQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMiAyMkMxNi43MTQgMjIgMTkuMDcxMSAyMiAyMC41MzU1IDIwLjUzNTVDMjIgMTkuMDcxMSAyMiAxNi43MTQgMjIgMTJDMjIgNy4yODU5NSAyMiA0LjkyODkzIDIwLjUzNTUgMy40NjQ0N0MxOS4wNzExIDIgMTYuNzE0IDIgMTIgMkM3LjI4NTk1IDIgNC45Mjg5MyAyIDMuNDY0NDcgMy40NjQ0N0MyIDQuOTI4OTMgMiA3LjI4NTk1IDIgMTJDMiAxNi43MTQgMiAxOS4wNzExIDMuNDY0NDcgMjAuNTM1NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE3IDEyLjY2NjZDMTcgMTYuOTMzMyAxMy40NDQ0IDE4IDExLjY2NjcgMThDMTAuMTExMSAxOCA3IDE2LjkzMzMgNyAxMi42NjY2QzcgMTAuODEwOSA4LjA2MjkyIDkuNjMyNyA4Ljk1NTkzIDkuMDM5NjlDOS4zNjQyMSA4Ljc2ODU4IDkuODcyMDEgOC45NDE4NiA5Ljg5ODQxIDkuNDMxMjVDOS45NTYxNiAxMC41MDIgMTAuNzgxNCAxMS4zNjIyIDExLjQyMDUgMTAuNTAxMUMxMi4wMDU0IDkuNzEyOTMgMTIuMjk0MSA4LjY0MjY3IDEyLjI5NDEgNy45OTk5NUMxMi4yOTQxIDcuMDUzMTcgMTMuMjUyNSA2LjQ1MTUzIDE0LjAwMDggNy4wMzE2QzE1LjQ1OTMgOC4xNjIyNSAxNyAxMC4wNTU4IDE3IDEyLjY2NjZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class FireSquareBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `fire-square` icon in the boldDuotone style.
  const FireSquareBoldDuotoneIcon({
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
    name: 'fire-square',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17 12.6666C17 16.9333 13.4444 18 11.6667 18C10.1111 18 7 16.9333 7 12.6666C7 10.8109 8.06292 9.6327 8.95593 9.03969C9.36421 8.76858 9.87201 8.94186 9.89841 9.43125C9.95616 10.502 10.7814 11.3622 11.4205 10.5011C12.0054 9.71293 12.2941 8.64267 12.2941 7.99995C12.2941 7.05317 13.2525 6.45153 14.0008 7.0316C15.4593 8.16225 17 10.0558 17 12.6666Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355Z" fill="currentColor"/>''',
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
