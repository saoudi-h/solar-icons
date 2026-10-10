// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `reorder` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE5IDE3LjI1QzE5LjQxNDIgMTcuMjUgMTkuNzUgMTcuNTg1OCAxOS43NSAxOEMxOS43NSAxOC40MTQyIDE5LjQxNDIgMTguNzUgMTkgMTguNzVINUM0LjU4NTc5IDE4Ljc1IDQuMjUgMTguNDE0MiA0LjI1IDE4QzQuMjUgMTcuNTg1OCA0LjU4NTc5IDE3LjI1IDUgMTcuMjVIMTlaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xOSAxMy4yNUMxOS40MTQyIDEzLjI1IDE5Ljc1IDEzLjU4NTggMTkuNzUgMTRDMTkuNzUgMTQuNDE0MiAxOS40MTQyIDE0Ljc1IDE5IDE0Ljc1SDVDNC41ODU3OSAxNC43NSA0LjI1IDE0LjQxNDIgNC4yNSAxNEM0LjI1IDEzLjU4NTggNC41ODU3OSAxMy4yNSA1IDEzLjI1SDE5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTkgOS4yNUMxOS40MTQyIDkuMjUgMTkuNzUgOS41ODU3OSAxOS43NSAxMEMxOS43NSAxMC40MTQyIDE5LjQxNDIgMTAuNzUgMTkgMTAuNzVINUM0LjU4NTc5IDEwLjc1IDQuMjUgMTAuNDE0MiA0LjI1IDEwQzQuMjUgOS41ODU3OSA0LjU4NTc5IDkuMjUgNSA5LjI1SDE5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTkgNS4yNUMxOS40MTQyIDUuMjUgMTkuNzUgNS41ODU3OSAxOS43NSA2QzE5Ljc1IDYuNDE0MjEgMTkuNDE0MiA2Ljc1IDE5IDYuNzVINUM0LjU4NTc5IDYuNzUgNC4yNSA2LjQxNDIxIDQuMjUgNkM0LjI1IDUuNTg1NzkgNC41ODU3OSA1LjI1IDUgNS4yNUgxOVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ReorderOutlineIcon extends StatelessWidget {
  /// Creates the `reorder` icon in the outline style.
  const ReorderOutlineIcon({
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
    name: 'reorder',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M19 17.25C19.4142 17.25 19.75 17.5858 19.75 18C19.75 18.4142 19.4142 18.75 19 18.75H5C4.58579 18.75 4.25 18.4142 4.25 18C4.25 17.5858 4.58579 17.25 5 17.25H19Z" fill="currentColor"/>
<path d="M19 13.25C19.4142 13.25 19.75 13.5858 19.75 14C19.75 14.4142 19.4142 14.75 19 14.75H5C4.58579 14.75 4.25 14.4142 4.25 14C4.25 13.5858 4.58579 13.25 5 13.25H19Z" fill="currentColor"/>
<path d="M19 9.25C19.4142 9.25 19.75 9.58579 19.75 10C19.75 10.4142 19.4142 10.75 19 10.75H5C4.58579 10.75 4.25 10.4142 4.25 10C4.25 9.58579 4.58579 9.25 5 9.25H19Z" fill="currentColor"/>
<path d="M19 5.25C19.4142 5.25 19.75 5.58579 19.75 6C19.75 6.41421 19.4142 6.75 19 6.75H5C4.58579 6.75 4.25 6.41421 4.25 6C4.25 5.58579 4.58579 5.25 5 5.25H19Z" fill="currentColor"/>''',
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
