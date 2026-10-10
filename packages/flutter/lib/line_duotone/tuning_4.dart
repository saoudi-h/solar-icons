// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tuning-4` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDE0QzEwLjg5NTQgMTQgMTAgMTMuMTA0NiAxMCAxMkMxMCAxMC44OTU0IDEwLjg5NTQgMTAgMTIgMTBDMTMuMTA0NiAxMCAxNCAxMC44OTU0IDE0IDEyQzE0IDEzLjEwNDYgMTMuMTA0NiAxNCAxMiAxNFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTQgNkMxMi44OTU0IDYgMTIgNS4xMDQ1NyAxMiA0QzEyIDIuODk1NDMgMTIuODk1NCAyIDE0IDJDMTUuMTA0NiAyIDE2IDIuODk1NDMgMTYgNEMxNiA1LjEwNDU3IDE1LjEwNDYgNiAxNCA2WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMCAyMkMxMS4xMDQ2IDIyIDEyIDIxLjEwNDYgMTIgMjBDMTIgMTguODk1NCAxMS4xMDQ2IDE4IDEwIDE4QzguODk1NDMgMTggOCAxOC44OTU0IDggMjBDOCAyMS4xMDQ2IDguODk1NDMgMjIgMTAgMjJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjBIMTlNMTkgMTJIMTRNMTkgNEgxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDRMNSA0TTEwIDEySDVNNSAyMEg3LjY2NjY3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Tuning4LineDuotoneIcon extends StatelessWidget {
  /// Creates the `tuning-4` icon in the lineDuotone style.
  const Tuning4LineDuotoneIcon({
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
    name: 'tuning-4',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 14C10.8954 14 10 13.1046 10 12C10 10.8954 10.8954 10 12 10C13.1046 10 14 10.8954 14 12C14 13.1046 13.1046 14 12 14Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 6C12.8954 6 12 5.10457 12 4C12 2.89543 12.8954 2 14 2C15.1046 2 16 2.89543 16 4C16 5.10457 15.1046 6 14 6Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 22C11.1046 22 12 21.1046 12 20C12 18.8954 11.1046 18 10 18C8.89543 18 8 18.8954 8 20C8 21.1046 8.89543 22 10 22Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 20H19M19 12H14M19 4H16" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 4L5 4M10 12H5M5 20H7.66667" stroke="currentColor" stroke-linecap="round"/>''',
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
