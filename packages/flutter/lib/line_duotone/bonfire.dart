// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bonfire` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4IDguODA3NDVDMTggMTMuNzYxNSAxMy43MzMzIDE1IDExLjYgMTVDOS43MzMzMyAxNSA2IDEzLjc2MTUgNiA4LjgwNzQ1QzYgNi43MTAxNyA3LjIwODM5IDUuMzU4MjYgOC4yNjA5OSA0LjY1Mjc0QzguNzk2MzggNC4yOTM4OCA5LjQ4MzU0IDQuNTUyMDEgOS41NzI5NiA1LjE3NjI0QzkuNzUxMjcgNi40MjEgMTAuODc3NyA3LjM0OTQ0IDExLjU1OTYgNi4yNzk5OEMxMi4xNDI0IDUuMzY2MTQgMTIuMzUyOSA0LjEzMTY5IDEyLjM1MjkgMy4zODg5NkMxMi4zNTI5IDIuMjg5NjUgMTMuNTAzIDEuNTkxMDggMTQuNDAwOSAyLjI2NDZDMTYuMTUxMiAzLjU3NzQgMTggNS43NzYgMTggOC44MDc0NVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjAgMTVMNCAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTQgMTVMOSAxNy4xODc1TTIwIDIyTDE0LjUgMTkuNTkzOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE1IDEwQzE0LjggMTAuNjY2NyAxMy45MiAxMiAxMiAxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BonfireLineDuotoneIcon extends StatelessWidget {
  /// Creates the `bonfire` icon in the lineDuotone style.
  const BonfireLineDuotoneIcon({
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
    name: 'bonfire',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M18 8.80745C18 13.7615 13.7333 15 11.6 15C9.73333 15 6 13.7615 6 8.80745C6 6.71017 7.20839 5.35826 8.26099 4.65274C8.79638 4.29388 9.48354 4.55201 9.57296 5.17624C9.75127 6.421 10.8777 7.34944 11.5596 6.27998C12.1424 5.36614 12.3529 4.13169 12.3529 3.38896C12.3529 2.28965 13.503 1.59108 14.4009 2.2646C16.1512 3.5774 18 5.776 18 8.80745Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 15L4 22" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 15L9 17.1875M20 22L14.5 19.5938" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M15 10C14.8 10.6667 13.92 12 12 12" stroke="currentColor" stroke-linecap="round"/>''',
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
