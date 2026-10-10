// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDUuNjg0MjFDMiAzLjY0OTQ4IDMuNjQ5NDggMiA1LjY4NDIxIDJDNy43MTg5NCAyIDkuMzY4NDIgMy42NDk0OCA5LjM2ODQyIDUuNjg0MjFNMjIgMTQuNVYxNS42ODQyQzIyIDE5LjE3MjMgMTkuMTcyMyAyMiAxNS42ODQyIDIyQzEyLjE5NjEgMjIgOS4zNjg0MiAxOS4xNzIzIDkuMzY4NDIgMTUuNjg0MlYxNC42MzE2VjkuMTU3OSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNiAxMkMxMi45NDYxIDEyIDkuNSAxMy4xMTkzIDkuNSAxNC41QzkuNSAxNS44ODA3IDEyLjk0NjEgMTcgMTYgMTdDMTkuMDUzOSAxNyAyMiAxNS44ODA3IDIyIDE0LjVDMjIgMTMuNzgwMiAyMS4xOTkzIDEzLjEzMTQgMjAgMTIuNjc1MyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class LadleBrokenIcon extends StatelessWidget {
  /// Creates the `ladle` icon in the broken style.
  const LadleBrokenIcon({
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
    name: 'ladle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 5.68421C2 3.64948 3.64948 2 5.68421 2C7.71894 2 9.36842 3.64948 9.36842 5.68421M22 14.5V15.6842C22 19.1723 19.1723 22 15.6842 22C12.1961 22 9.36842 19.1723 9.36842 15.6842V14.6316V9.1579" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 12C12.9461 12 9.5 13.1193 9.5 14.5C9.5 15.8807 12.9461 17 16 17C19.0539 17 22 15.8807 22 14.5C22 13.7802 21.1993 13.1314 20 12.6753" stroke="currentColor" stroke-linecap="round"/>''',
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
