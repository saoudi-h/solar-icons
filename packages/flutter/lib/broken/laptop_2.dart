// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMC41IDE1VjEwQzIwLjUgNy4xNzE1NyAyMC41IDUuNzU3MzYgMTkuNjIxMyA0Ljg3ODY4QzE4Ljc0MjYgNCAxNy4zMjg0IDQgMTQuNSA0SDE0TTMuNSAxNVYxMEMzLjUgNy4xNzE1NyAzLjUgNS43NTczNiA0LjM3ODY4IDQuODc4NjhDNS4yNTczNiA0IDYuNjcxNTcgNCA5LjUgNEgxMCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAyMEg1QzMuMzQzMTUgMjAgMiAxOC42NTY5IDIgMTdWMTZDMiAxNS40NDc3IDIuNDQ3NzIgMTUgMyAxNUg3LjMzMzMzQzcuNzY2MDcgMTUgOC4xODcxNCAxNS4xNDA0IDguNTMzMzMgMTUuNEw5LjQ2NjY3IDE2LjFDOS44MTI4NiAxNi4zNTk2IDEwLjIzMzkgMTYuNSAxMC42NjY3IDE2LjVIMTMuMzMzM0MxMy43NjYxIDE2LjUgMTQuMTg3MSAxNi4zNTk2IDE0LjUzMzMgMTYuMUwxNS40NjY3IDE1LjRDMTUuODEyOSAxNS4xNDA0IDE2LjIzMzkgMTUgMTYuNjY2NyAxNUgyMUMyMS41NTIzIDE1IDIyIDE1LjQ0NzcgMjIgMTZWMTdDMjIgMTguNjU2OSAyMC42NTY5IDIwIDE5IDIwSDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Laptop2BrokenIcon extends StatelessWidget {
  /// Creates the `laptop-2` icon in the broken style.
  const Laptop2BrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20.5 15V10C20.5 7.17157 20.5 5.75736 19.6213 4.87868C18.7426 4 17.3284 4 14.5 4H14M3.5 15V10C3.5 7.17157 3.5 5.75736 4.37868 4.87868C5.25736 4 6.67157 4 9.5 4H10" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 20H5C3.34315 20 2 18.6569 2 17V16C2 15.4477 2.44772 15 3 15H7.33333C7.76607 15 8.18714 15.1404 8.53333 15.4L9.46667 16.1C9.81286 16.3596 10.2339 16.5 10.6667 16.5H13.3333C13.7661 16.5 14.1871 16.3596 14.5333 16.1L15.4667 15.4C15.8129 15.1404 16.2339 15 16.6667 15H21C21.5523 15 22 15.4477 22 16V17C22 18.6569 20.6569 20 19 20H16" stroke="currentColor" stroke-linecap="round"/>''',
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
