// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNOSA2Ljc1QzguNTg1NzkgNi43NSA4LjI1IDYuNDE0MjEgOC4yNSA2QzguMjUgNS41ODU3OSA4LjU4NTc5IDUuMjUgOSA1LjI1SDE4QzE4LjQxNDIgNS4yNSAxOC43NSA1LjU4NTc5IDE4Ljc1IDZWMTVDMTguNzUgMTUuNDE0MiAxOC40MTQyIDE1Ljc1IDE4IDE1Ljc1QzE3LjU4NTggMTUuNzUgMTcuMjUgMTUuNDE0MiAxNy4yNSAxNVY3LjgxMDY2TDYuNTMwMzMgMTguNTMwM0M2LjIzNzQ0IDE4LjgyMzIgNS43NjI1NiAxOC44MjMyIDUuNDY5NjcgMTguNTMwM0M1LjE3Njc4IDE4LjIzNzQgNS4xNzY3OCAxNy43NjI2IDUuNDY5NjcgMTcuNDY5N0wxNi4xODkzIDYuNzVIOVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowRightUpOutlineIcon extends StatelessWidget {
  /// Creates the `arrow-right-up` icon in the outline style.
  const ArrowRightUpOutlineIcon({
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
    name: 'arrow-right-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9 6.75C8.58579 6.75 8.25 6.41421 8.25 6C8.25 5.58579 8.58579 5.25 9 5.25H18C18.4142 5.25 18.75 5.58579 18.75 6V15C18.75 15.4142 18.4142 15.75 18 15.75C17.5858 15.75 17.25 15.4142 17.25 15V7.81066L6.53033 18.5303C6.23744 18.8232 5.76256 18.8232 5.46967 18.5303C5.17678 18.2374 5.17678 17.7626 5.46967 17.4697L16.1893 6.75H9Z" fill="currentColor"/>''',
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
