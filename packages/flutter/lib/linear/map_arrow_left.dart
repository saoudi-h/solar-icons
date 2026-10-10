// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOS41MDI1IDIwLjgzNUwyLjk5MjgxIDEzLjQ3MjVDMS42NjkwNiAxMi44ODIyIDEuNjY5MDYgMTEuMTE3OCAyLjk5MjgxIDEwLjUyNzVMMTkuNTAyNSAzLjE2NDk2QzIwLjk5ODQgMi40OTc4OSAyMi41NDk5IDMuOTc5MTQgMjEuODA5IDUuMzY2ODlMMTguNjU3IDExLjI3MDZDMTguNDExOCAxMS43Mjk4IDE4LjQxMTggMTIuMjcwMiAxOC42NTcgMTIuNzI5NEwyMS44MDkgMTguNjMzMUMyMi41NDk5IDIwLjAyMDkgMjAuOTk4NCAyMS41MDIxIDE5LjUwMjUgMjAuODM1WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class MapArrowLeftLinearIcon extends StatelessWidget {
  /// Creates the `map-arrow-left` icon in the linear style.
  const MapArrowLeftLinearIcon({
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
    name: 'map-arrow-left',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19.5025 20.835L2.99281 13.4725C1.66906 12.8822 1.66906 11.1178 2.99281 10.5275L19.5025 3.16496C20.9984 2.49789 22.5499 3.97914 21.809 5.36689L18.657 11.2706C18.4118 11.7298 18.4118 12.2702 18.657 12.7294L21.809 18.6331C22.5499 20.0209 20.9984 21.5021 19.5025 20.835Z" stroke="currentColor" stroke-linecap="round"/>''',
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
