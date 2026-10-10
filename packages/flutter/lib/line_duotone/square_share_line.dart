// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-share-line` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjIgMTMuOTk3OUMyMS45NzExIDE3LjQxMTkgMjEuNzgxNSAxOS4yOTQgMjAuNTQwNCAyMC41MzUyQzE5LjA3NTUgMjIgMTYuNzE3OSAyMiAxMi4wMDI2IDIyQzcuMjg3MzMgMjIgNC45Mjk3IDIyIDMuNDY0ODUgMjAuNTM1MkMyIDE5LjA3MDMgMiAxNi43MTI3IDIgMTEuOTk3NEMyIDcuMjgyMTIgMiA0LjkyNDQ4IDMuNDY0ODUgMy40NTk2M0M0LjcwNTk5IDIuMjE4NDggNi41ODgwNyAyLjAyODk1IDEwLjAwMjEgMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiA3SDE0QzEyLjE4MjQgNyAxMS4wODY3IDcuODkyMDIgMTAuNjgwNCA4LjMwMDI5QzEwLjU1NDYgOC40MjY3MyAxMC40OTE3IDguNDg5OTYgMTAuNDkwOCA4LjQ5MDgyQzEwLjQ5IDguNDkxNjggMTAuNDI2NyA4LjU1NDU5IDEwLjMwMDMgOC42ODA0MkM5Ljg5MjAyIDkuMDg2NzEgOSAxMC4xODI0IDkgMTJWMTVNMTcgMTJMMjIgN0wxNyAyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class SquareShareLineLineDuotoneIcon extends StatelessWidget {
  /// Creates the `square-share-line` icon in the lineDuotone style.
  const SquareShareLineLineDuotoneIcon({
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
    name: 'square-share-line',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 7H14C12.1824 7 11.0867 7.89202 10.6804 8.30029C10.5546 8.42673 10.4917 8.48996 10.4908 8.49082C10.49 8.49168 10.4267 8.55459 10.3003 8.68042C9.89202 9.08671 9 10.1824 9 12V15M17 12L22 7L17 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 13.9979C21.9711 17.4119 21.7815 19.294 20.5404 20.5352C19.0755 22 16.7179 22 12.0026 22C7.28733 22 4.9297 22 3.46485 20.5352C2 19.0703 2 16.7127 2 11.9974C2 7.28212 2 4.92448 3.46485 3.45963C4.70599 2.21848 6.58807 2.02895 10.0021 2" stroke="currentColor" stroke-linecap="round"/>''',
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
