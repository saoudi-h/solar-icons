// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bag` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuNzQxNTcgMjAuNTU0NUMzLjc0MTU2IDIwLjU1NDUgMy43NDE1NyAyMC41NTQ1IDMuNzQxNTcgMjAuNTU0NUM0Ljk0MTE5IDIyIDcuMTczODkgMjIgMTEuNjM5MyAyMkgxMi4zNjA1QzE2LjgyNTkgMjIgMTkuMDU4NiAyMiAyMC4yNTgyIDIwLjU1NDVNMy43NDE1NyAyMC41NTQ1QzIuNTQxOTQgMTkuMTA5MSAyLjk1MzQgMTYuOTE0NiAzLjc3NjMzIDEyLjUyNTdDNC4zNjE1NSA5LjQwNDUyIDQuNjU0MTYgNy44NDM5MyA1Ljc2NTA2IDYuOTIxOTZNMjAuMjU4MiAyMC41NTQ1QzIwLjI1ODIgMjAuNTU0NSAyMC4yNTgyIDIwLjU1NDUgMjAuMjU4MiAyMC41NTQ1QzIxLjQ1NzggMTkuMTA5MSAyMS4wNDY0IDE2LjkxNDYgMjAuMjIzNSAxMi41MjU3QzE5LjYzODIgOS40MDQ1MiAxOS4zNDU2IDcuODQzOTMgMTguMjM0NyA2LjkyMTk2TTE4LjIzNDcgNi45MjE5NkMxOC4yMzQ3IDYuOTIxOTYgMTguMjM0NyA2LjkyMTk2IDE4LjIzNDcgNi45MjE5NkMxNy4xMjM4IDYgMTUuNTM2MSA2IDEyLjM2MDUgNkgxMS42MzkzQzguNDYzNzQgNiA2Ljg3NTk2IDYgNS43NjUwNiA2LjkyMTk2QzUuNzY1MDYgNi45MjE5NiA1Ljc2NTA2IDYuOTIxOTYgNS43NjUwNiA2LjkyMTk2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNOSA2VjVDOSAzLjM0MzE1IDEwLjM0MzEgMiAxMiAyQzEzLjY1NjkgMiAxNSAzLjM0MzE1IDE1IDVWNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BagLineDuotoneIcon extends StatelessWidget {
  /// Creates the `bag` icon in the lineDuotone style.
  const BagLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.74157 20.5545C3.74156 20.5545 3.74157 20.5545 3.74157 20.5545C4.94119 22 7.17389 22 11.6393 22H12.3605C16.8259 22 19.0586 22 20.2582 20.5545M3.74157 20.5545C2.54194 19.1091 2.9534 16.9146 3.77633 12.5257C4.36155 9.40452 4.65416 7.84393 5.76506 6.92196M20.2582 20.5545C20.2582 20.5545 20.2582 20.5545 20.2582 20.5545C21.4578 19.1091 21.0464 16.9146 20.2235 12.5257C19.6382 9.40452 19.3456 7.84393 18.2347 6.92196M18.2347 6.92196C18.2347 6.92196 18.2347 6.92196 18.2347 6.92196C17.1238 6 15.5361 6 12.3605 6H11.6393C8.46374 6 6.87596 6 5.76506 6.92196C5.76506 6.92196 5.76506 6.92196 5.76506 6.92196" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 6V5C9 3.34315 10.3431 2 12 2C13.6569 2 15 3.34315 15 5V6" stroke="currentColor" stroke-linecap="round"/>''',
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
