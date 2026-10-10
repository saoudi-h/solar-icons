// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-right-down` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik01LjQ2OTY3IDUuNDY5NjdDNS43NjI1NiA1LjE3Njc4IDYuMjM3NDQgNS4xNzY3OCA2LjUzMDMzIDUuNDY5NjdMMTcuMjUgMTYuMTg5M0wxNy4yNSA5QzE3LjI1IDguNTg1NzkgMTcuNTg1OCA4LjI1IDE4IDguMjVDMTguNDE0MiA4LjI1IDE4Ljc1IDguNTg1NzkgMTguNzUgOUwxOC43NSAxOEMxOC43NSAxOC40MTQyIDE4LjQxNDIgMTguNzUgMTggMTguNzVMOSAxOC43NUM4LjU4NTc5IDE4Ljc1IDguMjUgMTguNDE0MiA4LjI1IDE4QzguMjUgMTcuNTg1OCA4LjU4NTc5IDE3LjI1IDkgMTcuMjVMMTYuMTg5MyAxNy4yNUw1LjQ2OTY3IDYuNTMwMzNDNS4xNzY3OCA2LjIzNzQ0IDUuMTc2NzggNS43NjI1NiA1LjQ2OTY3IDUuNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ArrowRightDownOutlineIcon extends StatelessWidget {
  /// Creates the `arrow-right-down` icon in the outline style.
  const ArrowRightDownOutlineIcon({
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
    name: 'arrow-right-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M5.46967 5.46967C5.76256 5.17678 6.23744 5.17678 6.53033 5.46967L17.25 16.1893L17.25 9C17.25 8.58579 17.5858 8.25 18 8.25C18.4142 8.25 18.75 8.58579 18.75 9L18.75 18C18.75 18.4142 18.4142 18.75 18 18.75L9 18.75C8.58579 18.75 8.25 18.4142 8.25 18C8.25 17.5858 8.58579 17.25 9 17.25L16.1893 17.25L5.46967 6.53033C5.17678 6.23744 5.17678 5.76256 5.46967 5.46967Z" fill="currentColor"/>''',
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
