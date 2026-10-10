// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `microphone` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDJDOC44MjQzNiAyIDYuMjUgNC41NzQzNiA2LjI1IDcuNzVWMTAuNzVDNi4yNSAxMy45MjU2IDguODI0MzYgMTYuNSAxMiAxNi41QzE0LjkyMTQgMTYuNSAxNy4zMzQgMTQuMzIxMyAxNy43MDE1IDExLjVMMTMgMTEuNUMxMi41ODU4IDExLjUgMTIuMjUgMTEuMTY0MiAxMi4yNSAxMC43NUMxMi4yNSAxMC4zMzU4IDEyLjU4NTggMTAgMTMgMTBMMTcuNzUgMTBWOC41SDEzQzEyLjU4NTggOC41IDEyLjI1IDguMTY0MjEgMTIuMjUgNy43NUMxMi4yNSA3LjMzNTc5IDEyLjU4NTggNyAxMyA3SDE3LjcwMTVDMTcuMzM0IDQuMTc4NzMgMTQuOTIxNCAyIDEyIDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNCA5QzQuNDE0MjEgOSA0Ljc1IDkuMzM1NzkgNC43NSA5Ljc1VjEwLjc1QzQuNzUgMTQuNzU0MSA3Ljk5NTk0IDE4IDEyIDE4QzE2LjAwNDEgMTggMTkuMjUgMTQuNzU0MSAxOS4yNSAxMC43NVY5Ljc1QzE5LjI1IDkuMzM1NzkgMTkuNTg1OCA5IDIwIDlDMjAuNDE0MiA5IDIwLjc1IDkuMzM1NzkgMjAuNzUgOS43NVYxMC43NUMyMC43NSAxNS4zMjk4IDE3LjIzMTQgMTkuMDg3OSAxMi43NSAxOS40NjgzVjIxLjc1QzEyLjc1IDIyLjE2NDIgMTIuNDE0MiAyMi41IDEyIDIyLjVDMTEuNTg1OCAyMi41IDExLjI1IDIyLjE2NDIgMTEuMjUgMjEuNzVWMTkuNDY4M0M2Ljc2ODYgMTkuMDg3OSAzLjI1IDE1LjMyOTggMy4yNSAxMC43NVY5Ljc1QzMuMjUgOS4zMzU3OSAzLjU4NTc5IDkgNCA5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MicrophoneBoldIcon extends StatelessWidget {
  /// Creates the `microphone` icon in the bold style.
  const MicrophoneBoldIcon({
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
    name: 'microphone',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 2C8.82436 2 6.25 4.57436 6.25 7.75V10.75C6.25 13.9256 8.82436 16.5 12 16.5C14.9214 16.5 17.334 14.3213 17.7015 11.5L13 11.5C12.5858 11.5 12.25 11.1642 12.25 10.75C12.25 10.3358 12.5858 10 13 10L17.75 10V8.5H13C12.5858 8.5 12.25 8.16421 12.25 7.75C12.25 7.33579 12.5858 7 13 7H17.7015C17.334 4.17873 14.9214 2 12 2Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M4 9C4.41421 9 4.75 9.33579 4.75 9.75V10.75C4.75 14.7541 7.99594 18 12 18C16.0041 18 19.25 14.7541 19.25 10.75V9.75C19.25 9.33579 19.5858 9 20 9C20.4142 9 20.75 9.33579 20.75 9.75V10.75C20.75 15.3298 17.2314 19.0879 12.75 19.4683V21.75C12.75 22.1642 12.4142 22.5 12 22.5C11.5858 22.5 11.25 22.1642 11.25 21.75V19.4683C6.7686 19.0879 3.25 15.3298 3.25 10.75V9.75C3.25 9.33579 3.58579 9 4 9Z" fill="currentColor"/>''',
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
