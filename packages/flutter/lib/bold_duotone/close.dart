// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTUuNTM3MTcgMTkuNTMwMkM1LjI0NDI3IDE5LjgyMzEgNC43Njk0IDE5LjgyMzEgNC40NzY1MSAxOS41MzAyQzQuMTgzNjEgMTkuMjM3MyA0LjE4MzYxIDE4Ljc2MjQgNC40NzY1MSAxOC40Njk2TDE4LjQ3NjQgNC40Njk2N0MxOC43NjkzIDQuMTc2NzggMTkuMjQ0MiA0LjE3Njc4IDE5LjUzNzEgNC40Njk2N0MxOS44Mjk5IDQuNzYyNTYgMTkuODI5OSA1LjIzNzQ0IDE5LjUzNzEgNS41MzAzM0w1LjUzNzE3IDE5LjUzMDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik00LjQ2OTc4IDUuNTMwMzNDNC4xNzY4OSA1LjIzNzQ0IDQuMTc2ODkgNC43NjI1NiA0LjQ2OTc4IDQuNDY5NjdDNC43NjI2OCA0LjE3Njc4IDUuMjM3NTUgNC4xNzY3OCA1LjUzMDQ0IDQuNDY5NjdMMTkuNTMwMyAxOC40Njk2QzE5LjgyMzIgMTguNzYyNCAxOS44MjMyIDE5LjIzNzMgMTkuNTMwMyAxOS41MzAyQzE5LjIzNzQgMTkuODIzMSAxOC43NjI2IDE5LjgyMzEgMTguNDY5NyAxOS41MzAyTDQuNDY5NzggNS41MzAzM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class CloseBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `close` icon in the boldDuotone style.
  const CloseBoldDuotoneIcon({
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
    name: 'close',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M4.46978 5.53033C4.17689 5.23744 4.17689 4.76256 4.46978 4.46967C4.76268 4.17678 5.23755 4.17678 5.53044 4.46967L19.5303 18.4696C19.8232 18.7624 19.8232 19.2373 19.5303 19.5302C19.2374 19.8231 18.7626 19.8231 18.4697 19.5302L4.46978 5.53033Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.53717 19.5302C5.24427 19.8231 4.7694 19.8231 4.47651 19.5302C4.18361 19.2373 4.18361 18.7624 4.47651 18.4696L18.4764 4.46967C18.7693 4.17678 19.2442 4.17678 19.5371 4.46967C19.8299 4.76256 19.8299 5.23744 19.5371 5.53033L5.53717 19.5302Z" fill="currentColor"/>''',
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
