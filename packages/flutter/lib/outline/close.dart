// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `close` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4LjQ3NjUgNC40Njk2NEMxOC43Njk0IDQuMTc2ODEgMTkuMjQ0MiA0LjE3Njc3IDE5LjUzNzEgNC40Njk2NEMxOS44Mjk4IDQuNzYyNTMgMTkuODI5OCA1LjIzNzM0IDE5LjUzNzEgNS41MzAxOUwxMy4wNjM0IDEyLjAwMjhMMTkuNTMwMiAxOC40Njk2QzE5LjgyMjkgMTguNzYyNSAxOS44MjMgMTkuMjM3MyAxOS41MzAyIDE5LjUzMDJDMTkuMjM3NCAxOS44MjMgMTguNzYyNiAxOS44MjI5IDE4LjQ2OTcgMTkuNTMwMkwxMi4wMDI5IDEzLjA2MzRMNS41MzcwNSAxOS41MzAyQzUuMjQ0MiAxOS44MjMgNC43NjkzOSAxOS44MjI5IDQuNDc2NTEgMTkuNTMwMkM0LjE4MzYzIDE5LjIzNzMgNC4xODM2NyAxOC43NjI1IDQuNDc2NTEgMTguNDY5NkwxMC45NDIzIDEyLjAwMjhMNC40Njk2NyA1LjUzMDE5QzQuMTc2NzggNS4yMzczIDQuMTc2NzggNC43NjI1MyA0LjQ2OTY3IDQuNDY5NjRDNC43NjI1NyA0LjE3NjggNS4yMzczNCA0LjE3Njc3IDUuNTMwMjIgNC40Njk2NEwxMi4wMDI5IDEwLjk0MjNMMTguNDc2NSA0LjQ2OTY0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class CloseOutlineIcon extends StatelessWidget {
  /// Creates the `close` icon in the outline style.
  const CloseOutlineIcon({
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
    name: 'close',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M18.4765 4.46964C18.7694 4.17681 19.2442 4.17677 19.5371 4.46964C19.8298 4.76253 19.8298 5.23734 19.5371 5.53019L13.0634 12.0028L19.5302 18.4696C19.8229 18.7625 19.823 19.2373 19.5302 19.5302C19.2374 19.823 18.7626 19.8229 18.4697 19.5302L12.0029 13.0634L5.53705 19.5302C5.2442 19.823 4.76939 19.8229 4.47651 19.5302C4.18363 19.2373 4.18367 18.7625 4.47651 18.4696L10.9423 12.0028L4.46967 5.53019C4.17678 5.2373 4.17678 4.76253 4.46967 4.46964C4.76257 4.1768 5.23734 4.17677 5.53022 4.46964L12.0029 10.9423L18.4765 4.46964Z" fill="currentColor"/>''',
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
