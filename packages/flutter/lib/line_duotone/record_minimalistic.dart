// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMSAxMS41QzIxIDEzLjQzMyAxOS40MzMgMTUgMTcuNSAxNUMxNS41NjcgMTUgMTQgMTMuNDMzIDE0IDExLjVDMTQgOS41NjcgMTUuNTY3IDggMTcuNSA4QzE5LjQzMyA4IDIxIDkuNTY3IDIxIDExLjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwIDExLjVDMTAgMTMuNDMzIDguNDMzIDE1IDYuNSAxNUM0LjU2NyAxNSAzIDEzLjQzMyAzIDExLjVDMyA5LjU2NyA0LjU2NyA4IDYuNSA4QzguNDMzIDggMTAgOS41NjcgMTAgMTEuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik02LjUgMTVIMTcuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
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
