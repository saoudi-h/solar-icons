// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `paperclip` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTcuOTE3NSAxNy44MDY4TDE1LjgwODQgMTAuMjUzNUMxNi43NTU4IDkuMzQ2NjggMTYuNzU1OCA3Ljg3NjM3IDE1LjgwODQgNi45Njk1MU0zIDEwLjAzNDZMOS40MDQxOSAzLjkwNDQxQzEyLjA1NjkgMS4zNjUyIDE2LjM1NzggMS4zNjUyIDE5LjAxMDUgMy45MDQ0MSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE1LjgwODQgNi45Njk0QzE0Ljg2MSA2LjA2MjU0IDEzLjMyNSA2LjA2MjUzIDEyLjM3NzYgNi45Njk0TDQuNTQzODggMTQuNDY3OUMyLjc0Mzg0IDE2LjE5MSAyLjc0Mzg0IDE4Ljk4NDYgNC41NDM4OCAyMC43MDc2QzYuMzQzOTMgMjIuNDMwNiA5LjI2MjM5IDIyLjQzMDYgMTEuMDYyNCAyMC43MDc2TDE5LjAxMDUgMTMuMDk5NkMyMS42NjMyIDEwLjU2MDQgMjEuNjYzMiA2LjQ0MzUxIDE5LjAxMDUgMy45MDQzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PaperclipLineDuotoneIcon extends StatelessWidget {
  /// Creates the `paperclip` icon in the lineDuotone style.
  const PaperclipLineDuotoneIcon({
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
    name: 'paperclip',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7.9175 17.8068L15.8084 10.2535C16.7558 9.34668 16.7558 7.87637 15.8084 6.96951M3 10.0346L9.40419 3.90441C12.0569 1.3652 16.3578 1.3652 19.0105 3.90441" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.8084 6.9694C14.861 6.06254 13.325 6.06253 12.3776 6.9694L4.54388 14.4679C2.74384 16.191 2.74384 18.9846 4.54388 20.7076C6.34393 22.4306 9.26239 22.4306 11.0624 20.7076L19.0105 13.0996C21.6632 10.5604 21.6632 6.44351 19.0105 3.9043" stroke="currentColor" stroke-linecap="round"/>''',
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
