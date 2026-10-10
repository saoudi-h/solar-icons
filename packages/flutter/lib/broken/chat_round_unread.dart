// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-unread` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMyIgY3k9IjMiIHI9IjMiIHRyYW5zZm9ybT0ibWF0cml4KC0xIDAgMCAxIDIyIDIpIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0IDIuMjAwMDRDMTMuMzUzOCAyLjA2ODg2IDEyLjY4NDkgMiAxMiAyQzEwLjE3ODYgMiA4LjQ3MDg3IDIuNDg2OTcgNyAzLjMzNzgyTTIxLjggMTBDMjEuOTMxMSAxMC42NDYyIDIyIDExLjMxNTEgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzEwLjQwMDMgMjIgOC44ODgzNyAyMS42MjQ0IDcuNTQ3NTMgMjAuOTU2NUM3LjE5MTIxIDIwLjc3OTEgNi43ODM5MyAyMC43MiA2LjM5OTM5IDIwLjgyMjlMNC4xNzMzNSAyMS40MTg1QzMuMjA3MDEgMjEuNjc3IDIuMzIyOTUgMjAuNzkzIDIuNTgxNTEgMTkuODI2N0wzLjE3NzEyIDE3LjYwMDZDMy4yODAwMSAxNy4yMTYxIDMuMjIwOTQgMTYuODA4OCAzLjA0MzQ2IDE2LjQ1MjVDMi4zNzU2MiAxNS4xMTE2IDIgMTMuNTk5NyAyIDEyQzIgMTAuMTc4NiAyLjQ4Njk3IDguNDcwODcgMy4zMzc4MiA3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class ChatRoundUnreadBrokenIcon extends StatelessWidget {
  /// Creates the `chat-round-unread` icon in the broken style.
  const ChatRoundUnreadBrokenIcon({
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
    name: 'chat-round-unread',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="3" cy="3" r="3" transform="matrix(-1 0 0 1 22 2)" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 2.20004C13.3538 2.06886 12.6849 2 12 2C10.1786 2 8.47087 2.48697 7 3.33782M21.8 10C21.9311 10.6462 22 11.3151 22 12C22 17.5228 17.5228 22 12 22C10.4003 22 8.88837 21.6244 7.54753 20.9565C7.19121 20.7791 6.78393 20.72 6.39939 20.8229L4.17335 21.4185C3.20701 21.677 2.32295 20.793 2.58151 19.8267L3.17712 17.6006C3.28001 17.2161 3.22094 16.8088 3.04346 16.4525C2.37562 15.1116 2 13.5997 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
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
