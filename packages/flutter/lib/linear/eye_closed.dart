// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAxNEM1IDE0IDIgNyAyIDdNMjIgN0MyMiA3IDIxLjA1ODYgOS4xOTY2MSAxOSAxMS4xMjg4QzE4LjA4NzIgMTEuOTg1NiAxNi45NTQ3IDEyLjc5MDQgMTUuNTg3MiAxMy4zMjg3QzE0LjUzMzQgMTMuNzQzNSAxMy4zNCAxNCAxMiAxNE0xMiAxNFYxNi41TTE1LjU4NzIgMTMuMzI4N0wxNyAxNS41TTE5IDExLjEyODhMMjAuNSAxMi42Mjg4TTguNDEyODEgMTMuMzI4N0w3IDE1LjVNNSAxMS4xMjg4TDMuNSAxMi42Mjg4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class EyeClosedLinearIcon extends StatelessWidget {
  /// Creates the `eye-closed` icon in the linear style.
  const EyeClosedLinearIcon({
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
    name: 'eye-closed',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 14C5 14 2 7 2 7M22 7C22 7 21.0586 9.19661 19 11.1288C18.0872 11.9856 16.9547 12.7904 15.5872 13.3287C14.5334 13.7435 13.34 14 12 14M12 14V16.5M15.5872 13.3287L17 15.5M19 11.1288L20.5 12.6288M8.41281 13.3287L7 15.5M5 11.1288L3.5 12.6288" stroke="currentColor" stroke-linecap="round"/>''',
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
