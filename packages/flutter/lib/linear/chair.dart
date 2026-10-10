// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNyAyMVYxNk03IDIxVjE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1LjQ5OTggMTJIOC40OTk3N0M2Ljg0OTg1IDEyIDYuMDI0ODkgMTIgNS41MTIzMyAxMi41ODU4QzUuMjI2NDUgMTIuOTEyNSA1LjEwMDAyIDEzLjM1MDMgNS4wNDQxIDE0LjAwMDhDNC45NjY2NiAxNC45MDE4IDQuOTI3OTMgMTUuMzUyMyA1LjIyNTE0IDE1LjY3NjJDNS41MjIzNSAxNiA2LjAxNDgyIDE2IDYuOTk5NzcgMTZIMTYuOTk5OEMxNy45ODQ3IDE2IDE4LjQ3NzIgMTYgMTguNzc0NCAxNS42NzYyQzE5LjA3MTYgMTUuMzUyMyAxOS4wMzI5IDE0LjkwMTggMTguOTU1NCAxNC4wMDA4QzE4Ljg5OTUgMTMuMzUwMyAxOC43NzMxIDEyLjkxMjUgMTguNDg3MiAxMi41ODU4QzE3Ljk3NDYgMTIgMTcuMTQ5NyAxMiAxNS40OTk4IDEyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik03IDhDNyA2LjEzMDc3IDcgNS4xOTYxNSA3LjQwMTkyIDQuNUM3LjY2NTIzIDQuMDQzOTQgOC4wNDM5NCAzLjY2NTIzIDguNSAzLjQwMTkyQzkuMTk2MTUgMyAxMC4xMzA4IDMgMTIgM0MxMy44NjkyIDMgMTQuODAzOCAzIDE1LjUgMy40MDE5MkMxNS45NTYxIDMuNjY1MjMgMTYuMzM0OCA0LjA0Mzk0IDE2LjU5ODEgNC41QzE3IDUuMTk2MTUgMTcgNi4xMzA3NyAxNyA4VjEySDdWOFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class ChairLinearIcon extends StatelessWidget {
  /// Creates the `chair` icon in the linear style.
  const ChairLinearIcon({
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
    name: 'chair',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M17 21V16M7 21V16" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.4998 12H8.49977C6.84985 12 6.02489 12 5.51233 12.5858C5.22645 12.9125 5.10002 13.3503 5.0441 14.0008C4.96666 14.9018 4.92793 15.3523 5.22514 15.6762C5.52235 16 6.01482 16 6.99977 16H16.9998C17.9847 16 18.4772 16 18.7744 15.6762C19.0716 15.3523 19.0329 14.9018 18.9554 14.0008C18.8995 13.3503 18.7731 12.9125 18.4872 12.5858C17.9746 12 17.1497 12 15.4998 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 8C7 6.13077 7 5.19615 7.40192 4.5C7.66523 4.04394 8.04394 3.66523 8.5 3.40192C9.19615 3 10.1308 3 12 3C13.8692 3 14.8038 3 15.5 3.40192C15.9561 3.66523 16.3348 4.04394 16.5981 4.5C17 5.19615 17 6.13077 17 8V12H7V8Z" stroke="currentColor" stroke-linecap="round"/>''',
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
