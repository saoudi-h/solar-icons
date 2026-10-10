// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `eraser` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEzLjc3MTMgMTcuMzE0TDYuNjg1OTYgMTAuMjI4N00xNS41NDI3IDE1LjU0MjdMMTIuNTkwNCAxOC40OTQ5QzEwLjkyMDQgMjAuMTY1IDEwLjA4NTQgMjEgOS4wNDc3NiAyMUM4LjAxMDEyIDIxIDcuMTc1MSAyMC4xNjUgNS41MDUwNiAxOC40OTQ5QzMuODM1MDIgMTYuODI0OSAzIDE1Ljk4OTkgMyAxNC45NTIyQzMgMTMuOTE0NiAzLjgzNTAyIDEzLjA3OTYgNS41MDUwNiAxMS40MDk2TDExLjQwOTYgNS41MDUwNkMxMy4wNzk2IDMuODM1MDIgMTMuOTE0NiAzIDE0Ljk1MjIgM0MxNS45ODk5IDMgMTYuODI0OSAzLjgzNTAyIDE4LjQ5NDkgNS41MDUwNkMyMC4xNjUgNy4xNzUxIDIxIDguMDEwMTIgMjEgOS4wNDc3NkMyMSA5Ljk3NDkgMjAuMzMzMyAxMC43NDAzIDE5IDEyLjA4NDEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSAyMUgyMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class EraserBrokenIcon extends StatelessWidget {
  /// Creates the `eraser` icon in the broken style.
  const EraserBrokenIcon({
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
    name: 'eraser',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13.7713 17.314L6.68596 10.2287M15.5427 15.5427L12.5904 18.4949C10.9204 20.165 10.0854 21 9.04776 21C8.01012 21 7.1751 20.165 5.50506 18.4949C3.83502 16.8249 3 15.9899 3 14.9522C3 13.9146 3.83502 13.0796 5.50506 11.4096L11.4096 5.50506C13.0796 3.83502 13.9146 3 14.9522 3C15.9899 3 16.8249 3.83502 18.4949 5.50506C20.165 7.1751 21 8.01012 21 9.04776C21 9.9749 20.3333 10.7403 19 12.0841" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 21H21" stroke="currentColor" stroke-linecap="round"/>''',
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
