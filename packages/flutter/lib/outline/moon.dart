// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `moon` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4wMTc0IDIuODAxNTdDNi4zNzA3MiAzLjI5MjIxIDIuNzUgNy4yMjMyOCAyLjc1IDEyQzIuNzUgMTcuMTA4NiA2Ljg5MTM3IDIxLjI1IDEyIDIxLjI1QzE2Ljc3NjcgMjEuMjUgMjAuNzA3OCAxNy42MjkzIDIxLjE5ODQgMTIuOTgyNkMxOS44NzE3IDE0LjY2NjkgMTcuODEyNiAxNS43NSAxNS41IDE1Ljc1QzExLjQ5NTkgMTUuNzUgOC4yNSAxMi41MDQxIDguMjUgOC41QzguMjUgNi4xODczOCA5LjMzMzE1IDQuMTI4MyAxMS4wMTc0IDIuODAxNTdaTTEuMjUgMTJDMS4yNSA2LjA2Mjk0IDYuMDYyOTQgMS4yNSAxMiAxLjI1QzEyLjcxNjYgMS4yNSAxMy4wNzU0IDEuODIxMjYgMTMuMTM2OCAyLjI3NjI3QzEzLjE5NiAyLjcxMzk4IDEzLjAzNDIgMy4yNzA2NSAxMi41MzEgMy41NzQ2N0MxMC44NjI3IDQuNTgyOCA5Ljc1IDYuNDExODIgOS43NSA4LjVDOS43NSAxMS42NzU2IDEyLjMyNDQgMTQuMjUgMTUuNSAxNC4yNUMxNy41ODgyIDE0LjI1IDE5LjQxNzIgMTMuMTM3MyAyMC40MjUzIDExLjQ2OUMyMC43MjkzIDEwLjk2NTggMjEuMjg2IDEwLjgwNCAyMS43MjM3IDEwLjg2MzJDMjIuMTc4NyAxMC45MjQ2IDIyLjc1IDExLjI4MzQgMjIuNzUgMTJDMjIuNzUgMTcuOTM3MSAxNy45MzcxIDIyLjc1IDEyIDIyLjc1QzYuMDYyOTQgMjIuNzUgMS4yNSAxNy45MzcxIDEuMjUgMTJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MoonOutlineIcon extends StatelessWidget {
  /// Creates the `moon` icon in the outline style.
  const MoonOutlineIcon({
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
    name: 'moon',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.0174 2.80157C6.37072 3.29221 2.75 7.22328 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C16.7767 21.25 20.7078 17.6293 21.1984 12.9826C19.8717 14.6669 17.8126 15.75 15.5 15.75C11.4959 15.75 8.25 12.5041 8.25 8.5C8.25 6.18738 9.33315 4.1283 11.0174 2.80157ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C12.7166 1.25 13.0754 1.82126 13.1368 2.27627C13.196 2.71398 13.0342 3.27065 12.531 3.57467C10.8627 4.5828 9.75 6.41182 9.75 8.5C9.75 11.6756 12.3244 14.25 15.5 14.25C17.5882 14.25 19.4172 13.1373 20.4253 11.469C20.7293 10.9658 21.286 10.804 21.7237 10.8632C22.1787 10.9246 22.75 11.2834 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12Z" fill="currentColor"/>''',
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
