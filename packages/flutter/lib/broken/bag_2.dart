// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bag-2` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE1IDExTDE2IDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkgMTFMOCAxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDZWNUM5IDMuMzQzMTUgMTAuMzQzMSAyIDEyIDJDMTMuNjU2OSAyIDE1IDMuMzQzMTUgMTUgNVY2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIwLjIyMzUgMTIuNTI1N0MxOS42MzgyIDkuNDA0NTIgMTkuMzQ1NiA3Ljg0MzkzIDE4LjIzNDcgNi45MjE5NkMxNy4xMjM4IDYgMTUuNTM2MSA2IDEyLjM2MDUgNkgxMS42MzkzQzguNDYzNzQgNiA2Ljg3NTk2IDYgNS43NjUwNiA2LjkyMTk2QzQuNjU0MTYgNy44NDM5MyA0LjM2MTU1IDkuNDA0NTIgMy43NzYzMyAxMi41MjU3QzIuOTUzNCAxNi45MTQ2IDIuNTQxOTQgMTkuMTA5MSAzLjc0MTU3IDIwLjU1NDVDNC45NDExOSAyMiA3LjE3Mzg5IDIyIDExLjYzOTMgMjJIMTIuMzYwNUMxNi44MjU5IDIyIDE5LjA1ODYgMjIgMjAuMjU4MiAyMC41NTQ1QzIwLjk1NDIgMTkuNzE1OSAyMS4xMDc5IDE4LjYyNTIgMjAuOTUzNiAxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class Bag2BrokenIcon extends StatelessWidget {
  /// Creates the `bag-2` icon in the broken style.
  const Bag2BrokenIcon({
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
    name: 'bag-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 11L16 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 11L8 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 6V5C9 3.34315 10.3431 2 12 2C13.6569 2 15 3.34315 15 5V6" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.2235 12.5257C19.6382 9.40452 19.3456 7.84393 18.2347 6.92196C17.1238 6 15.5361 6 12.3605 6H11.6393C8.46374 6 6.87596 6 5.76506 6.92196C4.65416 7.84393 4.36155 9.40452 3.77633 12.5257C2.9534 16.9146 2.54194 19.1091 3.74157 20.5545C4.94119 22 7.17389 22 11.6393 22H12.3605C16.8259 22 19.0586 22 20.2582 20.5545C20.9542 19.7159 21.1079 18.6252 20.9536 17" stroke="currentColor" stroke-linecap="round"/>''',
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
