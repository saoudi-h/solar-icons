// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDIyQzE3LjUyMjggMjIgMjIgMTcuNTIyOCAyMiAxMkMyMiA2LjQ3NzE1IDE3LjUyMjggMiAxMiAyQzYuNDc3MTUgMiAyIDYuNDc3MTUgMiAxMkMyIDEzLjU5OTcgMi4zNzU2MiAxNS4xMTE2IDMuMDQzNDYgMTYuNDUyNUMzLjIyMDk0IDE2LjgwODggMy4yODAwMSAxNy4yMTYxIDMuMTc3MTIgMTcuNjAwNkwyLjU4MTUxIDE5LjgyNjdDMi4zMjI5NSAyMC43OTMgMy4yMDcwMSAyMS42NzcgNC4xNzMzNSAyMS40MTg1TDYuMzk5MzkgMjAuODIyOUM2Ljc4MzkzIDIwLjcyIDcuMTkxMjEgMjAuNzc5MSA3LjU0NzUzIDIwLjk1NjVDOC44ODgzNyAyMS42MjQ0IDEwLjQwMDMgMjIgMTIgMjJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik03LjUgMTEuMTA5M0M3LjUgMTIuNDc3NyA4LjgxODg0IDEzLjkxMzUgMTAuMDI4NiAxNC45NDI2QzEwLjg1MjQgMTUuNjQzNSAxMS4yNjQ0IDE1Ljk5MzkgMTIgMTUuOTkzOUMxMi43MzU2IDE1Ljk5MzkgMTMuMTQ3NiAxNS42NDM1IDEzLjk3MTQgMTQuOTQyNkMxNS4xODEyIDEzLjkxMzUgMTYuNSAxMi40Nzc3IDE2LjUgMTEuMTA5M0MxNi41IDguNDMyMTIgMTQuMDI0OSA3LjQzMjYgMTIgOS41MDA2OUM5Ljk3NTA3IDcuNDMyNiA3LjUgOC40MzIxMiA3LjUgMTEuMTA5M1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ChatRoundLikeBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chat-round-like` icon in the boldDuotone style.
  const ChatRoundLikeBoldDuotoneIcon({
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
    name: 'chat-round-like',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7.5 11.1093C7.5 12.4777 8.81884 13.9135 10.0286 14.9426C10.8524 15.6435 11.2644 15.9939 12 15.9939C12.7356 15.9939 13.1476 15.6435 13.9714 14.9426C15.1812 13.9135 16.5 12.4777 16.5 11.1093C16.5 8.43212 14.0249 7.4326 12 9.50069C9.97507 7.4326 7.5 8.43212 7.5 11.1093Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39939 20.8229C6.78393 20.72 7.19121 20.7791 7.54753 20.9565C8.88837 21.6244 10.4003 22 12 22Z" fill="currentColor"/>''',
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
