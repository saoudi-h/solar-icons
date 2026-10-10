// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `download` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTggMjIuMDAwMkgxNkMxOC44Mjg0IDIyLjAwMDIgMjAuMjQyNiAyMi4wMDAyIDIxLjEyMTMgMjEuMTIxNUMyMiAyMC4yNDI5IDIyIDE4LjgyODYgMjIgMTYuMDAwMlYxNS4wMDAyQzIyIDEyLjE3MTggMjIgMTAuNzU3NiAyMS4xMjEzIDkuODc4OUMyMC4zNTI5IDkuMTEwNTEgMTkuMTc1IDkuMDE0MDYgMTcgOS4wMDE5NU03IDkuMDAxOTVDNC44MjQ5NyA5LjAxNDA2IDMuNjQ3MDYgOS4xMTA1MSAyLjg3ODY4IDkuODc4ODlDMiAxMC43NTc2IDIgMTIuMTcxOCAyIDE1LjAwMDJMMiAxNi4wMDAyQzIgMTguODI4NiAyIDIwLjI0MjkgMi44Nzg2OCAyMS4xMjE1QzMuMTc4NDggMjEuNDIxMyAzLjU0MDYyIDIxLjYxODggNCAyMS43NDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMkwxMiAxNU0xNSAxMS41TDEyIDE1TDkgMTEuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class DownloadBrokenIcon extends StatelessWidget {
  /// Creates the `download` icon in the broken style.
  const DownloadBrokenIcon({
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
    name: 'download',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 22.0002H16C18.8284 22.0002 20.2426 22.0002 21.1213 21.1215C22 20.2429 22 18.8286 22 16.0002V15.0002C22 12.1718 22 10.7576 21.1213 9.8789C20.3529 9.11051 19.175 9.01406 17 9.00195M7 9.00195C4.82497 9.01406 3.64706 9.11051 2.87868 9.87889C2 10.7576 2 12.1718 2 15.0002L2 16.0002C2 18.8286 2 20.2429 2.87868 21.1215C3.17848 21.4213 3.54062 21.6188 4 21.749" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2L12 15M15 11.5L12 15L9 11.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
