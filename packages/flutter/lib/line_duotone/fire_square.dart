// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `fire-square` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N0M0LjkyODkzIDIgNy4yODU5NSAyIDEyIDJDMTYuNzE0IDIgMTkuMDcxMSAyIDIwLjUzNTUgMy40NjQ0N0MyMiA0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuNTM1NSAyMC41MzU1QzE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyIDIyQzcuMjg1OTUgMjIgNC45Mjg5MyAyMiAzLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE3IDEyLjY2NjdDMTcgMTYuOTMzMyAxMy40NDQ0IDE4IDExLjY2NjcgMThDMTAuMTExMSAxOCA3IDE2LjkzMzMgNyAxMi42NjY3QzcgMTAuODEwOSA4LjA2MjkyIDkuNjMyNzYgOC45NTU5MyA5LjAzOTc2QzkuMzY0MjEgOC43Njg2NCA5Ljg3MjAxIDguOTQxOTMgOS44OTg0MSA5LjQzMTMxQzkuOTU2MTYgMTAuNTAyMSAxMC43ODE0IDExLjM2MjIgMTEuNDIwNSAxMC41MDExQzEyLjAwNTQgOS43MTI5OSAxMi4yOTQxIDguNjQyNzMgMTIuMjk0MSA4LjAwMDAxQzEyLjI5NDEgNy4wNTMyMyAxMy4yNTI1IDYuNDUxNTkgMTQuMDAwOCA3LjAzMTY2QzE1LjQ1OTMgOC4xNjIzMSAxNyAxMC4wNTU4IDE3IDEyLjY2NjdaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class FireSquareLineDuotoneIcon extends StatelessWidget {
  /// Creates the `fire-square` icon in the lineDuotone style.
  const FireSquareLineDuotoneIcon({
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
    name: 'fire-square',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M17 12.6667C17 16.9333 13.4444 18 11.6667 18C10.1111 18 7 16.9333 7 12.6667C7 10.8109 8.06292 9.63276 8.95593 9.03976C9.36421 8.76864 9.87201 8.94193 9.89841 9.43131C9.95616 10.5021 10.7814 11.3622 11.4205 10.5011C12.0054 9.71299 12.2941 8.64273 12.2941 8.00001C12.2941 7.05323 13.2525 6.45159 14.0008 7.03166C15.4593 8.16231 17 10.0558 17 12.6667Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
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
