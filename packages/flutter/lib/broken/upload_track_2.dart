// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMyAxNVYxMVY3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBjeD0iMTEiIGN5PSIxNSIgcj0iMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNiAxMEMxNC4zNDMxIDEwIDEzIDguNjU2ODUgMTMgNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOCAyMlYxNU0xNS41IDE3LjVMMTggMTVMMjAuNSAxNy41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE0IDIxLjhDMTMuMzUzOCAyMS45MzExIDEyLjY4NDkgMjIgMTIgMjJDNi40NzcxNSAyMiAyIDE3LjUyMjggMiAxMkMyIDEwLjE3ODYgMi40ODY5NyA4LjQ3MDg3IDMuMzM3ODIgN00yMS44IDE0QzIxLjkzMTEgMTMuMzUzOCAyMiAxMi42ODQ5IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDMTAuMTc4NiAyIDguNDcwODcgMi40ODY5NyA3IDMuMzM3ODIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class UploadTrack2BrokenIcon extends StatelessWidget {
  /// Creates the `upload-track-2` icon in the broken style.
  const UploadTrack2BrokenIcon({
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
    name: 'upload-track-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13 15V11V7" stroke="currentColor" stroke-linecap="round"/>
<circle cx="11" cy="15" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 10C14.3431 10 13 8.65685 13 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 22V15M15.5 17.5L18 15L20.5 17.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14 21.8C13.3538 21.9311 12.6849 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7M21.8 14C21.9311 13.3538 22 12.6849 22 12C22 6.47715 17.5228 2 12 2C10.1786 2 8.47087 2.48697 7 3.33782" stroke="currentColor" stroke-linecap="round"/>''',
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
