// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-video` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMiAxMkMyMiAxNy41MjI4IDE3LjUyMjggMjIgMTIgMjJDMTAuNDAwMyAyMiA4Ljg4ODM3IDIxLjYyNDQgNy41NDc1MyAyMC45NTY1QzcuMTkxMjEgMjAuNzc5MSA2Ljc4MzkzIDIwLjcyIDYuMzk5MzkgMjAuODIyOUw0LjE3MzM1IDIxLjQxODVDMy4yMDcwMSAyMS42NzcgMi4zMjI5NSAyMC43OTMgMi41ODE1MSAxOS44MjY3TDMuMTc3MTIgMTcuNjAwNkMzLjI4MDAxIDE3LjIxNjEgMy4yMjA5NCAxNi44MDg4IDMuMDQzNDYgMTYuNDUyNUMyLjM3NTYyIDE1LjExMTYgMiAxMy41OTk3IDIgMTJDMiA2LjQ3NzE1IDYuNDc3MTUgMiAxMiAyQzE3LjUyMjggMiAyMiA2LjQ3NzE1IDIyIDEyWk0xNiAxMkMxNiAxMS4xNTU1IDE1LjA3MzIgMTAuNTg2IDEzLjIxOTYgOS40NDY5NUMxMS4zNDA2IDguMjkyMzQgMTAuNDAxMSA3LjcxNTA0IDkuNzAwNTYgOC4xMzg5MUM5IDguNTYyNzkgOSA5LjcwODUzIDkgMTJDOSAxNC4yOTE1IDkgMTUuNDM3MiA5LjcwMDU2IDE1Ljg2MTFDMTAuNDAxMSAxNi4yODUgMTEuMzQwNiAxNS43MDc3IDEzLjIxOTYgMTQuNTUzMUMxNS4wNzMyIDEzLjQxNCAxNiAxMi44NDQ1IDE2IDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ChatRoundVideoBoldIcon extends StatelessWidget {
  /// Creates the `chat-round-video` icon in the bold style.
  const ChatRoundVideoBoldIcon({
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
    name: 'chat-round-video',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 17.5228 17.5228 22 12 22C10.4003 22 8.88837 21.6244 7.54753 20.9565C7.19121 20.7791 6.78393 20.72 6.39939 20.8229L4.17335 21.4185C3.20701 21.677 2.32295 20.793 2.58151 19.8267L3.17712 17.6006C3.28001 17.2161 3.22094 16.8088 3.04346 16.4525C2.37562 15.1116 2 13.5997 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12ZM16 12C16 11.1555 15.0732 10.586 13.2196 9.44695C11.3406 8.29234 10.4011 7.71504 9.70056 8.13891C9 8.56279 9 9.70853 9 12C9 14.2915 9 15.4372 9.70056 15.8611C10.4011 16.285 11.3406 15.7077 13.2196 14.5531C15.0732 13.414 16 12.8445 16 12Z" fill="currentColor"/>''',
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
