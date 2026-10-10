// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-right-down` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNy40Njk3IDguNDY5NjlDMTcuNjg0MiA4LjI1NTE5IDE4LjAwNjggOC4xOTEwMyAxOC4yODcgOC4zMDcxMUMxOC41NjczIDguNDIzMiAxOC43NSA4LjY5NjY4IDE4Ljc1IDkuMDAwMDJWMThDMTguNzUgMTguNDE0MiAxOC40MTQyIDE4Ljc1IDE4IDE4Ljc1TDkuMDAwMDIgMTguNzVDOC42OTY2OCAxOC43NSA4LjQyMzIgMTguNTY3MyA4LjMwNzExIDE4LjI4N0M4LjE5MTAzIDE4LjAwNjggOC4yNTUxOSAxNy42ODQyIDguNDY5NjkgMTcuNDY5N0wxNy40Njk3IDguNDY5NjlaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTUuNDY5NjcgNi41MzAzM0M1LjE3Njc4IDYuMjM3NDQgNS4xNzY3OCA1Ljc2MjU2IDUuNDY5NjcgNS40Njk2N0M1Ljc2MjU2IDUuMTc2NzggNi4yMzc0NCA1LjE3Njc4IDYuNTMwMzMgNS40Njk2N0wxMy41IDEyLjQzOTNMMTIuNDM5MyAxMy41TDUuNDY5NjcgNi41MzAzM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowRightDownBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-right-down` icon in the boldDuotone style.
  const ArrowRightDownBoldDuotoneIcon({
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
    name: 'arrow-right-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.4697 8.46969C17.6842 8.25519 18.0068 8.19103 18.287 8.30711C18.5673 8.4232 18.75 8.69668 18.75 9.00002V18C18.75 18.4142 18.4142 18.75 18 18.75L9.00002 18.75C8.69668 18.75 8.4232 18.5673 8.30711 18.287C8.19103 18.0068 8.25519 17.6842 8.46969 17.4697L17.4697 8.46969Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.46967 6.53033C5.17678 6.23744 5.17678 5.76256 5.46967 5.46967C5.76256 5.17678 6.23744 5.17678 6.53033 5.46967L13.5 12.4393L12.4393 13.5L5.46967 6.53033Z" fill="currentColor"/>''',
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
