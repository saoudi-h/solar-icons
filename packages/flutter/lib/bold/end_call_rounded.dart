// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01LjYwNzIgMTYuODk3M0w2Ljk0NjkgMTYuNTE3M0M4LjE1NTkxIDE2LjE3NDQgOSAxNC45ODI2IDkgMTMuNjE4NUM5IDEzLjYxODUgOSAxMy42MTg1IDkgMTMuNjE4NUM5IDEzLjYxODUgOS4wMDAwMSAxMS45NjM5IDEyIDExLjk2MzlDMTQuOTk5OSAxMS45NjM5IDE1IDEzLjYxODQgMTUgMTMuNjE4NUMxNSAxMy42MTg1IDE1IDEzLjYxODUgMTUgMTMuNjE4NUMxNSAxNC45ODI2IDE1Ljg0NDEgMTYuMTc0NCAxNy4wNTMxIDE2LjUxNzNMMTguMzkyOCAxNi44OTczQzIwLjIxODQgMTcuNDE1MSAyMiAxNS45MTAyIDIyIDEzLjg1MDRDMjIgMTIuNjEyNyAyMS43MjM0IDExLjM3MyAyMC45MTcxIDEwLjUwMzJDMTkuNTU5OCA5LjAzODg5IDE2LjgwNjggNyAxMiA3QzcuMTkzMjIgNyA0LjQ0MDIzIDkuMDM4ODggMy4wODI4OSAxMC41MDMyQzIuMjc2NTkgMTEuMzczIDIgMTIuNjEyNyAyIDEzLjg1MDRDMiAxNS45MTAyIDMuNzgxNTggMTcuNDE1MSA1LjYwNzIgMTYuODk3M1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class EndCallRoundedBoldIcon extends StatelessWidget {
  /// Creates the `end-call-rounded` icon in the bold style.
  const EndCallRoundedBoldIcon({
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
    name: 'end-call-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.6072 16.8973L6.9469 16.5173C8.15591 16.1744 9 14.9826 9 13.6185C9 13.6185 9 13.6185 9 13.6185C9 13.6185 9.00001 11.9639 12 11.9639C14.9999 11.9639 15 13.6184 15 13.6185C15 13.6185 15 13.6185 15 13.6185C15 14.9826 15.8441 16.1744 17.0531 16.5173L18.3928 16.8973C20.2184 17.4151 22 15.9102 22 13.8504C22 12.6127 21.7234 11.373 20.9171 10.5032C19.5598 9.03889 16.8068 7 12 7C7.19322 7 4.44023 9.03888 3.08289 10.5032C2.27659 11.373 2 12.6127 2 13.8504C2 15.9102 3.78158 17.4151 5.6072 16.8973Z" fill="currentColor"/>''',
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
