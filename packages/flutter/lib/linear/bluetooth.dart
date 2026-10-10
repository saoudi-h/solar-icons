// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNi4yNjMzIDguMjYyMzhMMTEgMTJWNS4yMjQ1N0MxMSAzLjMzODE2IDExIDIuMzk0OTYgMTEuNjA0NyAyLjA4NTYxQzEyLjIwOTMgMS43NzYyNSAxMi45ODEzIDIuMzI0NDggMTQuNTI1MyAzLjQyMDkzTDE2LjI2MzMgNC42NTUxQzE3LjQyMTEgNS40NzczMSAxOCA1Ljg4ODQyIDE4IDYuNDU4NzRDMTggNy4wMjkwNyAxNy40MjExIDcuNDQwMTcgMTYuMjYzMyA4LjI2MjM4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi4yNjMzIDE5LjM0NDlMMTQuNTI1MyAyMC41NzkxQzEyLjk4MTMgMjEuNjc1NSAxMi4yMDkzIDIyLjIyMzggMTEuNjA0NyAyMS45MTQ0QzExIDIxLjYwNSAxMSAyMC42NjE4IDExIDE4Ljc3NTRWMTJMMTYuMjYzMyAxNS43Mzc2QzE3LjQyMTEgMTYuNTU5OCAxOCAxNi45NzA5IDE4IDE3LjU0MTNDMTggMTguMTExNiAxNy40MjExIDE4LjUyMjcgMTYuMjYzMyAxOS4zNDQ5WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMSAxMkw2IDE1LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTEgMTJMNiA4LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BluetoothLinearIcon extends StatelessWidget {
  /// Creates the `bluetooth` icon in the linear style.
  const BluetoothLinearIcon({
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
    name: 'bluetooth',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16.2633 8.26238L11 12V5.22457C11 3.33816 11 2.39496 11.6047 2.08561C12.2093 1.77625 12.9813 2.32448 14.5253 3.42093L16.2633 4.6551C17.4211 5.47731 18 5.88842 18 6.45874C18 7.02907 17.4211 7.44017 16.2633 8.26238Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.2633 19.3449L14.5253 20.5791C12.9813 21.6755 12.2093 22.2238 11.6047 21.9144C11 21.605 11 20.6618 11 18.7754V12L16.2633 15.7376C17.4211 16.5598 18 16.9709 18 17.5413C18 18.1116 17.4211 18.5227 16.2633 19.3449Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 12L6 15.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 12L6 8.5" stroke="currentColor" stroke-linecap="round"/>''',
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
