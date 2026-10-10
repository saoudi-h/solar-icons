// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMiAyMkwyIDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxIDIyVjEzTTExLjAwNDQgNUMxMS4wMjIzIDMuNzYwMjIgMTEuMTE0MyAzLjA1NzMzIDExLjU4NTggMi41ODU3OUMxMi4xNzE2IDIgMTMuMTE0NCAyIDE1IDJIMTdDMTguODg1NyAyIDE5LjgyODUgMiAyMC40MTQzIDIuNTg1NzlDMjEgMy4xNzE1NyAyMSA0LjExNDM4IDIxIDZWOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNSAyMlYxNk0zIDIyVjEzTTMgOUMzIDcuMTE0MzggMyA2LjE3MTU3IDMuNTg1NzkgNS41ODU3OUM0LjE3MTU3IDUgNS4xMTQzOCA1IDcgNUgxMUMxMi44ODU2IDUgMTMuODI4NCA1IDE0LjQxNDIgNS41ODU3OUMxNSA2LjE3MTU3IDE1IDcuMTE0MzggMTUgOVYxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDIyVjE5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTYgOEgxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik02IDExSDdNMTIgMTFIOS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTYgMTRIMTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BuildingsBrokenIcon extends StatelessWidget {
  /// Creates the `buildings` icon in the broken style.
  const BuildingsBrokenIcon({
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
    name: 'buildings',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 22L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 22V13M11.0044 5C11.0223 3.76022 11.1143 3.05733 11.5858 2.58579C12.1716 2 13.1144 2 15 2H17C18.8857 2 19.8285 2 20.4143 2.58579C21 3.17157 21 4.11438 21 6V9" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 22V16M3 22V13M3 9C3 7.11438 3 6.17157 3.58579 5.58579C4.17157 5 5.11438 5 7 5H11C12.8856 5 13.8284 5 14.4142 5.58579C15 6.17157 15 7.11438 15 9V12" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 22V19" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 8H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 11H7M12 11H9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 14H12" stroke="currentColor" stroke-linecap="round"/>''',
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
