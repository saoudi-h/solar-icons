// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTIiIGN5PSIxMyIgcj0iOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMCAySDE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEzLjg4NzYgMTAuOTM0OEMxNC45NjI1IDExLjgxMTcgMTUuNSAxMi4yNTAxIDE1LjUgMTNDMTUuNSAxMy43NDk5IDE0Ljk2MjUgMTQuMTg4MyAxMy44ODc2IDE1LjA2NTJDMTMuNTkwOSAxNS4zMDczIDEzLjI5NjYgMTUuNTM1MiAxMy4wMjYxIDE1LjcyNTFDMTIuNzg4OCAxNS44OTE3IDEyLjUyMDEgMTYuMDY0IDEyLjI0MTkgMTYuMjMzMkMxMS4xNjk1IDE2Ljg4NTMgMTAuNjMzMyAxNy4yMTE0IDEwLjE1MjQgMTYuODUwNEM5LjY3MTUgMTYuNDg5NCA5LjYyNzc5IDE1LjczMzYgOS41NDAzOCAxNC4yMjIyQzkuNTE1NjYgMTMuNzk0NyA5LjUgMTMuMzc1NyA5LjUgMTNDOS41IDEyLjYyNDMgOS41MTU2NiAxMi4yMDUzIDkuNTQwMzggMTEuNzc3OEM5LjYyNzc5IDEwLjI2NjQgOS42NzE1IDkuNTEwNjEgMTAuMTUyNCA5LjE0OTZDMTAuNjMzMyA4Ljc4ODU5IDExLjE2OTUgOS4xMTQ2NiAxMi4yNDE5IDkuNzY2NzlDMTIuNTIwMSA5LjkzNTk3IDEyLjc4ODggMTAuMTA4MyAxMy4wMjYxIDEwLjI3NDlDMTMuMjk2NiAxMC40NjQ4IDEzLjU5MDkgMTAuNjkyNyAxMy44ODc2IDEwLjkzNDhaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class StopwatchPlayLineDuotoneIcon extends StatelessWidget {
  /// Creates the `stopwatch-play` icon in the lineDuotone style.
  const StopwatchPlayLineDuotoneIcon({
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
    name: 'stopwatch-play',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M10 2H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.8876 10.9348C14.9625 11.8117 15.5 12.2501 15.5 13C15.5 13.7499 14.9625 14.1883 13.8876 15.0652C13.5909 15.3073 13.2966 15.5352 13.0261 15.7251C12.7888 15.8917 12.5201 16.064 12.2419 16.2332C11.1695 16.8853 10.6333 17.2114 10.1524 16.8504C9.6715 16.4894 9.62779 15.7336 9.54038 14.2222C9.51566 13.7947 9.5 13.3757 9.5 13C9.5 12.6243 9.51566 12.2053 9.54038 11.7778C9.62779 10.2664 9.6715 9.51061 10.1524 9.1496C10.6333 8.78859 11.1695 9.11466 12.2419 9.76679C12.5201 9.93597 12.7888 10.1083 13.0261 10.2749C13.2966 10.4648 13.5909 10.6927 13.8876 10.9348Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="13" r="9" stroke="currentColor" stroke-linecap="round"/>''',
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
