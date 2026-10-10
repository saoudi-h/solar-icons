// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAyMkMxNy41MjI4IDIyIDIyIDE3LjUyMjggMjIgMTJDMjIgNi40NzcxNSAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxMy41OTk3IDIuMzc1NjIgMTUuMTExNiAzLjA0MzQ2IDE2LjQ1MjVDMy4yMjA5NCAxNi44MDg4IDMuMjgwMDEgMTcuMjE2MSAzLjE3NzEyIDE3LjYwMDZMMi41ODE1MSAxOS44MjY3QzIuMzIyOTUgMjAuNzkzIDMuMjA3MDEgMjEuNjc3IDQuMTczMzUgMjEuNDE4NUw2LjM5OTM5IDIwLjgyMjlDNi43ODM5MyAyMC43MiA3LjE5MTIxIDIwLjc3OTEgNy41NDc1MyAyMC45NTY1QzguODg4MzcgMjEuNjI0NCAxMC40MDAzIDIyIDEyIDIyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDE1LjMzMzNDMTMuMTA0NiAxNS4zMzMzIDE0IDE0LjU4NzEgMTQgMTMuNjY2N0MxNCAxMi43NDYyIDEzLjEwNDYgMTIgMTIgMTJDMTAuODk1NCAxMiAxMCAxMS4yNTM4IDEwIDEwLjMzMzNDMTAgOS40MTI4NiAxMC44OTU0IDguNjY2NjcgMTIgOC42NjY2N00xMiAxNS4zMzMzQzEwLjg5NTQgMTUuMzMzMyAxMCAxNC41ODcxIDEwIDEzLjY2NjdNMTIgMTUuMzMzM1YxNk0xMiA4VjguNjY2NjdNMTIgOC42NjY2N0MxMy4xMDQ2IDguNjY2NjcgMTQgOS40MTI4NiAxNCAxMC4zMzMzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
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
