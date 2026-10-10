// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-warning` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTMuNTk5NyAyLjM3NTYyIDE1LjExMTYgMy4wNDM0NiAxNi40NTI1QzMuMjIwOTQgMTYuODA4OCAzLjI4MDAxIDE3LjIxNjEgMy4xNzcxMiAxNy42MDA2TDIuNTgxNTEgMTkuODI2N0MyLjMyMjk1IDIwLjc5MyAzLjIwNzAxIDIxLjY3NyA0LjE3MzM1IDIxLjQxODVMNi4zOTkzOSAyMC44MjI5QzYuNzgzOTMgMjAuNzIgNy4xOTEyMSAyMC43NzkxIDcuNTQ3NTMgMjAuOTU2NUM4Ljg4ODM3IDIxLjYyNDQgMTAuNDAwMyAyMiAxMiAyMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDE1Ljc1QzEyLjQxNDIgMTUuNzUgMTIuNzUgMTYuMDg1OCAxMi43NSAxNi41QzEyLjc1IDE2LjkxNDIgMTIuNDE0MiAxNy4yNSAxMiAxNy4yNUMxMS41ODU4IDE3LjI1IDExLjI1IDE2LjkxNDIgMTEuMjUgMTYuNUMxMS4yNSAxNi4wODU4IDExLjU4NTggMTUuNzUgMTIgMTUuNzVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiA2Ljc1QzEyLjQxNDIgNi43NSAxMi43NSA3LjA4NTc5IDEyLjc1IDcuNVYxMy41QzEyLjc1IDEzLjkxNDIgMTIuNDE0MiAxNC4yNSAxMiAxNC4yNUMxMS41ODU4IDE0LjI1IDExLjI1IDEzLjkxNDIgMTEuMjUgMTMuNVY3LjVDMTEuMjUgNy4wODU3OSAxMS41ODU4IDYuNzUgMTIgNi43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ChatRoundWarningBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chat-round-warning` icon in the boldDuotone style.
  const ChatRoundWarningBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 15.75C12.4142 15.75 12.75 16.0858 12.75 16.5C12.75 16.9142 12.4142 17.25 12 17.25C11.5858 17.25 11.25 16.9142 11.25 16.5C11.25 16.0858 11.5858 15.75 12 15.75Z" fill="currentColor"/>
<path d="M12 6.75C12.4142 6.75 12.75 7.08579 12.75 7.5V13.5C12.75 13.9142 12.4142 14.25 12 14.25C11.5858 14.25 11.25 13.9142 11.25 13.5V7.5C11.25 7.08579 11.5858 6.75 12 6.75Z" fill="currentColor"/>''',
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
