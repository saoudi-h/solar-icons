// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `stopwatch` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyMkMxNi45NzA2IDIyIDIxIDE3Ljk3MDYgMjEgMTNDMjEgOC4wMjk0NCAxNi45NzA2IDQgMTIgNEM3LjAyOTQ0IDQgMyA4LjAyOTQ0IDMgMTNDMyAxNy45NzA2IDcuMDI5NDQgMjIgMTIgMjJaTTEyIDguMjVDMTIuNDE0MiA4LjI1IDEyLjc1IDguNTg1NzkgMTIuNzUgOVYxM0MxMi43NSAxMy40MTQyIDEyLjQxNDIgMTMuNzUgMTIgMTMuNzVDMTEuNTg1OCAxMy43NSAxMS4yNSAxMy40MTQyIDExLjI1IDEzVjlDMTEuMjUgOC41ODU3OSAxMS41ODU4IDguMjUgMTIgOC4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik05LjI1IDJDOS4yNSAxLjU4NTc5IDkuNTg1NzkgMS4yNSAxMCAxLjI1SDE0QzE0LjQxNDIgMS4yNSAxNC43NSAxLjU4NTc5IDE0Ljc1IDJDMTQuNzUgMi40MTQyMSAxNC40MTQyIDIuNzUgMTQgMi43NUgxMEM5LjU4NTc5IDIuNzUgOS4yNSAyLjQxNDIxIDkuMjUgMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class StopwatchBoldIcon extends StatelessWidget {
  /// Creates the `stopwatch` icon in the bold style.
  const StopwatchBoldIcon({
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
    name: 'stopwatch',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C16.9706 22 21 17.9706 21 13C21 8.02944 16.9706 4 12 4C7.02944 4 3 8.02944 3 13C3 17.9706 7.02944 22 12 22ZM12 8.25C12.4142 8.25 12.75 8.58579 12.75 9V13C12.75 13.4142 12.4142 13.75 12 13.75C11.5858 13.75 11.25 13.4142 11.25 13V9C11.25 8.58579 11.5858 8.25 12 8.25Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M9.25 2C9.25 1.58579 9.58579 1.25 10 1.25H14C14.4142 1.25 14.75 1.58579 14.75 2C14.75 2.41421 14.4142 2.75 14 2.75H10C9.58579 2.75 9.25 2.41421 9.25 2Z" fill="currentColor"/>''',
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
