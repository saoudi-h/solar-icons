// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNSA1SDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAuNSAyMC42NDM1VjIyTDEyIDIwLjY4NzVMMTAuNSAxOS4zNzVWMjAuNjQzNVpNMTAuNSAyMC42NDM1QzUuNjg4NzQgMjAuMzU4NSAyIDE4LjcyMzkgMiAxNi43NUMyIDE2LjEyMTQgMi4zNzQxMiAxNS41MjcyIDMuMDM5NDcgMTVNMjAuOTYwNSAxNUMyMS42MjU5IDE1LjUyNzIgMjIgMTYuMTIxNCAyMiAxNi43NUMyMiAxOC41ODQ3IDE4LjgxMzEgMjAuMTI2MyAxNC41IDIwLjU2MzUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTguNSA4QzE4LjUgNS4xNzE1NyAxOC41IDMuNzU3MzYgMTcuNjIxMyAyLjg3ODY4QzE2Ljc0MjYgMiAxNS4zMjg0IDIgMTIuNSAySDExLjVDOC42NzE1NyAyIDcuMjU3MzYgMiA2LjM3ODY4IDIuODc4NjhDNS41IDMuNzU3MzYgNS41IDUuMTcxNTcgNS41IDhWMTZDNS41IDE2LjM1NSA1LjUgMTYuNjg3OCA1LjUwMTc0IDE3TTE4LjQ5ODMgMTdDMTguNSAxNi42ODc4IDE4LjUgMTYuMzU1IDE4LjUgMTZWMTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class SmartphoneRotateAngleBrokenIcon extends StatelessWidget {
  /// Creates the `smartphone-rotate-angle` icon in the broken style.
  const SmartphoneRotateAngleBrokenIcon({
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
    name: 'smartphone-rotate-angle',
    style: SolarIconStyle.broken,
    body: r'''<path d="M15 5H9" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 20.6435V22L12 20.6875L10.5 19.375V20.6435ZM10.5 20.6435C5.68874 20.3585 2 18.7239 2 16.75C2 16.1214 2.37412 15.5272 3.03947 15M20.9605 15C21.6259 15.5272 22 16.1214 22 16.75C22 18.5847 18.8131 20.1263 14.5 20.5635" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.5 8C18.5 5.17157 18.5 3.75736 17.6213 2.87868C16.7426 2 15.3284 2 12.5 2H11.5C8.67157 2 7.25736 2 6.37868 2.87868C5.5 3.75736 5.5 5.17157 5.5 8V16C5.5 16.355 5.5 16.6878 5.50174 17M18.4983 17C18.5 16.6878 18.5 16.355 18.5 16V12" stroke="currentColor" stroke-linecap="round"/>''',
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
