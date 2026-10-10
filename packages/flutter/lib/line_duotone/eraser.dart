// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `eraser` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExLjQwOTYgNS41MDUwNkMxMy4wNzk2IDMuODM1MDIgMTMuOTE0NiAzIDE0Ljk1MjIgM0MxNS45ODk5IDMgMTYuODI0OSAzLjgzNTAyIDE4LjQ5NDkgNS41MDUwNkMyMC4xNjUgNy4xNzUxIDIxIDguMDEwMTIgMjEgOS4wNDc3NkMyMSAxMC4wODU0IDIwLjE2NSAxMC45MjA0IDE4LjQ5NDkgMTIuNTkwNEwxMi41OTA0IDE4LjQ5NDlDMTAuOTIwNCAyMC4xNjUgMTAuMDg1NCAyMSA5LjA0Nzc2IDIxQzguMDEwMTIgMjEgNy4xNzUxIDIwLjE2NSA1LjUwNTA2IDE4LjQ5NDlDMy44MzUwMiAxNi44MjQ5IDMgMTUuOTg5OSAzIDE0Ljk1MjJDMyAxMy45MTQ2IDMuODM1MDIgMTMuMDc5NiA1LjUwNTA2IDExLjQwOTZMMTEuNDA5NiA1LjUwNTA2WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEzLjc3MTQgMTcuMzE0TDYuNjg2MDQgMTAuMjI4NiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTkgMjFIMjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class EraserLineDuotoneIcon extends StatelessWidget {
  /// Creates the `eraser` icon in the lineDuotone style.
  const EraserLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11.4096 5.50506C13.0796 3.83502 13.9146 3 14.9522 3C15.9899 3 16.8249 3.83502 18.4949 5.50506C20.165 7.1751 21 8.01012 21 9.04776C21 10.0854 20.165 10.9204 18.4949 12.5904L12.5904 18.4949C10.9204 20.165 10.0854 21 9.04776 21C8.01012 21 7.1751 20.165 5.50506 18.4949C3.83502 16.8249 3 15.9899 3 14.9522C3 13.9146 3.83502 13.0796 5.50506 11.4096L11.4096 5.50506Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13.7714 17.314L6.68604 10.2286" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M9 21H21" stroke="currentColor" stroke-linecap="round"/>''',
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
