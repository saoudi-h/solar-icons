// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMy4xODA5IDE1LjU0MjdMOC40NTczMSAxMC44MTkxTTExLjYwNjQgNy42NzAwNEMxMi43MTk3IDYuNTU2NjggMTMuMjc2NCA2IDEzLjk2ODIgNkMxNC42NTk5IDYgMTUuMjE2NiA2LjU1NjY4IDE2LjMzIDcuNjcwMDRDMTcuNDQzMyA4Ljc4MzQgMTggOS4zNDAwOCAxOCAxMC4wMzE4QzE4IDEwLjcyMzYgMTcuNDQzMyAxMS4yODAzIDE2LjMzIDEyLjM5MzZMMTIuMzkzNiAxNi4zM0MxMS4yODAzIDE3LjQ0MzMgMTAuNzIzNiAxOCAxMC4wMzE4IDE4QzkuMzQwMDggMTggOC43ODM0IDE3LjQ0MzMgNy42NzAwNCAxNi4zM0M2LjU1NjY4IDE1LjIxNjYgNiAxNC42NTk5IDYgMTMuOTY4MkM2IDEzLjI3NjQgNi41NTY2OCAxMi43MTk3IDcuNjcwMDQgMTEuNjA2NEwxMS42MDY0IDcuNjcwMDRaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcgMy4zMzc4MkM4LjQ3MDg3IDIuNDg2OTcgMTAuMTc4NiAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJDMiAxMC4xNzg2IDIuNDg2OTcgOC40NzA4NyAzLjMzNzgyIDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class EraserCircleBrokenIcon extends StatelessWidget {
  /// Creates the `eraser-circle` icon in the broken style.
  const EraserCircleBrokenIcon({
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
    name: 'eraser-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13.1809 15.5427L8.45731 10.8191M11.6064 7.67004C12.7197 6.55668 13.2764 6 13.9682 6C14.6599 6 15.2166 6.55668 16.33 7.67004C17.4433 8.7834 18 9.34008 18 10.0318C18 10.7236 17.4433 11.2803 16.33 12.3936L12.3936 16.33C11.2803 17.4433 10.7236 18 10.0318 18C9.34008 18 8.7834 17.4433 7.67004 16.33C6.55668 15.2166 6 14.6599 6 13.9682C6 13.2764 6.55668 12.7197 7.67004 11.6064L11.6064 7.67004Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
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
