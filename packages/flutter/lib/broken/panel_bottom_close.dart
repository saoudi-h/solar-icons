// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05IDcuMjE3MjlMMTIgOS43ODg3MUwxNSA3LjIxNzI5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTExIDIyTDEzIDIyQzE2Ljc3MTIgMjIgMTguNjU2OSAyMiAxOS44Mjg0IDIwLjgyODRDMjEgMTkuNjU2OSAyMSAxNy43NzEyIDIxIDE0TDIxIDEwQzIxIDYuMjI4NzYgMjEgNC4zNDMxNSAxOS44Mjg0IDMuMTcxNTdDMTguNjU2OSAyIDE2Ljc3MTIgMiAxMyAyTDExIDJDNy4yMjg3NiAyIDUuMzQzMTQgMiA0LjE3MTU3IDMuMTcxNTdDMyA0LjM0MzE1IDMgNi4yMjg3NiAzIDEwTDMgMTRDMyAxNy43NzEyIDMgMTkuNjU2OSA0LjE3MTU3IDIwLjgyODRDNC44MjQ3NSAyMS40ODE2IDUuNjk5ODkgMjEuNzcwNiA3IDIxLjg5ODUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMyAxNUwxMyAxNU0xNyAxNUwyMSAxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class PanelBottomCloseBrokenIcon extends StatelessWidget {
  /// Creates the `panel-bottom-close` icon in the broken style.
  const PanelBottomCloseBrokenIcon({
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
    name: 'panel-bottom-close',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 7.21729L12 9.78871L15 7.21729" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11 22L13 22C16.7712 22 18.6569 22 19.8284 20.8284C21 19.6569 21 17.7712 21 14L21 10C21 6.22876 21 4.34315 19.8284 3.17157C18.6569 2 16.7712 2 13 2L11 2C7.22876 2 5.34314 2 4.17157 3.17157C3 4.34315 3 6.22876 3 10L3 14C3 17.7712 3 19.6569 4.17157 20.8284C4.82475 21.4816 5.69989 21.7706 7 21.8985" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 15L13 15M17 15L21 15" stroke="currentColor" stroke-linecap="round"/>''',
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
