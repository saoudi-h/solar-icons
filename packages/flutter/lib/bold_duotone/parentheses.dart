// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `parentheses` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMi4yNSAxMkMyLjI1IDYuOTcyMTEgNS40NTgwNyAzLjE3OTA3IDguNjI1IDEuMzUwNjJDOC45ODM3IDEuMTQzNTIgOS40NDIzIDEuMjY2MzUgOS42NDk0MSAxLjYyNTA0QzkuODU2NTEgMS45ODM3NCA5LjczMzY4IDIuNDQyMzMgOS4zNzUgMi42NDk0NUM2LjU0MTk1IDQuMjg1MTEgMy43NSA3LjY0MzA1IDMuNzUgMTJDMy43NSAxNi4zNTcgNi41NDE5NSAxOS43MTUgOS4zNzUgMjEuMzUwNkM5LjczMzY4IDIxLjU1NzcgOS44NTY1MSAyMi4wMTYzIDkuNjQ5NDEgMjIuMzc1QzkuNDQyMyAyMi43MzM3IDguOTgzNyAyMi44NTY1IDguNjI1IDIyLjY0OTVDNS40NTgwNyAyMC44MjEgMi4yNSAxNy4wMjggMi4yNSAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIxLjc1IDEyQzIxLjc1IDYuOTcyMTEgMTguNTQxOSAzLjE3OTA3IDE1LjM3NSAxLjM1MDYyQzE1LjAxNjMgMS4xNDM1MiAxNC41NTc3IDEuMjY2MzUgMTQuMzUwNiAxLjYyNTA0QzE0LjE0MzUgMS45ODM3NCAxNC4yNjYzIDIuNDQyMzMgMTQuNjI1IDIuNjQ5NDVDMTcuNDU4MSA0LjI4NTExIDIwLjI1IDcuNjQzMDUgMjAuMjUgMTJDMjAuMjUgMTYuMzU3IDE3LjQ1ODEgMTkuNzE1IDE0LjYyNSAyMS4zNTA2QzE0LjI2NjMgMjEuNTU3NyAxNC4xNDM1IDIyLjAxNjMgMTQuMzUwNiAyMi4zNzVDMTQuNTU3NyAyMi43MzM3IDE1LjAxNjMgMjIuODU2NSAxNS4zNzUgMjIuNjQ5NUMxOC41NDE5IDIwLjgyMSAyMS43NSAxNy4wMjggMjEuNzUgMTJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ParenthesesBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `parentheses` icon in the boldDuotone style.
  const ParenthesesBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.75 12C21.75 6.97211 18.5419 3.17907 15.375 1.35062C15.0163 1.14352 14.5577 1.26635 14.3506 1.62504C14.1435 1.98374 14.2663 2.44233 14.625 2.64945C17.4581 4.28511 20.25 7.64305 20.25 12C20.25 16.357 17.4581 19.715 14.625 21.3506C14.2663 21.5577 14.1435 22.0163 14.3506 22.375C14.5577 22.7337 15.0163 22.8565 15.375 22.6495C18.5419 20.821 21.75 17.028 21.75 12Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.25 12C2.25 6.97211 5.45807 3.17907 8.625 1.35062C8.9837 1.14352 9.4423 1.26635 9.64941 1.62504C9.85651 1.98374 9.73368 2.44233 9.375 2.64945C6.54195 4.28511 3.75 7.64305 3.75 12C3.75 16.357 6.54195 19.715 9.375 21.3506C9.73368 21.5577 9.85651 22.0163 9.64941 22.375C9.4423 22.7337 8.9837 22.8565 8.625 22.6495C5.45807 20.821 2.25 17.028 2.25 12Z" fill="currentColor"/>''',
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
