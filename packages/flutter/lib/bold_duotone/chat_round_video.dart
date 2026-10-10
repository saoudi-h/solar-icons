// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-video` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTMuNTk5NyAyLjM3NTYyIDE1LjExMTYgMy4wNDM0NiAxNi40NTI1QzMuMjIwOTQgMTYuODA4OCAzLjI4MDAxIDE3LjIxNjEgMy4xNzcxMiAxNy42MDA2TDIuNTgxNTEgMTkuODI2N0MyLjMyMjk1IDIwLjc5MyAzLjIwNzAxIDIxLjY3NyA0LjE3MzM1IDIxLjQxODVMNi4zOTkzOSAyMC44MjI5QzYuNzgzOTMgMjAuNzIgNy4xOTEyMSAyMC43NzkxIDcuNTQ3NTMgMjAuOTU2NUM4Ljg4ODM3IDIxLjYyNDQgMTAuNDAwMyAyMiAxMiAyMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEzLjIxOTYgOS40NDY5NUMxNS4wNzMyIDEwLjU4NiAxNiAxMS4xNTU1IDE2IDEyQzE2IDEyLjg0NDUgMTUuMDczMiAxMy40MTQgMTMuMjE5NiAxNC41NTMxQzExLjM0MDYgMTUuNzA3NyAxMC40MDExIDE2LjI4NSA5LjcwMDU2IDE1Ljg2MTFDOSAxNS40MzcyIDkgMTQuMjkxNSA5IDEyQzkgOS43MDg1MyA5IDguNTYyNzkgOS43MDA1NiA4LjEzODkxQzEwLjQwMTEgNy43MTUwNCAxMS4zNDA2IDguMjkyMzQgMTMuMjE5NiA5LjQ0Njk1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ChatRoundVideoBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chat-round-video` icon in the boldDuotone style.
  const ChatRoundVideoBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.2196 9.44695C15.0732 10.586 16 11.1555 16 12C16 12.8445 15.0732 13.414 13.2196 14.5531C11.3406 15.7077 10.4011 16.285 9.70056 15.8611C9 15.4372 9 14.2915 9 12C9 9.70853 9 8.56279 9.70056 8.13891C10.4011 7.71504 11.3406 8.29234 13.2196 9.44695Z" fill="currentColor"/>''',
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
