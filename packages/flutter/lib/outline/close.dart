// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOC40NzY1IDQuNDY5NjRDMTguNzY5NCA0LjE3NjgxIDE5LjI0NDIgNC4xNzY3NyAxOS41MzcxIDQuNDY5NjRDMTkuODI5OCA0Ljc2MjUzIDE5LjgyOTggNS4yMzczNCAxOS41MzcxIDUuNTMwMTlMMTMuMDYzNCAxMi4wMDI4TDE5LjUzMDIgMTguNDY5NkMxOS44MjI5IDE4Ljc2MjUgMTkuODIzIDE5LjIzNzMgMTkuNTMwMiAxOS41MzAyQzE5LjIzNzQgMTkuODIzIDE4Ljc2MjYgMTkuODIyOSAxOC40Njk3IDE5LjUzMDJMMTIuMDAyOSAxMy4wNjM0TDUuNTM3MDUgMTkuNTMwMkM1LjI0NDIgMTkuODIzIDQuNzY5MzkgMTkuODIyOSA0LjQ3NjUxIDE5LjUzMDJDNC4xODM2MyAxOS4yMzczIDQuMTgzNjcgMTguNzYyNSA0LjQ3NjUxIDE4LjQ2OTZMMTAuOTQyMyAxMi4wMDI4TDQuNDY5NjcgNS41MzAxOUM0LjE3Njc4IDUuMjM3MyA0LjE3Njc4IDQuNzYyNTMgNC40Njk2NyA0LjQ2OTY0QzQuNzYyNTcgNC4xNzY4IDUuMjM3MzQgNC4xNzY3NyA1LjUzMDIyIDQuNDY5NjRMMTIuMDAyOSAxMC45NDIzTDE4LjQ3NjUgNC40Njk2NFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class CloseOutlineIcon extends StatelessWidget {
  /// Creates the `close` icon in the outline style.
  const CloseOutlineIcon({
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
    name: 'close',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M18.4765 4.46964C18.7694 4.17681 19.2442 4.17677 19.5371 4.46964C19.8298 4.76253 19.8298 5.23734 19.5371 5.53019L13.0634 12.0028L19.5302 18.4696C19.8229 18.7625 19.823 19.2373 19.5302 19.5302C19.2374 19.823 18.7626 19.8229 18.4697 19.5302L12.0029 13.0634L5.53705 19.5302C5.2442 19.823 4.76939 19.8229 4.47651 19.5302C4.18363 19.2373 4.18367 18.7625 4.47651 18.4696L10.9423 12.0028L4.46967 5.53019C4.17678 5.2373 4.17678 4.76253 4.46967 4.46964C4.76257 4.1768 5.23734 4.17677 5.53022 4.46964L12.0029 10.9423L18.4765 4.46964Z" fill="currentColor"/>''',
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
