// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTAuNTMwMyA1LjQ2OTY3QzEwLjgyMzIgNS43NjI1NiAxMC44MjMyIDYuMjM3NDQgMTAuNTMwMyA2LjUzMDMzTDUuODEwNjYgMTEuMjVIMjBDMjAuNDE0MiAxMS4yNSAyMC43NSAxMS41ODU4IDIwLjc1IDEyQzIwLjc1IDEyLjQxNDIgMjAuNDE0MiAxMi43NSAyMCAxMi43NUg1LjgxMDY2TDEwLjUzMDMgMTcuNDY5N0MxMC44MjMyIDE3Ljc2MjYgMTAuODIzMiAxOC4yMzc0IDEwLjUzMDMgMTguNTMwM0MxMC4yMzc0IDE4LjgyMzIgOS43NjI1NiAxOC44MjMyIDkuNDY5NjcgMTguNTMwM0wzLjQ2OTY3IDEyLjUzMDNDMy4xNzY3OCAxMi4yMzc0IDMuMTc2NzggMTEuNzYyNiAzLjQ2OTY3IDExLjQ2OTdMOS40Njk2NyA1LjQ2OTY3QzkuNzYyNTYgNS4xNzY3OCAxMC4yMzc0IDUuMTc2NzggMTAuNTMwMyA1LjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowLeftOutlineIcon extends StatelessWidget {
  /// Creates the `arrow-left` icon in the outline style.
  const ArrowLeftOutlineIcon({
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
    name: 'arrow-left',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.5303 5.46967C10.8232 5.76256 10.8232 6.23744 10.5303 6.53033L5.81066 11.25H20C20.4142 11.25 20.75 11.5858 20.75 12C20.75 12.4142 20.4142 12.75 20 12.75H5.81066L10.5303 17.4697C10.8232 17.7626 10.8232 18.2374 10.5303 18.5303C10.2374 18.8232 9.76256 18.8232 9.46967 18.5303L3.46967 12.5303C3.17678 12.2374 3.17678 11.7626 3.46967 11.4697L9.46967 5.46967C9.76256 5.17678 10.2374 5.17678 10.5303 5.46967Z" fill="currentColor"/>''',
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
