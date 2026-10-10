// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hamburger-menu` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDE2LjI1QzIwLjQxNDIgMTYuMjUgMjAuNzUgMTYuNTg1OCAyMC43NSAxN0MyMC43NSAxNy40MTQyIDIwLjQxNDIgMTcuNzUgMjAgMTcuNzVINEMzLjU4NTc5IDE3Ljc1IDMuMjUgMTcuNDE0MiAzLjI1IDE3QzMuMjUgMTYuNTg1OCAzLjU4NTc5IDE2LjI1IDQgMTYuMjVIMjBaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMCAxMS4yNUMyMC40MTQyIDExLjI1IDIwLjc1IDExLjU4NTggMjAuNzUgMTJDMjAuNzUgMTIuNDE0MiAyMC40MTQyIDEyLjc1IDIwIDEyLjc1SDRDMy41ODU3OSAxMi43NSAzLjI1IDEyLjQxNDIgMy4yNSAxMkMzLjI1IDExLjU4NTggMy41ODU3OSAxMS4yNSA0IDExLjI1SDIwWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjAgNi4yNUMyMC40MTQyIDYuMjUgMjAuNzUgNi41ODU3OSAyMC43NSA3QzIwLjc1IDcuNDE0MjEgMjAuNDE0MiA3Ljc1IDIwIDcuNzVINEMzLjU4NTc5IDcuNzUgMy4yNSA3LjQxNDIxIDMuMjUgN0MzLjI1IDYuNTg1NzkgMy41ODU3OSA2LjI1IDQgNi4yNUgyMFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class HamburgerMenuOutlineIcon extends StatelessWidget {
  /// Creates the `hamburger-menu` icon in the outline style.
  const HamburgerMenuOutlineIcon({
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
    name: 'hamburger-menu',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M20 16.25C20.4142 16.25 20.75 16.5858 20.75 17C20.75 17.4142 20.4142 17.75 20 17.75H4C3.58579 17.75 3.25 17.4142 3.25 17C3.25 16.5858 3.58579 16.25 4 16.25H20Z" fill="currentColor"/>
<path d="M20 11.25C20.4142 11.25 20.75 11.5858 20.75 12C20.75 12.4142 20.4142 12.75 20 12.75H4C3.58579 12.75 3.25 12.4142 3.25 12C3.25 11.5858 3.58579 11.25 4 11.25H20Z" fill="currentColor"/>
<path d="M20 6.25C20.4142 6.25 20.75 6.58579 20.75 7C20.75 7.41421 20.4142 7.75 20 7.75H4C3.58579 7.75 3.25 7.41421 3.25 7C3.25 6.58579 3.58579 6.25 4 6.25H20Z" fill="currentColor"/>''',
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
