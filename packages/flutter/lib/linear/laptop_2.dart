// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMC41IDE1VjEwQzIwLjUgNy4xNzE1NyAyMC41IDUuNzU3MzYgMTkuNjIxMyA0Ljg3ODY4QzE4Ljc0MjYgNCAxNy4zMjg0IDQgMTQuNSA0SDkuNUM2LjY3MTU3IDQgNS4yNTczNiA0IDQuMzc4NjggNC44Nzg2OEMzLjUgNS43NTczNiAzLjUgNy4xNzE1NyAzLjUgMTBWMTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNSAyMEgxOUMyMC42NTY5IDIwIDIyIDE4LjY1NjkgMjIgMTdWMTZDMjIgMTUuNDQ3NyAyMS41NTIzIDE1IDIxIDE1SDE2LjY2NjdDMTYuMjMzOSAxNSAxNS44MTI5IDE1LjE0MDQgMTUuNDY2NyAxNS40TDE0LjUzMzMgMTYuMUMxNC4xODcxIDE2LjM1OTYgMTMuNzY2MSAxNi41IDEzLjMzMzMgMTYuNUgxMC42NjY3QzEwLjIzMzkgMTYuNSA5LjgxMjg2IDE2LjM1OTYgOS40NjY2NyAxNi4xTDguNTMzMzMgMTUuNEM4LjE4NzE0IDE1LjE0MDQgNy43NjYwNyAxNSA3LjMzMzMzIDE1SDNDMi40NDc3MiAxNSAyIDE1LjQ0NzcgMiAxNlYxN0MyIDE4LjY1NjkgMy4zNDMxNSAyMCA1IDIwWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class Laptop2LinearIcon extends StatelessWidget {
  /// Creates the `laptop-2` icon in the linear style.
  const Laptop2LinearIcon({
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
    name: 'laptop-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20.5 15V10C20.5 7.17157 20.5 5.75736 19.6213 4.87868C18.7426 4 17.3284 4 14.5 4H9.5C6.67157 4 5.25736 4 4.37868 4.87868C3.5 5.75736 3.5 7.17157 3.5 10V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 20H19C20.6569 20 22 18.6569 22 17V16C22 15.4477 21.5523 15 21 15H16.6667C16.2339 15 15.8129 15.1404 15.4667 15.4L14.5333 16.1C14.1871 16.3596 13.7661 16.5 13.3333 16.5H10.6667C10.2339 16.5 9.81286 16.3596 9.46667 16.1L8.53333 15.4C8.18714 15.1404 7.76607 15 7.33333 15H3C2.44772 15 2 15.4477 2 16V17C2 18.6569 3.34315 20 5 20Z" stroke="currentColor" stroke-linecap="round"/>''',
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
