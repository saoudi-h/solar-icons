// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-arrow-up` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuMTY0OTYgMTkuNTAyNUwxMC41Mjc1IDIuOTkyODFDMTEuMTE3OCAxLjY2OTA2IDEyLjg4MjIgMS42NjkwNiAxMy40NzI1IDIuOTkyODFMMjAuODM1IDE5LjUwMjVDMjEuNTAyMSAyMC45OTg0IDIwLjAyMDkgMjIuNTQ5OSAxOC42MzMxIDIxLjgwOUwxMi43Mjk0IDE4LjY1N0MxMi4yNzAyIDE4LjQxMTggMTEuNzI5OCAxOC40MTE4IDExLjI3MDYgMTguNjU3TDUuMzY2ODkgMjEuODA5QzMuOTc5MTQgMjIuNTQ5OSAyLjQ5Nzg5IDIwLjk5ODQgMy4xNjQ5NiAxOS41MDI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MapArrowUpBoldIcon extends StatelessWidget {
  /// Creates the `map-arrow-up` icon in the bold style.
  const MapArrowUpBoldIcon({
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
    name: 'map-arrow-up',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3.16496 19.5025L10.5275 2.99281C11.1178 1.66906 12.8822 1.66906 13.4725 2.99281L20.835 19.5025C21.5021 20.9984 20.0209 22.5499 18.6331 21.809L12.7294 18.657C12.2702 18.4118 11.7298 18.4118 11.2706 18.657L5.36689 21.809C3.97914 22.5499 2.49789 20.9984 3.16496 19.5025Z" fill="currentColor"/>''',
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
