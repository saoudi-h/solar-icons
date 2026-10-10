// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-left-down` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS41NjA3IDEzLjVMMTAuNSAxMi40Mzk0TDYuNTMwMzMgOC40Njk2OUM2LjMxNTgzIDguMjU1MTkgNS45OTMyNCA4LjE5MTAzIDUuNzEyOTkgOC4zMDcxMUM1LjQzMjczIDguNDIzMiA1LjI1IDguNjk2NjggNS4yNSA5LjAwMDAyVjE4QzUuMjUgMTguNDE0MiA1LjU4NTc5IDE4Ljc1IDYgMTguNzVMMTUgMTguNzVDMTUuMzAzMyAxOC43NSAxNS41NzY4IDE4LjU2NzMgMTUuNjkyOSAxOC4yODdDMTUuODA5IDE4LjAwNjggMTUuNzQ0OCAxNy42ODQyIDE1LjUzMDMgMTcuNDY5N0wxMS41NjA3IDEzLjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE4LjUzMDMgNi41MzAzM0MxOC44MjMyIDYuMjM3NDQgMTguODIzMiA1Ljc2MjU2IDE4LjUzMDMgNS40Njk2N0MxOC4yMzc0IDUuMTc2NzggMTcuNzYyNiA1LjE3Njc4IDE3LjQ2OTcgNS40Njk2N0wxMC41IDEyLjQzOTNMMTEuNTYwNyAxMy41TDE4LjUzMDMgNi41MzAzM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowLeftDownBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-left-down` icon in the boldDuotone style.
  const ArrowLeftDownBoldDuotoneIcon({
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
    name: 'arrow-left-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5607 13.5L10.5 12.4394L6.53033 8.46969C6.31583 8.25519 5.99324 8.19103 5.71299 8.30711C5.43273 8.4232 5.25 8.69668 5.25 9.00002V18C5.25 18.4142 5.58579 18.75 6 18.75L15 18.75C15.3033 18.75 15.5768 18.5673 15.6929 18.287C15.809 18.0068 15.7448 17.6842 15.5303 17.4697L11.5607 13.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.5303 6.53033C18.8232 6.23744 18.8232 5.76256 18.5303 5.46967C18.2374 5.17678 17.7626 5.17678 17.4697 5.46967L10.5 12.4393L11.5607 13.5L18.5303 6.53033Z" fill="currentColor"/>''',
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
