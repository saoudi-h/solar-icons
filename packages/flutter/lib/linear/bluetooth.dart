// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bluetooth` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2LjI2MzMgOC4yNjIzOEwxMSAxMlY1LjIyNDU3QzExIDMuMzM4MTYgMTEgMi4zOTQ5NiAxMS42MDQ3IDIuMDg1NjFDMTIuMjA5MyAxLjc3NjI1IDEyLjk4MTMgMi4zMjQ0OCAxNC41MjUzIDMuNDIwOTNMMTYuMjYzMyA0LjY1NTFDMTcuNDIxMSA1LjQ3NzMxIDE4IDUuODg4NDIgMTggNi40NTg3NEMxOCA3LjAyOTA3IDE3LjQyMTEgNy40NDAxNyAxNi4yNjMzIDguMjYyMzhaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE2LjI2MzMgMTkuMzQ0OUwxNC41MjUzIDIwLjU3OTFDMTIuOTgxMyAyMS42NzU1IDEyLjIwOTMgMjIuMjIzOCAxMS42MDQ3IDIxLjkxNDRDMTEgMjEuNjA1IDExIDIwLjY2MTggMTEgMTguNzc1NFYxMkwxNi4yNjMzIDE1LjczNzZDMTcuNDIxMSAxNi41NTk4IDE4IDE2Ljk3MDkgMTggMTcuNTQxM0MxOCAxOC4xMTE2IDE3LjQyMTEgMTguNTIyNyAxNi4yNjMzIDE5LjM0NDlaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTExIDEyTDYgMTUuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMSAxMkw2IDguNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BluetoothLinearIcon extends StatelessWidget {
  /// Creates the `bluetooth` icon in the linear style.
  const BluetoothLinearIcon({
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
    name: 'bluetooth',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16.2633 8.26238L11 12V5.22457C11 3.33816 11 2.39496 11.6047 2.08561C12.2093 1.77625 12.9813 2.32448 14.5253 3.42093L16.2633 4.6551C17.4211 5.47731 18 5.88842 18 6.45874C18 7.02907 17.4211 7.44017 16.2633 8.26238Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.2633 19.3449L14.5253 20.5791C12.9813 21.6755 12.2093 22.2238 11.6047 21.9144C11 21.605 11 20.6618 11 18.7754V12L16.2633 15.7376C17.4211 16.5598 18 16.9709 18 17.5413C18 18.1116 17.4211 18.5227 16.2633 19.3449Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 12L6 15.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 12L6 8.5" stroke="currentColor" stroke-linecap="round"/>''',
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
