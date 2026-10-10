// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-warning` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyQzE3LjUyMjggMiAyMiA2LjQ3NzE1IDIyIDEyQzIyIDE3LjUyMjggMTcuNTIyOCAyMiAxMiAyMkMxMC40MDAzIDIyIDguODg4NjcgMjEuNjIzOSA3LjU0Nzg1IDIwLjk1NjFDNy4xOTE1MyAyMC43Nzg2IDYuNzgzOTYgMjAuNzIwNCA2LjM5OTQxIDIwLjgyMzJMNC4xNzM4MyAyMS40MTg5QzMuMjA3NDkgMjEuNjc3NSAyLjMyMjUgMjAuNzkyNSAyLjU4MTA1IDE5LjgyNjJMMy4xNzY3NiAxNy42MDA2QzMuMjc5NjUgMTcuMjE2IDMuMjIxNDIgMTYuODA4NSAzLjA0Mzk1IDE2LjQ1MjFDMi4zNzYxMiAxNS4xMTEzIDIgMTMuNTk5NyAyIDEyQzIgNi40NzcxNSA2LjQ3NzE1IDIgMTIgMlpNMTIgMTUuNzVDMTEuNTg1OCAxNS43NSAxMS4yNSAxNi4wODU4IDExLjI1IDE2LjVDMTEuMjUgMTYuOTE0MiAxMS41ODU4IDE3LjI1IDEyIDE3LjI1QzEyLjQxNDIgMTcuMjUgMTIuNzUgMTYuOTE0MiAxMi43NSAxNi41QzEyLjc1IDE2LjA4NTggMTIuNDE0MiAxNS43NSAxMiAxNS43NVpNMTIgNi43NUMxMS41ODU4IDYuNzUgMTEuMjUgNy4wODU3OSAxMS4yNSA3LjVWMTMuNUMxMS4yNSAxMy45MTQyIDExLjU4NTggMTQuMjUgMTIgMTQuMjVDMTIuNDE0MiAxNC4yNSAxMi43NSAxMy45MTQyIDEyLjc1IDEzLjVWNy41QzEyLjc1IDcuMDg1NzkgMTIuNDE0MiA2Ljc1IDEyIDYuNzVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ChatRoundWarningBoldIcon extends StatelessWidget {
  /// Creates the `chat-round-warning` icon in the bold style.
  const ChatRoundWarningBoldIcon({
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
    name: 'chat-round-warning',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C10.4003 22 8.88867 21.6239 7.54785 20.9561C7.19153 20.7786 6.78396 20.7204 6.39941 20.8232L4.17383 21.4189C3.20749 21.6775 2.3225 20.7925 2.58105 19.8262L3.17676 17.6006C3.27965 17.216 3.22142 16.8085 3.04395 16.4521C2.37612 15.1113 2 13.5997 2 12C2 6.47715 6.47715 2 12 2ZM12 15.75C11.5858 15.75 11.25 16.0858 11.25 16.5C11.25 16.9142 11.5858 17.25 12 17.25C12.4142 17.25 12.75 16.9142 12.75 16.5C12.75 16.0858 12.4142 15.75 12 15.75ZM12 6.75C11.5858 6.75 11.25 7.08579 11.25 7.5V13.5C11.25 13.9142 11.5858 14.25 12 14.25C12.4142 14.25 12.75 13.9142 12.75 13.5V7.5C12.75 7.08579 12.4142 6.75 12 6.75Z" fill="currentColor"/>''',
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
