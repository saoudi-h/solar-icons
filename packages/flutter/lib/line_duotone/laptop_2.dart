// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `laptop-2` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjAuNSAxNVYxMEMyMC41IDcuMTcxNTcgMjAuNSA1Ljc1NzM2IDE5LjYyMTMgNC44Nzg2OEMxOC43NDI2IDQgMTcuMzI4NCA0IDE0LjUgNEg5LjVDNi42NzE1NyA0IDUuMjU3MzYgNCA0LjM3ODY4IDQuODc4NjhDMy41IDUuNzU3MzYgMy41IDcuMTcxNTcgMy41IDEwVjE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTUgMjBIMTlDMjAuNjU2OSAyMCAyMiAxOC42NTY5IDIyIDE3VjE2QzIyIDE1LjQ0NzcgMjEuNTUyMyAxNSAyMSAxNUgxNi42NjY3QzE2LjIzMzkgMTUgMTUuODEyOSAxNS4xNDA0IDE1LjQ2NjcgMTUuNEwxNC41MzMzIDE2LjFDMTQuMTg3MSAxNi4zNTk2IDEzLjc2NjEgMTYuNSAxMy4zMzMzIDE2LjVIMTAuNjY2N0MxMC4yMzM5IDE2LjUgOS44MTI4NiAxNi4zNTk2IDkuNDY2NjcgMTYuMUw4LjUzMzMzIDE1LjRDOC4xODcxNCAxNS4xNDA0IDcuNzY2MDcgMTUgNy4zMzMzMyAxNUgzQzIuNDQ3NzIgMTUgMiAxNS40NDc3IDIgMTZWMTdDMiAxOC42NTY5IDMuMzQzMTUgMjAgNSAyMFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Laptop2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `laptop-2` icon in the lineDuotone style.
  const Laptop2LineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5 20H19C20.6569 20 22 18.6569 22 17V16C22 15.4477 21.5523 15 21 15H16.6667C16.2339 15 15.8129 15.1404 15.4667 15.4L14.5333 16.1C14.1871 16.3596 13.7661 16.5 13.3333 16.5H10.6667C10.2339 16.5 9.81286 16.3596 9.46667 16.1L8.53333 15.4C8.18714 15.1404 7.76607 15 7.33333 15H3C2.44772 15 2 15.4477 2 16V17C2 18.6569 3.34315 20 5 20Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.5 15V10C20.5 7.17157 20.5 5.75736 19.6213 4.87868C18.7426 4 17.3284 4 14.5 4H9.5C6.67157 4 5.25736 4 4.37868 4.87868C3.5 5.75736 3.5 7.17157 3.5 10V15" stroke="currentColor" stroke-linecap="round"/>''',
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
