// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bag` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwLjIyMzYgMTIuNTI1N0MxOS42Mzg0IDkuNDA0NTIgMTkuMzQ1OCA3Ljg0MzkzIDE4LjIzNDkgNi45MjE5NkMxNy4xMjQgNiAxNS41MzYyIDYgMTIuMzYwNiA2SDExLjYzOTRDOC40NjM4NiA2IDYuODc2MDggNiA1Ljc2NTE4IDYuOTIxOTZDNC42NTQyOCA3Ljg0MzkzIDQuMzYxNjcgOS40MDQ1MiAzLjc3NjQ1IDEyLjUyNTdDMi45NTM1MyAxNi45MTQ2IDIuNTQyMDcgMTkuMTA5MSAzLjc0MTY5IDIwLjU1NDVDNC45NDEzMSAyMiA3LjE3NDAyIDIyIDExLjYzOTQgMjJIMTIuMzYwNkMxNi44MjYgMjIgMTkuMDU4NyAyMiAyMC4yNTg0IDIwLjU1NDVDMjAuOTU0MyAxOS43MTU5IDIxLjEwOCAxOC42MjUyIDIwLjk1MzcgMTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSA2VjVDOSAzLjM0MzE1IDEwLjM0MzEgMiAxMiAyQzEzLjY1NjkgMiAxNSAzLjM0MzE1IDE1IDVWNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BagBrokenIcon extends StatelessWidget {
  /// Creates the `bag` icon in the broken style.
  const BagBrokenIcon({
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
    name: 'bag',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20.2236 12.5257C19.6384 9.40452 19.3458 7.84393 18.2349 6.92196C17.124 6 15.5362 6 12.3606 6H11.6394C8.46386 6 6.87608 6 5.76518 6.92196C4.65428 7.84393 4.36167 9.40452 3.77645 12.5257C2.95353 16.9146 2.54207 19.1091 3.74169 20.5545C4.94131 22 7.17402 22 11.6394 22H12.3606C16.826 22 19.0587 22 20.2584 20.5545C20.9543 19.7159 21.108 18.6252 20.9537 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 6V5C9 3.34315 10.3431 2 12 2C13.6569 2 15 3.34315 15 5V6" stroke="currentColor" stroke-linecap="round"/>''',
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
