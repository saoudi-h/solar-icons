// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDIyQzE1LjAzNzYgMjIgMTcuNSAxOS41Mzc2IDE3LjUgMTYuNUMxNy41IDE0Ljc2MzYgMTYuNjk1NCAxMy4yMTUyIDE1LjQzODYgMTIuMjA3MkMxNS4xNzQ5IDExLjk5NTcgMTUgMTEuNjg1NyAxNSAxMS4zNDc3VjVDMTUgMy4zNDMxNSAxMy42NTY5IDIgMTIgMkMxMC4zNDMxIDIgOSAzLjM0MzE1IDkgNVYxMS4zNDc3QzkgMTEuNjg1NyA4LjgyNTA1IDExLjk5NTcgOC41NjE0MSAxMi4yMDcyQzcuMzA0NjUgMTMuMjE1MiA2LjUgMTQuNzYzNiA2LjUgMTYuNUM2LjUgMTkuNTM3NiA4Ljk2MjQzIDIyIDEyIDIyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMS45OTk4IDEzLjk5OTlDMTAuNjE5IDEzLjk5OTkgOS40OTk3NiAxNS4xMTkyIDkuNDk5NzYgMTYuNDk5OUM5LjQ5OTc2IDE3Ljg4MDYgMTAuNjE5IDE4Ljk5OTkgMTEuOTk5OCAxOC45OTk5QzEzLjM4MDUgMTguOTk5OSAxNC40OTk4IDE3Ljg4MDYgMTQuNDk5OCAxNi40OTk5QzE0LjQ5OTggMTUuMTE5MiAxMy4zODA1IDEzLjk5OTkgMTEuOTk5OCAxMy45OTk5Wk0xMS45OTk4IDEzLjk5OTlMMTIgNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class TemperatureLineDuotoneIcon extends StatelessWidget {
  /// Creates the `temperature` icon in the lineDuotone style.
  const TemperatureLineDuotoneIcon({
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
    name: 'temperature',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11.9998 13.9999C10.619 13.9999 9.49976 15.1192 9.49976 16.4999C9.49976 17.8806 10.619 18.9999 11.9998 18.9999C13.3805 18.9999 14.4998 17.8806 14.4998 16.4999C14.4998 15.1192 13.3805 13.9999 11.9998 13.9999ZM11.9998 13.9999L12 5" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C15.0376 22 17.5 19.5376 17.5 16.5C17.5 14.7636 16.6954 13.2152 15.4386 12.2072C15.1749 11.9957 15 11.6857 15 11.3477V5C15 3.34315 13.6569 2 12 2C10.3431 2 9 3.34315 9 5V11.3477C9 11.6857 8.82505 11.9957 8.56141 12.2072C7.30465 13.2152 6.5 14.7636 6.5 16.5C6.5 19.5376 8.96243 22 12 22Z" stroke="currentColor" stroke-linecap="round"/>''',
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
