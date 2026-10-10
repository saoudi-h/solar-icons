// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `logout-2` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE1IDEyTDIgMTJNNS41IDE1TDIgMTJMNS41IDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNOS4wMDE5NSA3QzkuMDE0MDYgNC44MjQ5NyA5LjExMDUxIDMuNjQ3MDYgOS44Nzg4OSAyLjg3ODY4QzEwLjc1NzYgMiAxMi4xNzE4IDIgMTUuMDAwMiAyTDE2LjAwMDIgMkMxOC44Mjg2IDIgMjAuMjQyOSAyIDIxLjEyMTUgMi44Nzg2OEMyMi4wMDAyIDMuNzU3MzYgMjIuMDAwMiA1LjE3MTU3IDIyLjAwMDIgOEwyMi4wMDAyIDE2QzIyLjAwMDIgMTguODI4NCAyMi4wMDAyIDIwLjI0MjYgMjEuMTIxNSAyMS4xMjEzQzIwLjM1MzEgMjEuODg5NyAxOS4xNzUyIDIxLjk4NjIgMTcgMjEuOTk4M005LjAwMTk1IDE3QzkuMDE0MDYgMTkuMTc1IDkuMTEwNTEgMjAuMzUyOSA5Ljg3ODg5IDIxLjEyMTNDMTAuNTIwMiAyMS43NjI2IDExLjQ0NjcgMjEuOTM1OSAxMyAyMS45ODI3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Logout2BrokenIcon extends StatelessWidget {
  /// Creates the `logout-2` icon in the broken style.
  const Logout2BrokenIcon({
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
    name: 'logout-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 12L2 12M5.5 15L2 12L5.5 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.00195 7C9.01406 4.82497 9.11051 3.64706 9.87889 2.87868C10.7576 2 12.1718 2 15.0002 2L16.0002 2C18.8286 2 20.2429 2 21.1215 2.87868C22.0002 3.75736 22.0002 5.17157 22.0002 8L22.0002 16C22.0002 18.8284 22.0002 20.2426 21.1215 21.1213C20.3531 21.8897 19.1752 21.9862 17 21.9983M9.00195 17C9.01406 19.175 9.11051 20.3529 9.87889 21.1213C10.5202 21.7626 11.4467 21.9359 13 21.9827" stroke="currentColor" stroke-linecap="round"/>''',
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
