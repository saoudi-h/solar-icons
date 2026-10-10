// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-unread` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDJDMTIuOTA1OSAyIDEzLjc4MzYgMi4xMjA4OSAxNC42MTgyIDIuMzQ2NjhDMTQuOTMzNCAyLjQzMTk5IDE1LjA1OTIgMi44MDE3NSAxNC45MjA5IDMuMDk3NjZDMTQuNjUwOSAzLjY3NTUgMTQuNSA0LjMyMDEgMTQuNSA1QzE0LjUgNy40ODUyOCAxNi41MTQ3IDkuNSAxOSA5LjVDMTkuNjc5OSA5LjUgMjAuMzI0NSA5LjM0OTA1IDIwLjkwMjMgOS4wNzkxQzIxLjE5ODIgOC45NDA4NCAyMS41NjggOS4wNjY1NiAyMS42NTMzIDkuMzgxODRDMjEuODc5MSAxMC4yMTY0IDIyIDExLjA5NDEgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzEwLjQwMDMgMjIgOC44ODg2NyAyMS42MjM5IDcuNTQ3ODUgMjAuOTU2MUM3LjE5MTUzIDIwLjc3ODYgNi43ODM5NiAyMC43MjA0IDYuMzk5NDEgMjAuODIzMkw0LjE3MzgzIDIxLjQxODlDMy4yMDc0OSAyMS42Nzc1IDIuMzIyNSAyMC43OTI1IDIuNTgxMDUgMTkuODI2MkwzLjE3Njc2IDE3LjYwMDZDMy4yNzk2NSAxNy4yMTYgMy4yMjE0MiAxNi44MDg1IDMuMDQzOTUgMTYuNDUyMUMyLjM3NjEyIDE1LjExMTMgMiAxMy41OTk3IDIgMTJDMiA2LjQ3NzE1IDYuNDc3MTUgMiAxMiAyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTkgMkMyMC42NTY5IDIgMjIgMy4zNDMxNSAyMiA1QzIyIDYuNjU2ODUgMjAuNjU2OSA4IDE5IDhDMTcuMzQzMSA4IDE2IDYuNjU2ODUgMTYgNUMxNiAzLjM0MzE1IDE3LjM0MzEgMiAxOSAyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ChatRoundUnreadBoldIcon extends StatelessWidget {
  /// Creates the `chat-round-unread` icon in the bold style.
  const ChatRoundUnreadBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 2C12.9059 2 13.7836 2.12089 14.6182 2.34668C14.9334 2.43199 15.0592 2.80175 14.9209 3.09766C14.6509 3.6755 14.5 4.3201 14.5 5C14.5 7.48528 16.5147 9.5 19 9.5C19.6799 9.5 20.3245 9.34905 20.9023 9.0791C21.1982 8.94084 21.568 9.06656 21.6533 9.38184C21.8791 10.2164 22 11.0941 22 12C22 17.5228 17.5228 22 12 22C10.4003 22 8.88867 21.6239 7.54785 20.9561C7.19153 20.7786 6.78396 20.7204 6.39941 20.8232L4.17383 21.4189C3.20749 21.6775 2.3225 20.7925 2.58105 19.8262L3.17676 17.6006C3.27965 17.216 3.22142 16.8085 3.04395 16.4521C2.37612 15.1113 2 13.5997 2 12C2 6.47715 6.47715 2 12 2Z" fill="currentColor"/>
<path d="M19 2C20.6569 2 22 3.34315 22 5C22 6.65685 20.6569 8 19 8C17.3431 8 16 6.65685 16 5C16 3.34315 17.3431 2 19 2Z" fill="currentColor"/>''',
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
