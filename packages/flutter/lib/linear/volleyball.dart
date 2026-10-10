// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `volleyball` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTcuNTIyOCA2LjQ3NzE1IDIyIDEyIDIyQzE3LjUyMjggMjIgMjIgMTcuNTIyOCAyMiAxMkMyMiA2LjQ3NzE1IDE3LjUyMjggMiAxMiAyWk0xMiAyTDExLjMxNDIgMy42NDU4NkMxMC4xNzYxIDYuMzc3MjYgMTAuNDMxNyA5LjQ5MDc1IDEyIDEyTTEyIDEySDEyLjA5MTdDMTUuNDcwNSAxMiAxOC42MjU4IDEzLjY4ODcgMjAuNSAxNi41TTEyIDEyTDExLjU2OTcgMTIuNTUzMkM5LjYzMjg1IDE1LjA0MzUgNi42NTQ3OCAxNi41IDMuNSAxNi41TTE4IDE0TDE3LjcwODcgMTQuMzIwNEMxNC43MDk3IDE3LjYxOTMgMTAuMTkxIDE5Ljc5MjggNS43MzI3IDE5Ljc5MjhNMjEuOTg3NyAxMS41TDIxLjI0MjYgMTAuNzQyNkMxOC41MjYxIDguMDI2MTIgMTQuODQxNyA2LjUgMTEgNi41TTcuNSAzLjA2NzI5QzUuOSA2LjkwNzI5IDUuOSAxMS4xNiA3LjUgMTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class VolleyballLinearIcon extends StatelessWidget {
  /// Creates the `volleyball` icon in the linear style.
  const VolleyballLinearIcon({
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
    name: 'volleyball',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2ZM12 2L11.3142 3.64586C10.1761 6.37726 10.4317 9.49075 12 12M12 12H12.0917C15.4705 12 18.6258 13.6887 20.5 16.5M12 12L11.5697 12.5532C9.63285 15.0435 6.65478 16.5 3.5 16.5M18 14L17.7087 14.3204C14.7097 17.6193 10.191 19.7928 5.7327 19.7928M21.9877 11.5L21.2426 10.7426C18.5261 8.02612 14.8417 6.5 11 6.5M7.5 3.06729C5.9 6.90729 5.9 11.16 7.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
