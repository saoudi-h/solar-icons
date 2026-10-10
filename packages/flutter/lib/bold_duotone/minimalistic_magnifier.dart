// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTEuNSIgY3k9IjExLjUiIHI9IjkuNSIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTkuNDY5NyAxOS40Njk3QzE5Ljc2MjYgMTkuMTc2OCAyMC4yMzczIDE5LjE3NjggMjAuNTMwMiAxOS40Njk3TDIyLjUzMDIgMjEuNDY5N0MyMi44MjMxIDIxLjc2MjYgMjIuODIzMSAyMi4yMzczIDIyLjUzMDIgMjIuNTMwMkMyMi4yMzczIDIyLjgyMzEgMjEuNzYyNiAyMi44MjMxIDIxLjQ2OTcgMjIuNTMwMkwxOS40Njk3IDIwLjUzMDJDMTkuMTc2OCAyMC4yMzczIDE5LjE3NjggMTkuNzYyNiAxOS40Njk3IDE5LjQ2OTdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MinimalisticMagnifierBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `minimalistic-magnifier` icon in the boldDuotone style.
  const MinimalisticMagnifierBoldDuotoneIcon({
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
    name: 'minimalistic-magnifier',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M19.4697 19.4697C19.7626 19.1768 20.2373 19.1768 20.5302 19.4697L22.5302 21.4697C22.8231 21.7626 22.8231 22.2373 22.5302 22.5302C22.2373 22.8231 21.7626 22.8231 21.4697 22.5302L19.4697 20.5302C19.1768 20.2373 19.1768 19.7626 19.4697 19.4697Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" fill="currentColor"/>''',
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
