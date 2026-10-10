// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOSAxNy4yNUMxOS40MTQyIDE3LjI1IDE5Ljc1IDE3LjU4NTggMTkuNzUgMThDMTkuNzUgMTguNDE0MiAxOS40MTQyIDE4Ljc1IDE5IDE4Ljc1SDVDNC41ODU3OSAxOC43NSA0LjI1IDE4LjQxNDIgNC4yNSAxOEM0LjI1IDE3LjU4NTggNC41ODU3OSAxNy4yNSA1IDE3LjI1SDE5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTkgMTMuMjVDMTkuNDE0MiAxMy4yNSAxOS43NSAxMy41ODU4IDE5Ljc1IDE0QzE5Ljc1IDE0LjQxNDIgMTkuNDE0MiAxNC43NSAxOSAxNC43NUg1QzQuNTg1NzkgMTQuNzUgNC4yNSAxNC40MTQyIDQuMjUgMTRDNC4yNSAxMy41ODU4IDQuNTg1NzkgMTMuMjUgNSAxMy4yNUgxOVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE5IDkuMjVDMTkuNDE0MiA5LjI1IDE5Ljc1IDkuNTg1NzkgMTkuNzUgMTBDMTkuNzUgMTAuNDE0MiAxOS40MTQyIDEwLjc1IDE5IDEwLjc1SDVDNC41ODU3OSAxMC43NSA0LjI1IDEwLjQxNDIgNC4yNSAxMEM0LjI1IDkuNTg1NzkgNC41ODU3OSA5LjI1IDUgOS4yNUgxOVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE5IDUuMjVDMTkuNDE0MiA1LjI1IDE5Ljc1IDUuNTg1NzkgMTkuNzUgNkMxOS43NSA2LjQxNDIxIDE5LjQxNDIgNi43NSAxOSA2Ljc1SDVDNC41ODU3OSA2Ljc1IDQuMjUgNi40MTQyMSA0LjI1IDZDNC4yNSA1LjU4NTc5IDQuNTg1NzkgNS4yNSA1IDUuMjVIMTlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
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
