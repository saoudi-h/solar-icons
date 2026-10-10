// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `leaf` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgOS4wMDAwOEwxNi40MzE3IDQuNTY4NDJNMTIgMTQuNTAwMUwxOC42MTQzIDcuODg1ODJNMTIgMTkuNTAwMUwxOS44MTEgMTEuNjg5MSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAyMkMxNi40MTgzIDIyIDIwIDE4LjM1NDEgMjAgMTMuODU2N0MyMCA5LjM5NDUzIDE3LjQ0NjcgNC4xODc1OSAxMy40NjI5IDIuMzI1NTVDMTIuOTk4NiAyLjEwODUyIDEyLjQ5OTMgMiAxMiAyTTEyIDIyQzcuNTgxNzIgMjIgNCAxOC4zNTQxIDQgMTMuODU2N0M0IDkuMzk0NTMgNi41NTMzMiA0LjE4NzU5IDEwLjUzNzEgMi4zMjU1NUMxMS4wMDE0IDIuMTA4NTIgMTEuNTAwNyAyIDEyIDJNMTIgMjJWMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class LeafLineDuotoneIcon extends StatelessWidget {
  /// Creates the `leaf` icon in the lineDuotone style.
  const LeafLineDuotoneIcon({
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
    name: 'leaf',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 22C16.4183 22 20 18.3541 20 13.8567C20 9.39453 17.4467 4.18759 13.4629 2.32555C12.9986 2.10852 12.4993 2 12 2M12 22C7.58172 22 4 18.3541 4 13.8567C4 9.39453 6.55332 4.18759 10.5371 2.32555C11.0014 2.10852 11.5007 2 12 2M12 22V2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 9.00008L16.4317 4.56842M12 14.5001L18.6143 7.88582M12 19.5001L19.811 11.6891" stroke="currentColor" stroke-linecap="round"/>''',
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
