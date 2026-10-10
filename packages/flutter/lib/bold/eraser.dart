// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `eraser` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExLjQwOTYgNS41MDUwNkMxMy4wNzk2IDMuODM1MDIgMTMuOTE0NiAzIDE0Ljk1MjIgM0MxNS45ODk5IDMgMTYuODI0OSAzLjgzNTAyIDE4LjQ5NDkgNS41MDUwNkMyMC4xNjUgNy4xNzUxIDIxIDguMDEwMTMgMjEgOS4wNDc3NkMyMSAxMC4wODU0IDIwLjE2NSAxMC45MjA0IDE4LjQ5NDkgMTIuNTkwNEwxNC4zMDE3IDE2Ljc4MzdMNy4yMTYzNCA5LjY5ODI4TDExLjQwOTYgNS41MDUwNloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTYuMTU1NyAxMC43NTlMMTMuMjQxMSAxNy44NDQzTDEyLjU5MDQgMTguNDk0OUMxMi4yMTI3IDE4Ljg3MjcgMTEuODc3NyAxOS4yMDc3IDExLjU3MzQgMTkuNUgyMUMyMS40MTQyIDE5LjUgMjEuNzUgMTkuODM1OCAyMS43NSAyMC4yNUMyMS43NSAyMC42NjQyIDIxLjQxNDIgMjEgMjEgMjFIOUM3Ljk4NDIzIDIwLjk3NDcgNy4xNDk0IDIwLjEzOTMgNS41MDUwNiAxOC40OTQ5QzMuODM1MDIgMTYuODI0OSAzIDE1Ljk4OTkgMyAxNC45NTIyQzMgMTMuOTE0NiAzLjgzNTAyIDEzLjA3OTYgNS41MDUwNiAxMS40MDk2TDYuMTU1NyAxMC43NTlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class EraserBoldIcon extends StatelessWidget {
  /// Creates the `eraser` icon in the bold style.
  const EraserBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.4096 5.50506C13.0796 3.83502 13.9146 3 14.9522 3C15.9899 3 16.8249 3.83502 18.4949 5.50506C20.165 7.1751 21 8.01013 21 9.04776C21 10.0854 20.165 10.9204 18.4949 12.5904L14.3017 16.7837L7.21634 9.69828L11.4096 5.50506Z" fill="currentColor"/>
<path d="M6.1557 10.759L13.2411 17.8443L12.5904 18.4949C12.2127 18.8727 11.8777 19.2077 11.5734 19.5H21C21.4142 19.5 21.75 19.8358 21.75 20.25C21.75 20.6642 21.4142 21 21 21H9C7.98423 20.9747 7.1494 20.1393 5.50506 18.4949C3.83502 16.8249 3 15.9899 3 14.9522C3 13.9146 3.83502 13.0796 5.50506 11.4096L6.1557 10.759Z" fill="currentColor"/>''',
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
