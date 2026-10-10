// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bookmark-circle` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyMkMxNy41MjI4IDIyIDIyIDE3LjUyMjggMjIgMTJDMjIgNi40NzcxNSAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJaTTE2IDE0LjA0NTVWMTEuNTQ4OEMxNiA5LjQwNDQ1IDE2IDguMzMyMyAxNS40MTQyIDcuNjY2MTVDMTQuODI4NCA3IDEzLjg4NTYgNyAxMiA3QzEwLjExNDQgNyA5LjE3MTU3IDcgOC41ODU3OSA3LjY2NjE1QzggOC4zMzIzIDggOS40MDQ0NSA4IDExLjU0ODhWMTQuMDQ1NUM4IDE1LjU5MzcgOCAxNi4zNjc5IDguMzI2MjcgMTYuNzA2MkM4LjQ4MTg3IDE2Ljg2NzUgOC42NzgyOSAxNi45Njg4IDguODg3NTIgMTYuOTk1OEM5LjMyNjIzIDE3LjA1MjIgOS44Mzg1NSAxNi41NDI1IDEwLjg2MzIgMTUuNTIyOUMxMS4zMTYxIDE1LjA3MjIgMTEuNTQyNiAxNC44NDY5IDExLjgwNDYgMTQuNzg3NUMxMS45MzM2IDE0Ljc1ODMgMTIuMDY2NCAxNC43NTgzIDEyLjE5NTQgMTQuNzg3NUMxMi40NTc0IDE0Ljg0NjkgMTIuNjgzOSAxNS4wNzIyIDEzLjEzNjggMTUuNTIyOUMxNC4xNjE1IDE2LjU0MjUgMTQuNjczOCAxNy4wNTIyIDE1LjExMjUgMTYuOTk1OEMxNS4zMjE3IDE2Ljk2ODggMTUuNTE4MSAxNi44Njc1IDE1LjY3MzcgMTYuNzA2MkMxNiAxNi4zNjc5IDE2IDE1LjU5MzcgMTYgMTQuMDQ1NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class BookmarkCircleBoldIcon extends StatelessWidget {
  /// Creates the `bookmark-circle` icon in the bold style.
  const BookmarkCircleBoldIcon({
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
    name: 'bookmark-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22ZM16 14.0455V11.5488C16 9.40445 16 8.3323 15.4142 7.66615C14.8284 7 13.8856 7 12 7C10.1144 7 9.17157 7 8.58579 7.66615C8 8.3323 8 9.40445 8 11.5488V14.0455C8 15.5937 8 16.3679 8.32627 16.7062C8.48187 16.8675 8.67829 16.9688 8.88752 16.9958C9.32623 17.0522 9.83855 16.5425 10.8632 15.5229C11.3161 15.0722 11.5426 14.8469 11.8046 14.7875C11.9336 14.7583 12.0664 14.7583 12.1954 14.7875C12.4574 14.8469 12.6839 15.0722 13.1368 15.5229C14.1615 16.5425 14.6738 17.0522 15.1125 16.9958C15.3217 16.9688 15.5181 16.8675 15.6737 16.7062C16 16.3679 16 15.5937 16 14.0455Z" fill="currentColor"/>''',
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
