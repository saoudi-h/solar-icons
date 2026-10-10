// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjE1IiBjeT0iOSIgcj0iMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOS45OTk5IDE3LjYwMDFMMTcuNzc2NCAxNS41OTlDMTYuNzM2OCAxNC42NjM0IDE1LjE4ODcgMTQuNTcwMiAxNC4wNDQ1IDE1LjM3NDRMMTMuNzQ2MyAxNS41ODM5QzEyLjk1MTEgMTYuMTQyOCAxMS44NjkzIDE2LjA0OTEgMTEuMTgyMSAxNS4zNjE4TDYuODkyMzcgMTEuMDcyMUM2LjAzNjE2IDEwLjIxNTkgNC42NjI3NCAxMC4xNzAyIDMuNzUxNDcgMTAuOTY3NUwyLjI4MTAxIDEyLjI1NDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNyAzLjMzNzgyQzguNDcwODcgMi40ODY5NyAxMC4xNzg2IDIgMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMkMyMiAxNy41MjI4IDE3LjUyMjggMjIgMTIgMjJDNi40NzcxNSAyMiAyIDE3LjUyMjggMiAxMkMyIDEwLjE3ODYgMi40ODY5NyA4LjQ3MDg3IDMuMzM3ODIgNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class GalleryCircleBrokenIcon extends StatelessWidget {
  /// Creates the `gallery-circle` icon in the broken style.
  const GalleryCircleBrokenIcon({
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
    name: 'gallery-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="15" cy="9" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.9999 17.6001L17.7764 15.599C16.7368 14.6634 15.1887 14.5702 14.0445 15.3744L13.7463 15.5839C12.9511 16.1428 11.8693 16.0491 11.1821 15.3618L6.89237 11.0721C6.03616 10.2159 4.66274 10.1702 3.75147 10.9675L2.28101 12.2542" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
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
