// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `alt-arrow-left` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNS40ODgxIDQuNDMwNTdDMTUuODAyNiA0LjcwMDE0IDE1LjgzOSA1LjE3MzYxIDE1LjU2OTQgNS40ODgxMUw5Ljk4NzgxIDEyTDE1LjU2OTQgMTguNTExOUMxNS44MzkgMTguODI2NCAxNS44MDI2IDE5LjI5OTkgMTUuNDg4MSAxOS41Njk1QzE1LjE3MzYgMTkuODM5IDE0LjcwMDEgMTkuODAyNiAxNC40MzA2IDE5LjQ4ODFMOC40MzA1NiAxMi40ODgxQzguMTg5ODEgMTIuMjA3MiA4LjE4OTgxIDExLjc5MjggOC40MzA1NiAxMS41MTE5TDE0LjQzMDYgNC41MTE5MkMxNC43MDAxIDQuMTk3NDMgMTUuMTczNiA0LjE2MSAxNS40ODgxIDQuNDMwNTdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class AltArrowLeftOutlineIcon extends StatelessWidget {
  /// Creates the `alt-arrow-left` icon in the outline style.
  const AltArrowLeftOutlineIcon({
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
    name: 'alt-arrow-left',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M15.4881 4.43057C15.8026 4.70014 15.839 5.17361 15.5694 5.48811L9.98781 12L15.5694 18.5119C15.839 18.8264 15.8026 19.2999 15.4881 19.5695C15.1736 19.839 14.7001 19.8026 14.4306 19.4881L8.43056 12.4881C8.18981 12.2072 8.18981 11.7928 8.43056 11.5119L14.4306 4.51192C14.7001 4.19743 15.1736 4.161 15.4881 4.43057Z" fill="currentColor"/>''',
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
