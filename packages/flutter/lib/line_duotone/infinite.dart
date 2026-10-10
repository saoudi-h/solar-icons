// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `infinite` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTAuMDAwNSA4QzkuMTY0NzQgNy4zNzIwOSA4LjEyNTgyIDcgNyA3QzQuMjM4NTggNyAyIDkuMjM4NTggMiAxMkMyIDE0Ljc2MTQgNC4yMzg1OCAxNyA3IDE3QzkuNzYxNDIgMTcgMTAuNSAxNSAxMiAxMkMxMy41IDkgMTQuMjM4NiA3IDE3IDdDMTkuNzYxNCA3IDIyIDkuMjM4NTggMjIgMTJDMjIgMTQuNzYxNCAxOS43NjE0IDE3IDE3IDE3QzE1Ljg3NDMgMTcgMTQuODM1NyAxNi42Mjc4IDE0IDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDEyQzEwLjUgMTUgOS43NjE0MiAxNyA3IDE3QzQuMjM4NTggMTcgMiAxNC43NjE0IDIgMTJDMiA5LjIzODU4IDQuMjM4NTggNyA3IDdDOC4xMjU4MiA3IDkuMTY0NzQgNy4zNzIwOSAxMC4wMDA1IDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class InfiniteLineDuotoneIcon extends StatelessWidget {
  /// Creates the `infinite` icon in the lineDuotone style.
  const InfiniteLineDuotoneIcon({
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
    name: 'infinite',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 12C10.5 15 9.76142 17 7 17C4.23858 17 2 14.7614 2 12C2 9.23858 4.23858 7 7 7C8.12582 7 9.16474 7.37209 10.0005 8" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.0005 8C9.16474 7.37209 8.12582 7 7 7C4.23858 7 2 9.23858 2 12C2 14.7614 4.23858 17 7 17C9.76142 17 10.5 15 12 12C13.5 9 14.2386 7 17 7C19.7614 7 22 9.23858 22 12C22 14.7614 19.7614 17 17 17C15.8743 17 14.8357 16.6278 14 16" stroke="currentColor" stroke-linecap="round"/>''',
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
