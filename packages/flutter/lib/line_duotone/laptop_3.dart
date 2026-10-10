// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `laptop-3` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTQuNSAySDkuNUM2LjY3MTU3IDIgNS4yNTczNiAyIDQuMzc4NjggMi44Nzg2OEMzLjUgMy43NTczNiAzLjUgNS4xNzE1NyAzLjUgOFYxMUMzLjUgMTIuODg1NiAzLjUgMTMuODI4NCA0LjA4NTc5IDE0LjQxNDJDNC42NzE1NyAxNSA1LjYxNDM4IDE1IDcuNSAxNUgxNi41QzE4LjM4NTYgMTUgMTkuMzI4NCAxNSAxOS45MTQyIDE0LjQxNDJDMjAuNSAxMy44Mjg0IDIwLjUgMTIuODg1NiAyMC41IDExVjhDMjAuNSA1LjE3MTU3IDIwLjUgMy43NTczNiAxOS42MjEzIDIuODc4NjhDMTguNzQyNiAyIDE3LjMyODQgMiAxNC41IDJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTUgMjJIMTlDMjAuNjU2OSAyMiAyMiAyMC42NTY5IDIyIDE5VjE4QzIyIDE3LjQ0NzcgMjEuNTUyMyAxNyAyMSAxN0gxNi42NjY3QzE2LjIzMzkgMTcgMTUuODEyOSAxNy4xNDA0IDE1LjQ2NjcgMTcuNEwxNC41MzMzIDE4LjFDMTQuMTg3MSAxOC4zNTk2IDEzLjc2NjEgMTguNSAxMy4zMzMzIDE4LjVIMTAuNjY2N0MxMC4yMzM5IDE4LjUgOS44MTI4NiAxOC4zNTk2IDkuNDY2NjcgMTguMUw4LjUzMzMzIDE3LjRDOC4xODcxNCAxNy4xNDA0IDcuNzY2MDcgMTcgNy4zMzMzMyAxN0gzQzIuNDQ3NzIgMTcgMiAxNy40NDc3IDIgMThWMTlDMiAyMC42NTY5IDMuMzQzMTUgMjIgNSAyMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Laptop3LineDuotoneIcon extends StatelessWidget {
  /// Creates the `laptop-3` icon in the lineDuotone style.
  const Laptop3LineDuotoneIcon({
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
    name: 'laptop-3',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5 22H19C20.6569 22 22 20.6569 22 19V18C22 17.4477 21.5523 17 21 17H16.6667C16.2339 17 15.8129 17.1404 15.4667 17.4L14.5333 18.1C14.1871 18.3596 13.7661 18.5 13.3333 18.5H10.6667C10.2339 18.5 9.81286 18.3596 9.46667 18.1L8.53333 17.4C8.18714 17.1404 7.76607 17 7.33333 17H3C2.44772 17 2 17.4477 2 18V19C2 20.6569 3.34315 22 5 22Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.5 2H9.5C6.67157 2 5.25736 2 4.37868 2.87868C3.5 3.75736 3.5 5.17157 3.5 8V11C3.5 12.8856 3.5 13.8284 4.08579 14.4142C4.67157 15 5.61438 15 7.5 15H16.5C18.3856 15 19.3284 15 19.9142 14.4142C20.5 13.8284 20.5 12.8856 20.5 11V8C20.5 5.17157 20.5 3.75736 19.6213 2.87868C18.7426 2 17.3284 2 14.5 2Z" stroke="currentColor" stroke-linecap="round"/>''',
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
