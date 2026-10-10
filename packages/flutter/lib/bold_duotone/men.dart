// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `men` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxMCIgY3k9IjE0IiByPSI4IiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNi45OTk4IDEuMjVDMTYuNTg1NiAxLjI1IDE2LjI0OTggMS41ODU3OSAxNi4yNDk4IDJDMTYuMjQ5OCAyLjQxNDIxIDE2LjU4NTYgMi43NSAxNi45OTk4IDIuNzVIMjAuMTg5MUwxNS4xMDE2IDcuODM3NThDMTUuNDg3MyA4LjE1NzI4IDE1Ljg0MjUgOC41MTI1IDE2LjE2MjIgOC44OTgyNEwyMS4yNDk4IDMuODEwNjZWN0MyMS4yNDk4IDcuNDE0MjEgMjEuNTg1NiA3Ljc1IDIxLjk5OTggNy43NUMyMi40MTQgNy43NSAyMi43NDk4IDcuNDE0MjEgMjIuNzQ5OCA3VjIuMjVDMjIuNzQ5OCAxLjY5NzcyIDIyLjMwMjEgMS4yNSAyMS43NDk4IDEuMjVIMTYuOTk5OFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MenBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `men` icon in the boldDuotone style.
  const MenBoldDuotoneIcon({
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
    name: 'men',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.9998 1.25C16.5856 1.25 16.2498 1.58579 16.2498 2C16.2498 2.41421 16.5856 2.75 16.9998 2.75H20.1891L15.1016 7.83758C15.4873 8.15728 15.8425 8.5125 16.1622 8.89824L21.2498 3.81066V7C21.2498 7.41421 21.5856 7.75 21.9998 7.75C22.414 7.75 22.7498 7.41421 22.7498 7V2.25C22.7498 1.69772 22.3021 1.25 21.7498 1.25H16.9998Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="10" cy="14" r="8" fill="currentColor"/>''',
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
