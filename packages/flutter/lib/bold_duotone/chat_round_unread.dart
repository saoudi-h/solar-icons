// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-unread` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDVDMjIgNi42NTY4NSAyMC42NTY5IDggMTkgOEMxNy4zNDMxIDggMTYgNi42NTY4NSAxNiA1QzE2IDMuMzQzMTUgMTcuMzQzMSAyIDE5IDJDMjAuNjU2OSAyIDIyIDMuMzQzMTUgMjIgNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTUuMjM0NyAyLjUzNDc2QzE0LjIyMDEgMi4xODgxIDEzLjEzMiAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTMuNTk5NyAyLjM3NTYyIDE1LjExMTYgMy4wNDM0NiAxNi40NTI1QzMuMjIwOTQgMTYuODA4OCAzLjI4MDAxIDE3LjIxNjEgMy4xNzcxMiAxNy42MDA2TDIuNTgxNTEgMTkuODI2N0MyLjMyMjk1IDIwLjc5MyAzLjIwNzAxIDIxLjY3NyA0LjE3MzM1IDIxLjQxODVMNi4zOTkzOCAyMC44MjI5QzYuNzgzOTMgMjAuNzIgNy4xOTEyMSAyMC43NzkxIDcuNTQ3NTMgMjAuOTU2NUM4Ljg4ODM2IDIxLjYyNDQgMTAuNDAwMyAyMiAxMiAyMkMxNy41MjI4IDIyIDIyIDE3LjUyMjggMjIgMTJDMjIgMTAuODY4IDIxLjgxMTkgOS43Nzk4NyAyMS40NjUyIDguNzY1MjZDMjAuNzU3MiA5LjIyOTgxIDE5LjkxMDEgOS41IDE5IDkuNUMxNi41MTQ3IDkuNSAxNC41IDcuNDg1MjggMTQuNSA1QzE0LjUgNC4wODk4NyAxNC43NzAyIDMuMjQyODQgMTUuMjM0NyAyLjUzNDc2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ChatRoundUnreadBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chat-round-unread` icon in the boldDuotone style.
  const ChatRoundUnreadBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M22 5C22 6.65685 20.6569 8 19 8C17.3431 8 16 6.65685 16 5C16 3.34315 17.3431 2 19 2C20.6569 2 22 3.34315 22 5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.2347 2.53476C14.2201 2.1881 13.132 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39938 20.8229C6.78393 20.72 7.19121 20.7791 7.54753 20.9565C8.88836 21.6244 10.4003 22 12 22C17.5228 22 22 17.5228 22 12C22 10.868 21.8119 9.77987 21.4652 8.76526C20.7572 9.22981 19.9101 9.5 19 9.5C16.5147 9.5 14.5 7.48528 14.5 5C14.5 4.08987 14.7702 3.24284 15.2347 2.53476Z" fill="currentColor"/>''',
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
