// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hourglass` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0Ljk1NzcgOS4wNzEwN0wxMiAxMkw5LjA0MjMgOS4wNzEwN0w5LjA0MjMgOS4wNzEwN0M2LjExOTgxIDYuMTc3IDQuNjU4NTcgNC43Mjk5NyA1LjA2NzY1IDMuNDgxNDlDNS4xMDI4MiAzLjM3NDE3IDUuMTQ2NDkgMy4yNjk3NyA1LjE5ODI1IDMuMTY5MjZDNS44MDA0NiAyIDcuODY2OTcgMiAxMiAyQzE2LjEzMyAyIDE4LjE5OTUgMiAxOC44MDE3IDMuMTY5MjZDMTguODUzNSAzLjI2OTc3IDE4Ljg5NzIgMy4zNzQxNyAxOC45MzIzIDMuNDgxNDlDMTkuMzQxNCA0LjcyOTk3IDE3Ljg4MDIgNi4xNzcgMTQuOTU3NyA5LjA3MTA3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTkuMDQyMyAxNC45Mjg5TDEyIDEyTDE0Ljk1NzcgMTQuOTI4OUMxNy44ODAyIDE3LjgyMyAxOS4zNDE0IDE5LjI3IDE4LjkzMjMgMjAuNTE4NUMxOC44OTcyIDIwLjYyNTggMTguODUzNSAyMC43MzAyIDE4LjgwMTcgMjAuODMwN0MxOC4xOTk1IDIyIDE2LjEzMyAyMiAxMiAyMkM3Ljg2Njk3IDIyIDUuODAwNDYgMjIgNS4xOTgyNSAyMC44MzA3QzUuMTQ2NDkgMjAuNzMwMiA1LjEwMjgyIDIwLjYyNTggNS4wNjc2NSAyMC41MTg1QzQuNjU4NTcgMTkuMjcgNi4xMTk4MSAxNy44MjMgOS4wNDIyOSAxNC45Mjg5TDkuMDQyMyAxNC45Mjg5WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class HourglassLineDuotoneIcon extends StatelessWidget {
  /// Creates the `hourglass` icon in the lineDuotone style.
  const HourglassLineDuotoneIcon({
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
    name: 'hourglass',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14.9577 9.07107L12 12L9.0423 9.07107L9.0423 9.07107C6.11981 6.177 4.65857 4.72997 5.06765 3.48149C5.10282 3.37417 5.14649 3.26977 5.19825 3.16926C5.80046 2 7.86697 2 12 2C16.133 2 18.1995 2 18.8017 3.16926C18.8535 3.26977 18.8972 3.37417 18.9323 3.48149C19.3414 4.72997 17.8802 6.177 14.9577 9.07107Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.0423 14.9289L12 12L14.9577 14.9289C17.8802 17.823 19.3414 19.27 18.9323 20.5185C18.8972 20.6258 18.8535 20.7302 18.8017 20.8307C18.1995 22 16.133 22 12 22C7.86697 22 5.80046 22 5.19825 20.8307C5.14649 20.7302 5.10282 20.6258 5.06765 20.5185C4.65857 19.27 6.11981 17.823 9.04229 14.9289L9.0423 14.9289Z" stroke="currentColor" stroke-linecap="round"/>''',
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
