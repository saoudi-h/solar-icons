// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `scissors-square` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0LjUwMDggMTcuMUw4IDZNMTggMTYuMkMxOCAxNy4xOTQxIDE3LjE2MDUgMTggMTYuMTI1IDE4QzE1LjA4OTUgMTggMTQuMjUgMTcuMTk0MSAxNC4yNSAxNi4yQzE0LjI1IDE1LjIwNTkgMTUuMDg5NSAxNC40IDE2LjEyNSAxNC40QzE3LjE2MDUgMTQuNCAxOCAxNS4yMDU5IDE4IDE2LjJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkuNDk5MTYgMTcuMUwxNiA2TTYgMTYuMkM2IDE3LjE5NDEgNi44Mzk0NyAxOCA3Ljg3NSAxOEM4LjkxMDUzIDE4IDkuNzUgMTcuMTk0MSA5Ljc1IDE2LjJDOS43NSAxNS4yMDU5IDguOTEwNTMgMTQuNCA3Ljg3NSAxNC40QzYuODM5NDcgMTQuNCA2IDE1LjIwNTkgNiAxNi4yWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDEyQzIgNy4yODU5NSAyIDQuOTI4OTMgMy40NjQ0NyAzLjQ2NDQ3QzQuOTI4OTMgMiA3LjI4NTk1IDIgMTIgMkMxNi43MTQgMiAxOS4wNzExIDIgMjAuNTM1NSAzLjQ2NDQ3QzIyIDQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC41MzU1IDIwLjUzNTVDMTkuMDcxMSAyMiAxNi43MTQgMjIgMTIgMjJDNy4yODU5NSAyMiA0LjkyODkzIDIyIDMuNDY0NDcgMjAuNTM1NUMyIDE5LjA3MTEgMiAxNi43MTQgMiAxMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class ScissorsSquareLinearIcon extends StatelessWidget {
  /// Creates the `scissors-square` icon in the linear style.
  const ScissorsSquareLinearIcon({
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
    name: 'scissors-square',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14.5008 17.1L8 6M18 16.2C18 17.1941 17.1605 18 16.125 18C15.0895 18 14.25 17.1941 14.25 16.2C14.25 15.2059 15.0895 14.4 16.125 14.4C17.1605 14.4 18 15.2059 18 16.2Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.49916 17.1L16 6M6 16.2C6 17.1941 6.83947 18 7.875 18C8.91053 18 9.75 17.1941 9.75 16.2C9.75 15.2059 8.91053 14.4 7.875 14.4C6.83947 14.4 6 15.2059 6 16.2Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
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
