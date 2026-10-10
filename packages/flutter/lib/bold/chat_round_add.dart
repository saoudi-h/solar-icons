// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMkMyMiAxNy41MjI4IDE3LjUyMjggMjIgMTIgMjJDMTAuNDAwMyAyMiA4Ljg4ODY3IDIxLjYyMzkgNy41NDc4NSAyMC45NTYxQzcuMTkxNTMgMjAuNzc4NiA2Ljc4Mzk2IDIwLjcyMDQgNi4zOTk0MSAyMC44MjMyTDQuMTczODMgMjEuNDE4OUMzLjIwNzQ5IDIxLjY3NzUgMi4zMjI1IDIwLjc5MjUgMi41ODEwNSAxOS44MjYyTDMuMTc2NzYgMTcuNjAwNkMzLjI3OTY1IDE3LjIxNiAzLjIyMTQyIDE2LjgwODUgMy4wNDM5NSAxNi40NTIxQzIuMzc2MTIgMTUuMTExMyAyIDEzLjU5OTcgMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJaTTEyIDguMjVDMTEuNTg1OCA4LjI1IDExLjI1IDguNTg1NzkgMTEuMjUgOVYxMS4yNUg5QzguNTg1NzkgMTEuMjUgOC4yNTAwMSAxMS41ODU4IDguMjUgMTJDOC4yNSAxMi40MTQyIDguNTg1NzkgMTIuNzUgOSAxMi43NUgxMS4yNVYxNUMxMS4yNSAxNS40MTQyIDExLjU4NTggMTUuNzUgMTIgMTUuNzVDMTIuNDE0MiAxNS43NSAxMi43NSAxNS40MTQyIDEyLjc1IDE1VjEyLjc1SDE1QzE1LjQxNDIgMTIuNzUgMTUuNzUgMTIuNDE0MiAxNS43NSAxMkMxNS43NSAxMS41ODU4IDE1LjQxNDIgMTEuMjUgMTUgMTEuMjVIMTIuNzVWOUMxMi43NSA4LjU4NTc5IDEyLjQxNDIgOC4yNSAxMiA4LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ChatRoundAddBoldIcon extends StatelessWidget {
  /// Creates the `chat-round-add` icon in the bold style.
  const ChatRoundAddBoldIcon({
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
    name: 'chat-round-add',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C10.4003 22 8.88867 21.6239 7.54785 20.9561C7.19153 20.7786 6.78396 20.7204 6.39941 20.8232L4.17383 21.4189C3.20749 21.6775 2.3225 20.7925 2.58105 19.8262L3.17676 17.6006C3.27965 17.216 3.22142 16.8085 3.04395 16.4521C2.37612 15.1113 2 13.5997 2 12C2 6.47715 6.47715 2 12 2ZM12 8.25C11.5858 8.25 11.25 8.58579 11.25 9V11.25H9C8.58579 11.25 8.25001 11.5858 8.25 12C8.25 12.4142 8.58579 12.75 9 12.75H11.25V15C11.25 15.4142 11.5858 15.75 12 15.75C12.4142 15.75 12.75 15.4142 12.75 15V12.75H15C15.4142 12.75 15.75 12.4142 15.75 12C15.75 11.5858 15.4142 11.25 15 11.25H12.75V9C12.75 8.58579 12.4142 8.25 12 8.25Z" fill="currentColor"/>''',
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
