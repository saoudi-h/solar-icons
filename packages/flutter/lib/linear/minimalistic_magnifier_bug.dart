// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjExLjUiIGN5PSIxMS41IiByPSI5LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTEuNSAxNS41QzkuODQzMTUgMTUuNSA4LjUgMTQuMTU2OSA4LjUgMTIuNVYxMC41TTExLjUgMTUuNUMxMy4xNTY5IDE1LjUgMTQuNSAxNC4xNTY5IDE0LjUgMTIuNVYxMC41TTExLjUgMTUuNVYxMC41TTE0LjUgMTAuNUMxNC41IDguODQzMTUgMTMuMTU2OSA3LjUgMTEuNSA3LjVDOS44NDMxNSA3LjUgOC41IDguODQzMTUgOC41IDEwLjVNMTQuNSAxMC41SDguNU0xNC41NzE1IDExLjVIMTZNNyAxMS41SDguNU0xNC41IDE0TDE1LjUgMTQuNU04LjUgMTRMNy41IDE0LjVNMTQuNSA5TDE1LjUgOC41TTguNSA5TDcuNSA4LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjAgMjBMMjIgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class MinimalisticMagnifierBugLinearIcon extends StatelessWidget {
  /// Creates the `minimalistic-magnifier-bug` icon in the linear style.
  const MinimalisticMagnifierBugLinearIcon({
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
    name: 'minimalistic-magnifier-bug',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 15.5C9.84315 15.5 8.5 14.1569 8.5 12.5V10.5M11.5 15.5C13.1569 15.5 14.5 14.1569 14.5 12.5V10.5M11.5 15.5V10.5M14.5 10.5C14.5 8.84315 13.1569 7.5 11.5 7.5C9.84315 7.5 8.5 8.84315 8.5 10.5M14.5 10.5H8.5M14.5715 11.5H16M7 11.5H8.5M14.5 14L15.5 14.5M8.5 14L7.5 14.5M14.5 9L15.5 8.5M8.5 9L7.5 8.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 20L22 22" stroke="currentColor" stroke-linecap="round"/>''',
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
