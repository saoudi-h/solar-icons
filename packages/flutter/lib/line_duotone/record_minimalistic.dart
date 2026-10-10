// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `record-minimalistic` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIxIDExLjVDMjEgMTMuNDMzIDE5LjQzMyAxNSAxNy41IDE1QzE1LjU2NyAxNSAxNCAxMy40MzMgMTQgMTEuNUMxNCA5LjU2NyAxNS41NjcgOCAxNy41IDhDMTkuNDMzIDggMjEgOS41NjcgMjEgMTEuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAgMTEuNUMxMCAxMy40MzMgOC40MzMgMTUgNi41IDE1QzQuNTY3IDE1IDMgMTMuNDMzIDMgMTEuNUMzIDkuNTY3IDQuNTY3IDggNi41IDhDOC40MzMgOCAxMCA5LjU2NyAxMCAxMS41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTYuNSAxNUgxNy41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class RecordMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `record-minimalistic` icon in the lineDuotone style.
  const RecordMinimalisticLineDuotoneIcon({
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
    name: 'record-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21 11.5C21 13.433 19.433 15 17.5 15C15.567 15 14 13.433 14 11.5C14 9.567 15.567 8 17.5 8C19.433 8 21 9.567 21 11.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 11.5C10 13.433 8.433 15 6.5 15C4.567 15 3 13.433 3 11.5C3 9.567 4.567 8 6.5 8C8.433 8 10 9.567 10 11.5Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6.5 15H17.5" stroke="currentColor" stroke-linecap="round"/>''',
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
