// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00IDEwQzQgNi4yMjg3NiA0IDQuMzQzMTUgNS4xNzE1NyAzLjE3MTU3QzYuMzQzMTUgMiA4LjIyODc2IDIgMTIgMkMxNS43NzEyIDIgMTcuNjU2OSAyIDE4LjgyODQgMy4xNzE1N0MyMCA0LjM0MzE1IDIwIDYuMjI4NzYgMjAgMTBWMTRDMjAgMTcuNzcxMiAyMCAxOS42NTY5IDE4LjgyODQgMjAuODI4NEMxNy42NTY5IDIyIDE1Ljc3MTIgMjIgMTIgMjJDOC4yMjg3NiAyMiA2LjM0MzE1IDIyIDUuMTcxNTcgMjAuODI4NEM0IDE5LjY1NjkgNCAxNy43NzEyIDQgMTRWMTBaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0IDcuNUMxNCA4LjYwNDU3IDEzLjEwNDYgOS41IDEyIDkuNUMxMC44OTU0IDkuNSAxMCA4LjYwNDU3IDEwIDcuNUMxMCA2LjM5NTQzIDEwLjg5NTQgNS41IDEyIDUuNUMxMy4xMDQ2IDUuNSAxNCA2LjM5NTQzIDE0IDcuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUgMTUuNUMxNSAxNy4xNTY5IDEzLjY1NjkgMTguNSAxMiAxOC41QzEwLjM0MzEgMTguNSA5IDE3LjE1NjkgOSAxNS41QzkgMTMuODQzMSAxMC4zNDMxIDEyLjUgMTIgMTIuNUMxMy42NTY5IDEyLjUgMTUgMTMuODQzMSAxNSAxNS41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class SpeakerLinearIcon extends StatelessWidget {
  /// Creates the `speaker` icon in the linear style.
  const SpeakerLinearIcon({
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
    name: 'speaker',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 10C4 6.22876 4 4.34315 5.17157 3.17157C6.34315 2 8.22876 2 12 2C15.7712 2 17.6569 2 18.8284 3.17157C20 4.34315 20 6.22876 20 10V14C20 17.7712 20 19.6569 18.8284 20.8284C17.6569 22 15.7712 22 12 22C8.22876 22 6.34315 22 5.17157 20.8284C4 19.6569 4 17.7712 4 14V10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 7.5C14 8.60457 13.1046 9.5 12 9.5C10.8954 9.5 10 8.60457 10 7.5C10 6.39543 10.8954 5.5 12 5.5C13.1046 5.5 14 6.39543 14 7.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 15.5C15 17.1569 13.6569 18.5 12 18.5C10.3431 18.5 9 17.1569 9 15.5C9 13.8431 10.3431 12.5 12 12.5C13.6569 12.5 15 13.8431 15 15.5Z" stroke="currentColor" stroke-linecap="round"/>''',
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
