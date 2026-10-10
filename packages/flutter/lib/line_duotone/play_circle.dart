// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `play-circle` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxMiIgY3k9IjEyIiByPSIxMCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMy44ODc2IDkuOTM0OEMxNC45NjI1IDEwLjgxMTcgMTUuNSAxMS4yNTAxIDE1LjUgMTJDMTUuNSAxMi43NDk5IDE0Ljk2MjUgMTMuMTg4MyAxMy44ODc2IDE0LjA2NTJDMTMuNTkwOSAxNC4zMDczIDEzLjI5NjYgMTQuNTM1MiAxMy4wMjYxIDE0LjcyNTFDMTIuNzg4OCAxNC44OTE3IDEyLjUyMDEgMTUuMDY0IDEyLjI0MTkgMTUuMjMzMkMxMS4xNjk1IDE1Ljg4NTMgMTAuNjMzMyAxNi4yMTE0IDEwLjE1MjQgMTUuODUwNEM5LjY3MTUgMTUuNDg5NCA5LjYyNzc5IDE0LjczMzYgOS41NDAzOCAxMy4yMjIyQzkuNTE1NjYgMTIuNzk0NyA5LjUgMTIuMzc1NyA5LjUgMTJDOS41IDExLjYyNDMgOS41MTU2NiAxMS4yMDUzIDkuNTQwMzggMTAuNzc3OEM5LjYyNzc5IDkuMjY2MzYgOS42NzE1IDguNTEwNjEgMTAuMTUyNCA4LjE0OTZDMTAuNjMzMyA3Ljc4ODU5IDExLjE2OTUgOC4xMTQ2NiAxMi4yNDE5IDguNzY2NzlDMTIuNTIwMSA4LjkzNTk3IDEyLjc4ODggOS4xMDgzMSAxMy4wMjYxIDkuMjc0OTJDMTMuMjk2NiA5LjQ2NDgzIDEzLjU5MDkgOS42OTI3NCAxMy44ODc2IDkuOTM0OFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PlayCircleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `play-circle` icon in the lineDuotone style.
  const PlayCircleLineDuotoneIcon({
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
    name: 'play-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13.8876 9.9348C14.9625 10.8117 15.5 11.2501 15.5 12C15.5 12.7499 14.9625 13.1883 13.8876 14.0652C13.5909 14.3073 13.2966 14.5352 13.0261 14.7251C12.7888 14.8917 12.5201 15.064 12.2419 15.2332C11.1695 15.8853 10.6333 16.2114 10.1524 15.8504C9.6715 15.4894 9.62779 14.7336 9.54038 13.2222C9.51566 12.7947 9.5 12.3757 9.5 12C9.5 11.6243 9.51566 11.2053 9.54038 10.7778C9.62779 9.26636 9.6715 8.51061 10.1524 8.1496C10.6333 7.78859 11.1695 8.11466 12.2419 8.76679C12.5201 8.93597 12.7888 9.10831 13.0261 9.27492C13.2966 9.46483 13.5909 9.69274 13.8876 9.9348Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
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
