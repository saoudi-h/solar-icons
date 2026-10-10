// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTkgMS4yNUMxOS40MTQyIDEuMjUgMTkuNzUgMS41ODU3OSAxOS43NSAyVjQuMjVIMjJDMjIuNDE0MiA0LjI1IDIyLjc1IDQuNTg1NzkgMjIuNzUgNUMyMi43NSA1LjQxNDIxIDIyLjQxNDIgNS43NSAyMiA1Ljc1SDE5Ljc1VjE4LjI1SDIyQzIyLjQxNDIgMTguMjUgMjIuNzUgMTguNTg1OCAyMi43NSAxOUMyMi43NSAxOS40MTQyIDIyLjQxNDIgMTkuNzUgMjIgMTkuNzVIMTkuNzVWMjJDMTkuNzUgMjIuNDE0MiAxOS40MTQyIDIyLjc1IDE5IDIyLjc1QzE4LjU4NTggMjIuNzUgMTguMjUgMjIuNDE0MiAxOC4yNSAyMlYxOS43NUg1Ljc1VjIyQzUuNzUgMjIuNDE0MiA1LjQxNDIxIDIyLjc1IDUgMjIuNzVDNC41ODU3OSAyMi43NSA0LjI1IDIyLjQxNDIgNC4yNSAyMlYxOS43NUgyQzEuNTg1NzkgMTkuNzUgMS4yNSAxOS40MTQyIDEuMjUgMTlDMS4yNSAxOC41ODU4IDEuNTg1NzkgMTguMjUgMiAxOC4yNUg0LjI1VjUuNzVIMkMxLjU4NTc5IDUuNzUgMS4yNSA1LjQxNDIxIDEuMjUgNUMxLjI1IDQuNTg1NzkgMS41ODU3OSA0LjI1IDIgNC4yNUg0LjI1VjJDNC4yNSAxLjU4NTc5IDQuNTg1NzkgMS4yNSA1IDEuMjVDNS40MTQyMSAxLjI1IDUuNzUgMS41ODU3OSA1Ljc1IDJWNC4yNUgxOC4yNVYyQzE4LjI1IDEuNTg1NzkgMTguNTg1OCAxLjI1IDE5IDEuMjVaTTUuNzUgMTguMjVIMTguMjVWNS43NUg1Ljc1VjE4LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class FrameOutlineIcon extends StatelessWidget {
  /// Creates the `frame` icon in the outline style.
  const FrameOutlineIcon({
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
    name: 'frame',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M19 1.25C19.4142 1.25 19.75 1.58579 19.75 2V4.25H22C22.4142 4.25 22.75 4.58579 22.75 5C22.75 5.41421 22.4142 5.75 22 5.75H19.75V18.25H22C22.4142 18.25 22.75 18.5858 22.75 19C22.75 19.4142 22.4142 19.75 22 19.75H19.75V22C19.75 22.4142 19.4142 22.75 19 22.75C18.5858 22.75 18.25 22.4142 18.25 22V19.75H5.75V22C5.75 22.4142 5.41421 22.75 5 22.75C4.58579 22.75 4.25 22.4142 4.25 22V19.75H2C1.58579 19.75 1.25 19.4142 1.25 19C1.25 18.5858 1.58579 18.25 2 18.25H4.25V5.75H2C1.58579 5.75 1.25 5.41421 1.25 5C1.25 4.58579 1.58579 4.25 2 4.25H4.25V2C4.25 1.58579 4.58579 1.25 5 1.25C5.41421 1.25 5.75 1.58579 5.75 2V4.25H18.25V2C18.25 1.58579 18.5858 1.25 19 1.25ZM5.75 18.25H18.25V5.75H5.75V18.25Z" fill="currentColor"/>''',
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
