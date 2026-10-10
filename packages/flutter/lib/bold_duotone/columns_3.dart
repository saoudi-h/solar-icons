// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `columns-3` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxMUMyIDcuMjI4NzYgMiA1LjM0MzE1IDMuMTcxNTcgNC4xNzE1N0M0LjM0MzE1IDMgNi4yMjg3NiAzIDEwIDNIMTRDMTcuNzcxMiAzIDE5LjY1NjkgMyAyMC44Mjg0IDQuMTcxNTdDMjIgNS4zNDMxNSAyMiA3LjIyODc2IDIyIDExVjEzQzIyIDE2Ljc3MTIgMjIgMTguNjU2OSAyMC44Mjg0IDE5LjgyODRDMTkuNjU2OSAyMSAxNy43NzEyIDIxIDE0IDIxSDEwQzYuMjI4NzYgMjEgNC4zNDMxNSAyMSAzLjE3MTU3IDE5LjgyODRDMiAxOC42NTY5IDIgMTYuNzcxMiAyIDEzVjExWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTYuMDgzIDMuMDEyN1YyMC45ODYzQzE1LjYyMiAyMC45OTM3IDE1LjEyMzMgMjAuOTk5NSAxNC41ODMgMjFWM0MxNS4xMjMzIDMuMDAwNSAxNS42MjIgMy4wMDUzMiAxNi4wODMgMy4wMTI3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNOS40MTYwMiAyMC45OTlDOC44NzU2OCAyMC45OTg1IDguMzc3MDcgMjAuOTkzNyA3LjkxNjAyIDIwLjk4NjNWMy4wMTI3QzguMzc3MDYgMy4wMDUzMSA4Ljg3NTY5IDMuMDAwNSA5LjQxNjAyIDNWMjAuOTk5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class Columns3BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `columns-3` icon in the boldDuotone style.
  const Columns3BoldDuotoneIcon({
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
    name: 'columns-3',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.083 3.0127V20.9863C15.622 20.9937 15.1233 20.9995 14.583 21V3C15.1233 3.0005 15.622 3.00532 16.083 3.0127Z" fill="currentColor"/>
<path d="M9.41602 20.999C8.87568 20.9985 8.37707 20.9937 7.91602 20.9863V3.0127C8.37706 3.00531 8.87569 3.0005 9.41602 3V20.999Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" fill="currentColor"/>''',
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
