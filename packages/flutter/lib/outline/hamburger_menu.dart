// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMCAxNi4yNUMyMC40MTQyIDE2LjI1IDIwLjc1IDE2LjU4NTggMjAuNzUgMTdDMjAuNzUgMTcuNDE0MiAyMC40MTQyIDE3Ljc1IDIwIDE3Ljc1SDRDMy41ODU3OSAxNy43NSAzLjI1IDE3LjQxNDIgMy4yNSAxN0MzLjI1IDE2LjU4NTggMy41ODU3OSAxNi4yNSA0IDE2LjI1SDIwWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjAgMTEuMjVDMjAuNDE0MiAxMS4yNSAyMC43NSAxMS41ODU4IDIwLjc1IDEyQzIwLjc1IDEyLjQxNDIgMjAuNDE0MiAxMi43NSAyMCAxMi43NUg0QzMuNTg1NzkgMTIuNzUgMy4yNSAxMi40MTQyIDMuMjUgMTJDMy4yNSAxMS41ODU4IDMuNTg1NzkgMTEuMjUgNCAxMS4yNUgyMFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIwIDYuMjVDMjAuNDE0MiA2LjI1IDIwLjc1IDYuNTg1NzkgMjAuNzUgN0MyMC43NSA3LjQxNDIxIDIwLjQxNDIgNy43NSAyMCA3Ljc1SDRDMy41ODU3OSA3Ljc1IDMuMjUgNy40MTQyMSAzLjI1IDdDMy4yNSA2LjU4NTc5IDMuNTg1NzkgNi4yNSA0IDYuMjVIMjBaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
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
