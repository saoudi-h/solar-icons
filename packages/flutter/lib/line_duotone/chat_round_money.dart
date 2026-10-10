// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-money` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDIyQzE3LjUyMjggMjIgMjIgMTcuNTIyOCAyMiAxMkMyMiA2LjQ3NzE1IDE3LjUyMjggMiAxMiAyQzYuNDc3MTUgMiAyIDYuNDc3MTUgMiAxMkMyIDEzLjU5OTcgMi4zNzU2MiAxNS4xMTE2IDMuMDQzNDYgMTYuNDUyNUMzLjIyMDk0IDE2LjgwODggMy4yODAwMSAxNy4yMTYxIDMuMTc3MTIgMTcuNjAwNkwyLjU4MTUxIDE5LjgyNjdDMi4zMjI5NSAyMC43OTMgMy4yMDcwMSAyMS42NzcgNC4xNzMzNSAyMS40MTg1TDYuMzk5MzkgMjAuODIyOUM2Ljc4MzkzIDIwLjcyIDcuMTkxMjEgMjAuNzc5MSA3LjU0NzUzIDIwLjk1NjVDOC44ODgzNyAyMS42MjQ0IDEwLjQwMDMgMjIgMTIgMjJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMTUuMzMzM0MxMy4xMDQ2IDE1LjMzMzMgMTQgMTQuNTg3MSAxNCAxMy42NjY3QzE0IDEyLjc0NjIgMTMuMTA0NiAxMiAxMiAxMkMxMC44OTU0IDEyIDEwIDExLjI1MzggMTAgMTAuMzMzM0MxMCA5LjQxMjg2IDEwLjg5NTQgOC42NjY2NyAxMiA4LjY2NjY3TTEyIDE1LjMzMzNDMTAuODk1NCAxNS4zMzMzIDEwIDE0LjU4NzEgMTAgMTMuNjY2N00xMiAxNS4zMzMzVjE2TTEyIDhWOC42NjY2N00xMiA4LjY2NjY3QzEzLjEwNDYgOC42NjY2NyAxNCA5LjQxMjg2IDE0IDEwLjMzMzMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class ChatRoundMoneyLineDuotoneIcon extends StatelessWidget {
  /// Creates the `chat-round-money` icon in the lineDuotone style.
  const ChatRoundMoneyLineDuotoneIcon({
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
    name: 'chat-round-money',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39939 20.8229C6.78393 20.72 7.19121 20.7791 7.54753 20.9565C8.88837 21.6244 10.4003 22 12 22Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 15.3333C13.1046 15.3333 14 14.5871 14 13.6667C14 12.7462 13.1046 12 12 12C10.8954 12 10 11.2538 10 10.3333C10 9.41286 10.8954 8.66667 12 8.66667M12 15.3333C10.8954 15.3333 10 14.5871 10 13.6667M12 15.3333V16M12 8V8.66667M12 8.66667C13.1046 8.66667 14 9.41286 14 10.3333" stroke="currentColor" stroke-linecap="round"/>''',
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
