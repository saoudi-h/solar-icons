// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bell` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4Ljc0OTEgOS43MDk1N1Y5LjAwNDk2QzE4Ljc0OTEgNS4xMzYyMyAxNS43Mjc0IDIgMTIgMkM4LjI3MjU2IDIgNS4yNTA4NyA1LjEzNjIzIDUuMjUwODcgOS4wMDQ5NlY5LjcwOTU3QzUuMjUwODcgMTAuNTU1MiA1LjAwOTcyIDExLjM4MTggNC41NTc4IDEyLjA4NTRMMy40NTAzNiAxMy44MDk1QzIuNDM4ODIgMTUuMzg0MyAzLjIxMTA1IDE3LjUyNDkgNC45NzAzNiAxOC4wMjI5QzkuNTcyNzQgMTkuMzI1NyAxNC40MjczIDE5LjMyNTcgMTkuMDI5NiAxOC4wMjI5QzIwLjc4OSAxNy41MjQ5IDIxLjU2MTIgMTUuMzg0MyAyMC41NDk2IDEzLjgwOTVMMTkuNDQyMiAxMi4wODU0QzE4Ljk5MDMgMTEuMzgxOCAxOC43NDkxIDEwLjU1NTIgMTguNzQ5MSA5LjcwOTU3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTcuNSAxOUM4LjE1NTAzIDIwLjc0NzggOS45MjI0NiAyMiAxMiAyMkMxNC4wNzc1IDIyIDE1Ljg0NSAyMC43NDc4IDE2LjUgMTkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BellLineDuotoneIcon extends StatelessWidget {
  /// Creates the `bell` icon in the lineDuotone style.
  const BellLineDuotoneIcon({
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
    name: 'bell',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M18.7491 9.70957V9.00496C18.7491 5.13623 15.7274 2 12 2C8.27256 2 5.25087 5.13623 5.25087 9.00496V9.70957C5.25087 10.5552 5.00972 11.3818 4.5578 12.0854L3.45036 13.8095C2.43882 15.3843 3.21105 17.5249 4.97036 18.0229C9.57274 19.3257 14.4273 19.3257 19.0296 18.0229C20.789 17.5249 21.5612 15.3843 20.5496 13.8095L19.4422 12.0854C18.9903 11.3818 18.7491 10.5552 18.7491 9.70957Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M7.5 19C8.15503 20.7478 9.92246 22 12 22C14.0775 22 15.845 20.7478 16.5 19" stroke="currentColor" stroke-linecap="round"/>''',
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
