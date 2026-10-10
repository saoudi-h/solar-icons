// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `laptop-2` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwLjUgMTVWMTBDMjAuNSA3LjE3MTU3IDIwLjUgNS43NTczNiAxOS42MjEzIDQuODc4NjhDMTguNzQyNiA0IDE3LjMyODQgNCAxNC41IDRIMTRNMy41IDE1VjEwQzMuNSA3LjE3MTU3IDMuNSA1Ljc1NzM2IDQuMzc4NjggNC44Nzg2OEM1LjI1NzM2IDQgNi42NzE1NyA0IDkuNSA0SDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDIwSDVDMy4zNDMxNSAyMCAyIDE4LjY1NjkgMiAxN1YxNkMyIDE1LjQ0NzcgMi40NDc3MiAxNSAzIDE1SDcuMzMzMzNDNy43NjYwNyAxNSA4LjE4NzE0IDE1LjE0MDQgOC41MzMzMyAxNS40TDkuNDY2NjcgMTYuMUM5LjgxMjg2IDE2LjM1OTYgMTAuMjMzOSAxNi41IDEwLjY2NjcgMTYuNUgxMy4zMzMzQzEzLjc2NjEgMTYuNSAxNC4xODcxIDE2LjM1OTYgMTQuNTMzMyAxNi4xTDE1LjQ2NjcgMTUuNEMxNS44MTI5IDE1LjE0MDQgMTYuMjMzOSAxNSAxNi42NjY3IDE1SDIxQzIxLjU1MjMgMTUgMjIgMTUuNDQ3NyAyMiAxNlYxN0MyMiAxOC42NTY5IDIwLjY1NjkgMjAgMTkgMjBIMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
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
