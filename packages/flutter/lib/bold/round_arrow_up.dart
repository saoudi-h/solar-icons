// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjIgMTJDMjIgNi40NzcxNSAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyWk04LjQ2OTY3IDExLjUzMDNDOC4xNzY3OCAxMS4yMzc0IDguMTc2NzggMTAuNzYyNiA4LjQ2OTY3IDEwLjQ2OTdMMTEuNDY5NyA3LjQ2OTY3QzExLjc2MjYgNy4xNzY3OCAxMi4yMzc0IDcuMTc2NzggMTIuNTMwMyA3LjQ2OTY3TDE1LjUzMDMgMTAuNDY5N0MxNS44MjMyIDEwLjc2MjYgMTUuODIzMiAxMS4yMzc0IDE1LjUzMDMgMTEuNTMwM0MxNS4yMzc0IDExLjgyMzIgMTQuNzYyNiAxMS44MjMyIDE0LjQ2OTcgMTEuNTMwM0wxMi43NSA5LjgxMDY2VjE2QzEyLjc1IDE2LjQxNDIgMTIuNDE0MiAxNi43NSAxMiAxNi43NUMxMS41ODU4IDE2Ljc1IDExLjI1IDE2LjQxNDIgMTEuMjUgMTZWOS44MTA2Nkw5LjUzMDMzIDExLjUzMDNDOS4yMzc0NCAxMS44MjMyIDguNzYyNTYgMTEuODIzMiA4LjQ2OTY3IDExLjUzMDNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RoundArrowUpBoldIcon extends StatelessWidget {
  /// Creates the `round-arrow-up` icon in the bold style.
  const RoundArrowUpBoldIcon({
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
    name: 'round-arrow-up',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12ZM8.46967 11.5303C8.17678 11.2374 8.17678 10.7626 8.46967 10.4697L11.4697 7.46967C11.7626 7.17678 12.2374 7.17678 12.5303 7.46967L15.5303 10.4697C15.8232 10.7626 15.8232 11.2374 15.5303 11.5303C15.2374 11.8232 14.7626 11.8232 14.4697 11.5303L12.75 9.81066V16C12.75 16.4142 12.4142 16.75 12 16.75C11.5858 16.75 11.25 16.4142 11.25 16V9.81066L9.53033 11.5303C9.23744 11.8232 8.76256 11.8232 8.46967 11.5303Z" fill="currentColor"/>''',
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
