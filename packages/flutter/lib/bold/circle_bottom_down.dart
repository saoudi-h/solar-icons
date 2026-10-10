// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05LjQ2OTczIDEzLjQ2OTdDOS43NjI2MiAxMy4xNzY4IDEwLjIzNzQgMTMuMTc2OCAxMC41MzAzIDEzLjQ2OTdDMTAuODIzMiAxMy43NjI2IDEwLjgyMzIgMTQuMjM3NCAxMC41MzAzIDE0LjUzMDNMMy44MTA1NSAyMS4yNUg4QzguNDE0MjEgMjEuMjUgOC43NSAyMS41ODU4IDguNzUgMjJDOC43NSAyMi40MTQyIDguNDE0MjEgMjIuNzUgOCAyMi43NUgyQzEuNTg1NzkgMjIuNzUgMS4yNSAyMi40MTQyIDEuMjUgMjJWMTZDMS4yNSAxNS41ODU4IDEuNTg1NzkgMTUuMjUgMiAxNS4yNUMyLjQxNDIxIDE1LjI1IDIuNzUgMTUuNTg1OCAyLjc1IDE2VjIwLjE4OTVMOS40Njk3MyAxMy40Njk3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMkMyMiAxNy41MjI4IDE3LjUyMjggMjIgMTIgMjJDMTEuNDAxMyAyMiAxMC44MTQ5IDIxLjk0NzUgMTAuMjQ1MSAyMS44NDY3QzEwLjE2NjIgMjAuNjc1NiA5LjE5MTA0IDE5Ljc1IDggMTkuNzVINy40MzE2NEwxMS41OTA4IDE1LjU5MDhDMTIuNDY5NSAxNC43MTIxIDEyLjQ2OTUgMTMuMjg3OSAxMS41OTA4IDEyLjQwOTJDMTAuNzEyMSAxMS41MzA1IDkuMjg3ODYgMTEuNTMwNSA4LjQwOTE4IDEyLjQwOTJMNC4yNSAxNi41Njg0VjE2QzQuMjUgMTQuODA5IDMuMzI0MzYgMTMuODMzOCAyLjE1MzMyIDEzLjc1NDlDMi4wNTI0NyAxMy4xODUxIDIgMTIuNTk4NyAyIDEyQzIgNi40NzcxNSA2LjQ3NzE1IDIgMTIgMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class CircleBottomDownBoldIcon extends StatelessWidget {
  /// Creates the `circle-bottom-down` icon in the bold style.
  const CircleBottomDownBoldIcon({
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
    name: 'circle-bottom-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M9.46973 13.4697C9.76262 13.1768 10.2374 13.1768 10.5303 13.4697C10.8232 13.7626 10.8232 14.2374 10.5303 14.5303L3.81055 21.25H8C8.41421 21.25 8.75 21.5858 8.75 22C8.75 22.4142 8.41421 22.75 8 22.75H2C1.58579 22.75 1.25 22.4142 1.25 22V16C1.25 15.5858 1.58579 15.25 2 15.25C2.41421 15.25 2.75 15.5858 2.75 16V20.1895L9.46973 13.4697Z" fill="currentColor"/>
<path d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C11.4013 22 10.8149 21.9475 10.2451 21.8467C10.1662 20.6756 9.19104 19.75 8 19.75H7.43164L11.5908 15.5908C12.4695 14.7121 12.4695 13.2879 11.5908 12.4092C10.7121 11.5305 9.28786 11.5305 8.40918 12.4092L4.25 16.5684V16C4.25 14.809 3.32436 13.8338 2.15332 13.7549C2.05247 13.1851 2 12.5987 2 12C2 6.47715 6.47715 2 12 2Z" fill="currentColor"/>''',
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
