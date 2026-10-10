// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMi43NUM2Ljg5MTM3IDIuNzUgMi43NSA2Ljg5MTM3IDIuNzUgMTJDMi43NSAxNy4xMDg2IDYuODkxMzcgMjEuMjUgMTIgMjEuMjVDMTcuMTA4NiAyMS4yNSAyMS4yNSAxNy4xMDg2IDIxLjI1IDEyQzIxLjI1IDYuODkxMzcgMTcuMTA4NiAyLjc1IDEyIDIuNzVaTTEuMjUgMTJDMS4yNSA2LjA2Mjk0IDYuMDYyOTQgMS4yNSAxMiAxLjI1QzE3LjkzNzEgMS4yNSAyMi43NSA2LjA2Mjk0IDIyLjc1IDEyQzIyLjc1IDE3LjkzNzEgMTcuOTM3MSAyMi43NSAxMiAyMi43NUM2LjA2Mjk0IDIyLjc1IDEuMjUgMTcuOTM3MSAxLjI1IDEyWk05Ljk2OTY3IDguNDY5NjdDMTAuMjYyNiA4LjE3Njc4IDEwLjczNzQgOC4xNzY3OCAxMS4wMzAzIDguNDY5NjdMMTQuMDMwMyAxMS40Njk3QzE0LjMyMzIgMTEuNzYyNiAxNC4zMjMyIDEyLjIzNzQgMTQuMDMwMyAxMi41MzAzTDExLjAzMDMgMTUuNTMwM0MxMC43Mzc0IDE1LjgyMzIgMTAuMjYyNiAxNS44MjMyIDkuOTY5NjcgMTUuNTMwM0M5LjY3Njc4IDE1LjIzNzQgOS42NzY3OCAxNC43NjI2IDkuOTY5NjcgMTQuNDY5N0wxMi40MzkzIDEyTDkuOTY5NjcgOS41MzAzM0M5LjY3Njc4IDkuMjM3NDQgOS42NzY3OCA4Ljc2MjU2IDkuOTY5NjcgOC40Njk2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class RoundAltArrowRightOutlineIcon extends StatelessWidget {
  /// Creates the `round-alt-arrow-right` icon in the outline style.
  const RoundAltArrowRightOutlineIcon({
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
    name: 'round-alt-arrow-right',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM9.96967 8.46967C10.2626 8.17678 10.7374 8.17678 11.0303 8.46967L14.0303 11.4697C14.3232 11.7626 14.3232 12.2374 14.0303 12.5303L11.0303 15.5303C10.7374 15.8232 10.2626 15.8232 9.96967 15.5303C9.67678 15.2374 9.67678 14.7626 9.96967 14.4697L12.4393 12L9.96967 9.53033C9.67678 9.23744 9.67678 8.76256 9.96967 8.46967Z" fill="currentColor"/>''',
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
