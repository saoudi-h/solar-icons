// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE4LjQ2OTcgNi40Njk2N0MxOC43NjI2IDYuMTc2NzggMTkuMjM3MyA2LjE3Njc4IDE5LjUzMDIgNi40Njk2N0MxOS44MjMxIDYuNzYyNTYgMTkuODIzMSA3LjIzNzMyIDE5LjUzMDIgNy41MzAyMkw5LjUzMDIyIDE3LjUzMDJDOS4yMzczMiAxNy44MjMxIDguNzYyNTYgMTcuODIzMSA4LjQ2OTY3IDE3LjUzMDJDOC4xNzY3OCAxNy4yMzczIDguMTc2NzggMTYuNzYyNiA4LjQ2OTY3IDE2LjQ2OTdMMTguNDY5NyA2LjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNNC40Njk2NyAxMi40Njk3QzQuNzYyNTYgMTIuMTc2OCA1LjIzNzMyIDEyLjE3NjggNS41MzAyMiAxMi40Njk3TDkuNTMwMjIgMTYuNDY5N0M5LjgyMzExIDE2Ljc2MjYgOS44MjMxMSAxNy4yMzczIDkuNTMwMjIgMTcuNTMwMkM5LjIzNzMyIDE3LjgyMzEgOC43NjI1NiAxNy44MjMxIDguNDY5NjcgMTcuNTMwMkw0LjQ2OTY3IDEzLjUzMDJDNC4xNzY3OCAxMy4yMzczIDQuMTc2NzggMTIuNzYyNiA0LjQ2OTY3IDEyLjQ2OTdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class CheckBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `check` icon in the boldDuotone style.
  const CheckBoldDuotoneIcon({
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
    name: 'check',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M4.46967 12.4697C4.76256 12.1768 5.23732 12.1768 5.53022 12.4697L9.53022 16.4697C9.82311 16.7626 9.82311 17.2373 9.53022 17.5302C9.23732 17.8231 8.76256 17.8231 8.46967 17.5302L4.46967 13.5302C4.17678 13.2373 4.17678 12.7626 4.46967 12.4697Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.4697 6.46967C18.7626 6.17678 19.2373 6.17678 19.5302 6.46967C19.8231 6.76256 19.8231 7.23732 19.5302 7.53022L9.53022 17.5302C9.23732 17.8231 8.76256 17.8231 8.46967 17.5302C8.17678 17.2373 8.17678 16.7626 8.46967 16.4697L18.4697 6.46967Z" fill="currentColor"/>''',
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
