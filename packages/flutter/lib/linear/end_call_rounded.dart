// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `end-call-rounded` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDdDMTYuODA2OCA3IDE5LjU1OTggOS4wMzg4OSAyMC45MTcxIDEwLjUwMzJDMjEuNzIzNCAxMS4zNzMgMjIgMTIuNjEyNyAyMiAxMy44NTA0QzIyIDE1LjkxMDIgMjAuMjE4NCAxNy40MTUxIDE4LjM5MjggMTYuODk3M0wxNy4wNTMxIDE2LjUxNzNDMTUuODQ0MSAxNi4xNzQ0IDE1IDE0Ljk4MjYgMTUgMTMuNjE4NUMxNSAxMy42MTg1IDE1IDExLjk2MzkgMTIgMTEuOTYzOUM5IDExLjk2MzkgOSAxMy42MTg1IDkgMTMuNjE4NUM5IDE0Ljk4MjYgOC4xNTU5MSAxNi4xNzQ0IDYuOTQ2OSAxNi41MTczTDUuNjA3MiAxNi44OTczQzMuNzgxNTggMTcuNDE1MSAyIDE1LjkxMDIgMiAxMy44NTA0QzIgMTIuNjEyNyAyLjI3NjU5IDExLjM3MyAzLjA4Mjg5IDEwLjUwMzJDNC40NDAyMyA5LjAzODg4IDcuMTkzMjIgNyAxMiA3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class EndCallRoundedLinearIcon extends StatelessWidget {
  /// Creates the `end-call-rounded` icon in the linear style.
  const EndCallRoundedLinearIcon({
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
    name: 'end-call-rounded',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 7C16.8068 7 19.5598 9.03889 20.9171 10.5032C21.7234 11.373 22 12.6127 22 13.8504C22 15.9102 20.2184 17.4151 18.3928 16.8973L17.0531 16.5173C15.8441 16.1744 15 14.9826 15 13.6185C15 13.6185 15 11.9639 12 11.9639C9 11.9639 9 13.6185 9 13.6185C9 14.9826 8.15591 16.1744 6.9469 16.5173L5.6072 16.8973C3.78158 17.4151 2 15.9102 2 13.8504C2 12.6127 2.27659 11.373 3.08289 10.5032C4.44023 9.03888 7.19322 7 12 7Z" stroke="currentColor" stroke-linecap="round"/>''',
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
