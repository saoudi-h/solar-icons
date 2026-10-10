// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiA5QzEwLjM0MzEgOSA5IDcuNjU2ODUgOSA2QzkgNC4zNDMxNSAxMC4zNDMxIDMgMTIgM0MxMy42NTY5IDMgMTUgNC4zNDMxNSAxNSA2QzE1IDcuNjU2ODUgMTMuNjU2OSA5IDEyIDlaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTUuNSAyMUMzLjg0MzE1IDIxIDIuNSAxOS42NTY5IDIuNSAxOEMyLjUgMTYuMzQzMSAzLjg0MzE1IDE1IDUuNSAxNUM3LjE1Njg1IDE1IDguNSAxNi4zNDMxIDguNSAxOEM4LjUgMTkuNjU2OSA3LjE1Njg1IDIxIDUuNSAyMVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTguNSAyMUMxNi44NDMxIDIxIDE1LjUgMTkuNjU2OSAxNS41IDE4QzE1LjUgMTYuMzQzMSAxNi44NDMxIDE1IDE4LjUgMTVDMjAuMTU2OSAxNSAyMS41IDE2LjM0MzEgMjEuNSAxOEMyMS41IDE5LjY1NjkgMjAuMTU2OSAyMSAxOC41IDIxWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMCAxM0MyMCAxMC42MTA2IDE4Ljk1MjUgOC40NjU4OSAxNy4yOTE2IDdNNCAxM0M0IDEwLjYxMDYgNS4wNDc1MiA4LjQ2NTg5IDYuNzA4MzggN00xMCAyMC43NDhDMTAuNjM5MiAyMC45MTI1IDExLjMwOTQgMjEgMTIgMjFDMTIuNjkwNiAyMSAxMy4zNjA4IDIwLjkxMjUgMTQgMjAuNzQ4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class ShareCircleLinearIcon extends StatelessWidget {
  /// Creates the `share-circle` icon in the linear style.
  const ShareCircleLinearIcon({
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
    name: 'share-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 9C10.3431 9 9 7.65685 9 6C9 4.34315 10.3431 3 12 3C13.6569 3 15 4.34315 15 6C15 7.65685 13.6569 9 12 9Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.5 21C3.84315 21 2.5 19.6569 2.5 18C2.5 16.3431 3.84315 15 5.5 15C7.15685 15 8.5 16.3431 8.5 18C8.5 19.6569 7.15685 21 5.5 21Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.5 21C16.8431 21 15.5 19.6569 15.5 18C15.5 16.3431 16.8431 15 18.5 15C20.1569 15 21.5 16.3431 21.5 18C21.5 19.6569 20.1569 21 18.5 21Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 13C20 10.6106 18.9525 8.46589 17.2916 7M4 13C4 10.6106 5.04752 8.46589 6.70838 7M10 20.748C10.6392 20.9125 11.3094 21 12 21C12.6906 21 13.3608 20.9125 14 20.748" stroke="currentColor" stroke-linecap="round"/>''',
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
