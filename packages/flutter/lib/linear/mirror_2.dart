// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `mirror-2` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQuMzUgMTdDMy40OTQyMiAxNS41OTcgMyAxMy45NDEzIDMgMTIuMTY4QzMgNy4xMDQ2OCA3LjAyOTQ0IDMgMTIgM0MxNi45NzA2IDMgMjEgNy4xMDQ2OCAyMSAxMi4xNjhDMjEgMTMuOTQxMyAyMC41MDU4IDE1LjU5NyAxOS42NSAxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik01LjYzNjM2IDIySDE4LjM2MzZDMjAuMzcxOSAyMiAyMiAyMC4zNzE5IDIyIDE4LjM2MzZDMjIgMTcuNjEwNSAyMS4zODk1IDE3IDIwLjYzNjQgMTdIMTYuODI4NEMxNi4yOTggMTcgMTUuNzg5MyAxNy4yMTA3IDE1LjQxNDIgMTcuNTg1OEwxNC41ODU4IDE4LjQxNDJDMTQuMjEwNyAxOC43ODkzIDEzLjcwMiAxOSAxMy4xNzE2IDE5SDEwLjgyODRDMTAuMjk4IDE5IDkuNzg5MjkgMTguNzg5MyA5LjQxNDIxIDE4LjQxNDJMOC41ODU3OSAxNy41ODU4QzguMjEwNzEgMTcuMjEwNyA3LjcwMjAxIDE3IDcuMTcxNTcgMTdIMy4zNjM2NEMyLjYxMDUyIDE3IDIgMTcuNjEwNSAyIDE4LjM2MzZDMiAyMC4zNzE5IDMuNjI4MDYgMjIgNS42MzYzNiAyMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Mirror2LinearIcon extends StatelessWidget {
  /// Creates the `mirror-2` icon in the linear style.
  const Mirror2LinearIcon({
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
    name: 'mirror-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4.35 17C3.49422 15.597 3 13.9413 3 12.168C3 7.10468 7.02944 3 12 3C16.9706 3 21 7.10468 21 12.168C21 13.9413 20.5058 15.597 19.65 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.63636 22H18.3636C20.3719 22 22 20.3719 22 18.3636C22 17.6105 21.3895 17 20.6364 17H16.8284C16.298 17 15.7893 17.2107 15.4142 17.5858L14.5858 18.4142C14.2107 18.7893 13.702 19 13.1716 19H10.8284C10.298 19 9.78929 18.7893 9.41421 18.4142L8.58579 17.5858C8.21071 17.2107 7.70201 17 7.17157 17H3.36364C2.61052 17 2 17.6105 2 18.3636C2 20.3719 3.62806 22 5.63636 22Z" stroke="currentColor" stroke-linecap="round"/>''',
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
