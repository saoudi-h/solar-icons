// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `walking-round` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxMi41IiBjeT0iNC41IiByPSIyLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik03IDIyTDcuNTA5MTcgMjEuNTkyN0M4Ljc5NTA2IDIwLjU2NCA5LjY3NzA1IDE5LjExNDggMTAgMTcuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMS41IDEwTDExLjE1ODIgMTMuNDE3N0MxMS4wODAxIDE0LjE5OTIgMTEuMDQxIDE0LjU4OTkgMTEuMTQ2NCAxNC45NTgxQzExLjI1MTcgMTUuMzI2MyAxMS40OTE2IDE1LjYzNzIgMTEuOTcxMyAxNi4yNTlMMTYuNDAwNCAyMk0xMS41IDEwQzExLjMzODcgMTAgMTEuMTYwMSAxMC4wMDU4IDEwLjk2OTggMTAuMDE2MUM4LjY2NDk0IDEwLjE0MSA3IDEyLjE5MTggNyAxNC41TTExLjUgMTBDMTIuMDA0MiAxMCAxMi41NjQ5IDEwLjA1NjUgMTMuMDg3MiAxMC4xMzE1QzE0LjI4ODYgMTAuMzA0MSAxNS4yMzI0IDExLjE5NzMgMTUuNjE2MyAxMi4zNDg4QzE1LjgzNzMgMTMuMDExOCAxNi41MDc3IDEzLjQxNTQgMTcuMTk2OSAxMy4zMDA1TDE5IDEzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class WalkingRoundLineDuotoneIcon extends StatelessWidget {
  /// Creates the `walking-round` icon in the lineDuotone style.
  const WalkingRoundLineDuotoneIcon({
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
    name: 'walking-round',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11.5 10L11.1582 13.4177C11.0801 14.1992 11.041 14.5899 11.1464 14.9581C11.2517 15.3263 11.4916 15.6372 11.9713 16.259L16.4004 22M11.5 10C11.3387 10 11.1601 10.0058 10.9698 10.0161C8.66494 10.141 7 12.1918 7 14.5M11.5 10C12.0042 10 12.5649 10.0565 13.0872 10.1315C14.2886 10.3041 15.2324 11.1973 15.6163 12.3488C15.8373 13.0118 16.5077 13.4154 17.1969 13.3005L19 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M7 22L7.50917 21.5927C8.79506 20.564 9.67705 19.1148 10 17.5" stroke="currentColor" stroke-linecap="round"/>''',
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
