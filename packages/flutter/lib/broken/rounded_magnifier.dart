// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMS44MTIgMjAuOTc0OEMyMS43NDkzIDIxLjA2OTUgMjEuNjM2IDIxLjE4MjggMjEuNDA5NCAyMS40MDk0QzIxLjE4MjggMjEuNjM2IDIxLjA2OTUgMjEuNzQ5MyAyMC45NzQ4IDIxLjgxMkMyMC40MjAyIDIyLjE3OTMgMTkuNjY5OSAyMS45OSAxOS4zNTU5IDIxLjQwMzZDMTkuMzAyMyAyMS4zMDM1IDE5LjI1NjMgMjEuMTUgMTkuMTY0MyAyMC44NDNDMTkuMDYzOCAyMC41MDc2IDE5LjAxMzYgMjAuMzM5OCAxOS4wMDM4IDIwLjIyMThDMTguOTQ2NiAxOS41MjY4IDE5LjUyNjggMTguOTQ2NiAyMC4yMjE4IDE5LjAwMzhDMjAuMzM5OCAxOS4wMTM2IDIwLjUwNzUgMTkuMDYzOCAyMC44NDMgMTkuMTY0M0MyMS4xNSAxOS4yNTYzIDIxLjMwMzUgMTkuMzAyMyAyMS40MDM2IDE5LjM1NTlDMjEuOTkgMTkuNjY5OSAyMi4xNzkzIDIwLjQyMDIgMjEuODEyIDIwLjk3NDhaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTYuNSAzLjIwNDA0QzcuODIzNzggMi40MzgyNyA5LjM2MDcxIDIgMTEgMkMxNS45NzA2IDIgMjAgNi4wMjk0NCAyMCAxMUMyMCAxNS45NzA2IDE1Ljk3MDYgMjAgMTEgMjBDNi4wMjk0NCAyMCAyIDE1Ljk3MDYgMiAxMUMyIDkuMzYwNzEgMi40MzgyNyA3LjgyMzc4IDMuMjA0MDQgNi41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class RoundedMagnifierBrokenIcon extends StatelessWidget {
  /// Creates the `rounded-magnifier` icon in the broken style.
  const RoundedMagnifierBrokenIcon({
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
    name: 'rounded-magnifier',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21.812 20.9748C21.7493 21.0695 21.636 21.1828 21.4094 21.4094C21.1828 21.636 21.0695 21.7493 20.9748 21.812C20.4202 22.1793 19.6699 21.99 19.3559 21.4036C19.3023 21.3035 19.2563 21.15 19.1643 20.843C19.0638 20.5076 19.0136 20.3398 19.0038 20.2218C18.9466 19.5268 19.5268 18.9466 20.2218 19.0038C20.3398 19.0136 20.5075 19.0638 20.843 19.1643C21.15 19.2563 21.3035 19.3023 21.4036 19.3559C21.99 19.6699 22.1793 20.4202 21.812 20.9748Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.5 3.20404C7.82378 2.43827 9.36071 2 11 2C15.9706 2 20 6.02944 20 11C20 15.9706 15.9706 20 11 20C6.02944 20 2 15.9706 2 11C2 9.36071 2.43827 7.82378 3.20404 6.5" stroke="currentColor" stroke-linecap="round"/>''',
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
