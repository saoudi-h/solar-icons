// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-check` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTMuNTk5NyAyLjM3NTYyIDE1LjExMTYgMy4wNDM0NiAxNi40NTI1QzMuMjIwOTQgMTYuODA4OCAzLjI4MDAxIDE3LjIxNjEgMy4xNzcxMiAxNy42MDA2TDIuNTgxNTEgMTkuODI2N0MyLjMyMjk1IDIwLjc5MyAzLjIwNzAxIDIxLjY3NyA0LjE3MzM1IDIxLjQxODVMNi4zOTkzOSAyMC44MjI5QzYuNzgzOTMgMjAuNzIgNy4xOTEyMSAyMC43NzkxIDcuNTQ3NTMgMjAuOTU2NUM4Ljg4ODM3IDIxLjYyNDQgMTAuNDAwMyAyMiAxMiAyMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE1LjUzMDMgOS40Njk2N0MxNS44MjMyIDkuNzYyNTYgMTUuODIzMiAxMC4yMzc0IDE1LjUzMDMgMTAuNTMwM0wxMS41MzAzIDE0LjUzMDNDMTEuMjQxNyAxNC44MTkgMTAuNzc1MSAxNC44MjM4IDEwLjQ4MDYgMTQuNTQxTDguNDgwNiAxMi42MjFDOC4xODE3OSAxMi4zMzQyIDguMTcyMSAxMS44NTk0IDguNDU4OTYgMTEuNTYwNkM4Ljc0NTgyIDExLjI2MTggOS4yMjA1OSAxMS4yNTIxIDkuNTE5NCAxMS41MzlMMTAuOTg5MyAxMi45NTAxTDE0LjQ2OTcgOS40Njk2N0MxNC43NjI2IDkuMTc2NzggMTUuMjM3NCA5LjE3Njc4IDE1LjUzMDMgOS40Njk2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ChatRoundCheckBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chat-round-check` icon in the boldDuotone style.
  const ChatRoundCheckBoldDuotoneIcon({
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
    name: 'chat-round-check',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15.5303 9.46967C15.8232 9.76256 15.8232 10.2374 15.5303 10.5303L11.5303 14.5303C11.2417 14.819 10.7751 14.8238 10.4806 14.541L8.4806 12.621C8.18179 12.3342 8.1721 11.8594 8.45896 11.5606C8.74582 11.2618 9.22059 11.2521 9.5194 11.539L10.9893 12.9501L14.4697 9.46967C14.7626 9.17678 15.2374 9.17678 15.5303 9.46967Z" fill="currentColor"/>''',
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
