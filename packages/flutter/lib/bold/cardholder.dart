// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cardholder` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yIDEyQzIgNy4yODU5NSAyIDQuOTI4OTMgMy40NjQ0NyAzLjQ2NDQ3QzQuOTI4OTMgMiA3LjI4NTk1IDIgMTIgMkMxNi43MTQgMiAxOS4wNzExIDIgMjAuNTM1NSAzLjQ2NDQ3QzIyIDQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC41MzU1IDIwLjUzNTVDMTkuMDcxMSAyMiAxNi43MTQgMjIgMTIgMjJDNy4yODU5NSAyMiA0LjkyODkzIDIyIDMuNDY0NDcgMjAuNTM1NUMyIDE5LjA3MTEgMiAxNi43MTQgMiAxMlpNOCAxNS4yNUM3LjU4NTc5IDE1LjI1IDcuMjUgMTUuNTg1OCA3LjI1IDE2QzcuMjUgMTYuNDE0MiA3LjU4NTc5IDE2Ljc1IDggMTYuNzVIMTZDMTYuNDE0MiAxNi43NSAxNi43NSAxNi40MTQyIDE2Ljc1IDE2QzE2Ljc1IDE1LjU4NTggMTYuNDE0MiAxNS4yNSAxNiAxNS4yNUg4Wk03LjU4NTc5IDYuNTg1NzlDOC4xNzE1NyA2IDkuMTE0MzggNiAxMSA2SDEzQzE0Ljg4NTYgNiAxNS44Mjg0IDYgMTYuNDE0MiA2LjU4NTc5QzE3IDcuMTcxNTcgMTcgOC4xMTQzOCAxNyAxMFYxMC4yNUgxOUMxOS40MTQyIDEwLjI1IDE5Ljc1IDEwLjU4NTggMTkuNzUgMTFDMTkuNzUgMTEuNDE0MiAxOS40MTQyIDExLjc1IDE5IDExLjc1SDVDNC41ODU3OSAxMS43NSA0LjI1IDExLjQxNDIgNC4yNSAxMUM0LjI1IDEwLjU4NTggNC41ODU3OSAxMC4yNSA1IDEwLjI1SDdWMTBDNyA4LjExNDM4IDcgNy4xNzE1NyA3LjU4NTc5IDYuNTg1NzlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class CardholderBoldIcon extends StatelessWidget {
  /// Creates the `cardholder` icon in the bold style.
  const CardholderBoldIcon({
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
    name: 'cardholder',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12ZM8 15.25C7.58579 15.25 7.25 15.5858 7.25 16C7.25 16.4142 7.58579 16.75 8 16.75H16C16.4142 16.75 16.75 16.4142 16.75 16C16.75 15.5858 16.4142 15.25 16 15.25H8ZM7.58579 6.58579C8.17157 6 9.11438 6 11 6H13C14.8856 6 15.8284 6 16.4142 6.58579C17 7.17157 17 8.11438 17 10V10.25H19C19.4142 10.25 19.75 10.5858 19.75 11C19.75 11.4142 19.4142 11.75 19 11.75H5C4.58579 11.75 4.25 11.4142 4.25 11C4.25 10.5858 4.58579 10.25 5 10.25H7V10C7 8.11438 7 7.17157 7.58579 6.58579Z" fill="currentColor"/>''',
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
