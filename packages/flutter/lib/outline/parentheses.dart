// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `parentheses` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTguNjI1IDEuMzUwNjFDOC45ODM2OSAxLjE0MzUzIDkuNDQyMjkgMS4yNjYzNiA5LjY0OTQxIDEuNjI1MDJDOS44NTY1MSAxLjk4MzcyIDkuNzMzNjcgMi40NDIzMSA5LjM3NSAyLjY0OTQ0QzYuNTQxOTUgNC4yODUxIDMuNzUwMDIgNy42NDMwNiAzLjc1IDEyQzMuNzUgMTYuMzU3IDYuNTQxOTUgMTkuNzE0OSA5LjM3NSAyMS4zNTA2QzkuNzMzNjggMjEuNTU3NyA5Ljg1NjQ5IDIyLjAxNjMgOS42NDk0MSAyMi4zNzVDOS40NDIzIDIyLjczMzcgOC45ODM3IDIyLjg1NjUgOC42MjUgMjIuNjQ5NEM1LjQ1ODA3IDIwLjgyMSAyLjI1IDE3LjAyNzkgMi4yNSAxMkMyLjI1MDAyIDYuOTcyMTIgNS40NTgwOCAzLjE3OTA1IDguNjI1IDEuMzUwNjFaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNC4zNTA2IDEuNjI1MDJDMTQuNTU3NyAxLjI2NjM2IDE1LjAxNjMgMS4xNDM1NSAxNS4zNzUgMS4zNTA2MUMxOC41NDE5IDMuMTc5MDUgMjEuNzUgNi45NzIxMiAyMS43NSAxMkMyMS43NSAxNy4wMjc5IDE4LjU0MTkgMjAuODIxIDE1LjM3NSAyMi42NDk0QzE1LjAxNjMgMjIuODU2NSAxNC41NTc3IDIyLjczMzcgMTQuMzUwNiAyMi4zNzVDMTQuMTQzNSAyMi4wMTYzIDE0LjI2NjMgMjEuNTU3NyAxNC42MjUgMjEuMzUwNkMxNy40NTgxIDE5LjcxNDkgMjAuMjUgMTYuMzU3IDIwLjI1IDEyQzIwLjI1IDcuNjQzMDYgMTcuNDU4IDQuMjg1MSAxNC42MjUgMi42NDk0NEMxNC4yNjYzIDIuNDQyMzEgMTQuMTQzNSAxLjk4MzcxIDE0LjM1MDYgMS42MjUwMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ParenthesesOutlineIcon extends StatelessWidget {
  /// Creates the `parentheses` icon in the outline style.
  const ParenthesesOutlineIcon({
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
    name: 'parentheses',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M8.625 1.35061C8.98369 1.14353 9.44229 1.26636 9.64941 1.62502C9.85651 1.98372 9.73367 2.44231 9.375 2.64944C6.54195 4.2851 3.75002 7.64306 3.75 12C3.75 16.357 6.54195 19.7149 9.375 21.3506C9.73368 21.5577 9.85649 22.0163 9.64941 22.375C9.4423 22.7337 8.9837 22.8565 8.625 22.6494C5.45807 20.821 2.25 17.0279 2.25 12C2.25002 6.97212 5.45808 3.17905 8.625 1.35061Z" fill="currentColor"/>
<path d="M14.3506 1.62502C14.5577 1.26636 15.0163 1.14355 15.375 1.35061C18.5419 3.17905 21.75 6.97212 21.75 12C21.75 17.0279 18.5419 20.821 15.375 22.6494C15.0163 22.8565 14.5577 22.7337 14.3506 22.375C14.1435 22.0163 14.2663 21.5577 14.625 21.3506C17.4581 19.7149 20.25 16.357 20.25 12C20.25 7.64306 17.458 4.2851 14.625 2.64944C14.2663 2.44231 14.1435 1.98371 14.3506 1.62502Z" fill="currentColor"/>''',
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
