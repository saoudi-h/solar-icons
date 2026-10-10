// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `laptop-3` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTQuNSAySDkuNUM2LjY3MTU3IDIgNS4yNTczNiAyIDQuMzc4NjggMi44Nzg2OEMzLjUgMy43NTczNiAzLjUgNS4xNzE1NyAzLjUgOFYxMS41QzMuNSAxMy4zODU2IDMuNSAxNC4zMjg0IDQuMDg1NzkgMTQuOTE0MkM0LjY3MTU3IDE1LjUgNS42MTQzOCAxNS41IDcuNSAxNS41SDE2LjVDMTguMzg1NiAxNS41IDE5LjMyODQgMTUuNSAxOS45MTQyIDE0LjkxNDJDMjAuNSAxNC4zMjg0IDIwLjUgMTMuMzg1NiAyMC41IDExLjVWOEMyMC41IDUuMTcxNTcgMjAuNSAzLjc1NzM2IDE5LjYyMTMgMi44Nzg2OEMxOC43NDI2IDIgMTcuMzI4NCAyIDE0LjUgMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTUgMjJIMTlDMjAuNjU2OSAyMiAyMiAyMC42NTY5IDIyIDE5VjE4QzIyIDE3LjQ0NzcgMjEuNTUyMyAxNyAyMSAxN0gxNi42NjY3QzE2LjIzMzkgMTcgMTUuODEyOSAxNy4xNDA0IDE1LjQ2NjcgMTcuNEwxNC41MzMzIDE4LjFDMTQuMTg3MSAxOC4zNTk2IDEzLjc2NjEgMTguNSAxMy4zMzMzIDE4LjVIMTAuNjY2N0MxMC4yMzM5IDE4LjUgOS44MTI4NiAxOC4zNTk2IDkuNDY2NjcgMTguMUw4LjUzMzMzIDE3LjRDOC4xODcxNCAxNy4xNDA0IDcuNzY2MDcgMTcgNy4zMzMzMyAxN0gzQzIuNDQ3NzIgMTcgMiAxNy40NDc3IDIgMThWMTlDMiAyMC42NTY5IDMuMzQzMTUgMjIgNSAyMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class Laptop3BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `laptop-3` icon in the boldDuotone style.
  const Laptop3BoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M5 22H19C20.6569 22 22 20.6569 22 19V18C22 17.4477 21.5523 17 21 17H16.6667C16.2339 17 15.8129 17.1404 15.4667 17.4L14.5333 18.1C14.1871 18.3596 13.7661 18.5 13.3333 18.5H10.6667C10.2339 18.5 9.81286 18.3596 9.46667 18.1L8.53333 17.4C8.18714 17.1404 7.76607 17 7.33333 17H3C2.44772 17 2 17.4477 2 18V19C2 20.6569 3.34315 22 5 22Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.5 2H9.5C6.67157 2 5.25736 2 4.37868 2.87868C3.5 3.75736 3.5 5.17157 3.5 8V11.5C3.5 13.3856 3.5 14.3284 4.08579 14.9142C4.67157 15.5 5.61438 15.5 7.5 15.5H16.5C18.3856 15.5 19.3284 15.5 19.9142 14.9142C20.5 14.3284 20.5 13.3856 20.5 11.5V8C20.5 5.17157 20.5 3.75736 19.6213 2.87868C18.7426 2 17.3284 2 14.5 2Z" fill="currentColor"/>''',
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
