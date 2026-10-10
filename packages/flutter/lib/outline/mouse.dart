// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNC4yNSA5QzQuMjUgNC43MTk3OSA3LjcxOTc5IDEuMjUgMTIgMS4yNUMxNi4yODAyIDEuMjUgMTkuNzUgNC43MTk3OSAxOS43NSA5VjE1QzE5Ljc1IDE5LjI4MDIgMTYuMjgwMiAyMi43NSAxMiAyMi43NUM3LjcxOTc5IDIyLjc1IDQuMjUgMTkuMjgwMiA0LjI1IDE1VjlaTTExLjI1IDIuNzk0NTRDOC4xNTE4MyAzLjE2NTA1IDUuNzUgNS44MDIwNCA1Ljc1IDlWMTVDNS43NSAxOC40NTE4IDguNTQ4MjIgMjEuMjUgMTIgMjEuMjVDMTUuNDUxOCAyMS4yNSAxOC4yNSAxOC40NTE4IDE4LjI1IDE1VjlDMTguMjUgNS44MDIwNCAxNS44NDgyIDMuMTY1MDUgMTIuNzUgMi43OTQ1NFY2LjM3ODAzQzEzLjYyMzkgNi42ODY5MSAxNC4yNSA3LjUyMDM0IDE0LjI1IDguNVYxMC41QzE0LjI1IDExLjc0MjYgMTMuMjQyNiAxMi43NSAxMiAxMi43NUMxMC43NTc0IDEyLjc1IDkuNzUgMTEuNzQyNiA5Ljc1IDEwLjVWOC41QzkuNzUgNy41MjAzNCAxMC4zNzYxIDYuNjg2OTEgMTEuMjUgNi4zNzgwM1YyLjc5NDU0Wk0xMiA3Ljc1QzExLjU4NTggNy43NSAxMS4yNSA4LjA4NTc5IDExLjI1IDguNVYxMC41QzExLjI1IDEwLjkxNDIgMTEuNTg1OCAxMS4yNSAxMiAxMS4yNUMxMi40MTQyIDExLjI1IDEyLjc1IDEwLjkxNDIgMTIuNzUgMTAuNVY4LjVDMTIuNzUgOC4wODU3OSAxMi40MTQyIDcuNzUgMTIgNy43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MouseOutlineIcon extends StatelessWidget {
  /// Creates the `mouse` icon in the outline style.
  const MouseOutlineIcon({
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
    name: 'mouse',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 9C4.25 4.71979 7.71979 1.25 12 1.25C16.2802 1.25 19.75 4.71979 19.75 9V15C19.75 19.2802 16.2802 22.75 12 22.75C7.71979 22.75 4.25 19.2802 4.25 15V9ZM11.25 2.79454C8.15183 3.16505 5.75 5.80204 5.75 9V15C5.75 18.4518 8.54822 21.25 12 21.25C15.4518 21.25 18.25 18.4518 18.25 15V9C18.25 5.80204 15.8482 3.16505 12.75 2.79454V6.37803C13.6239 6.68691 14.25 7.52034 14.25 8.5V10.5C14.25 11.7426 13.2426 12.75 12 12.75C10.7574 12.75 9.75 11.7426 9.75 10.5V8.5C9.75 7.52034 10.3761 6.68691 11.25 6.37803V2.79454ZM12 7.75C11.5858 7.75 11.25 8.08579 11.25 8.5V10.5C11.25 10.9142 11.5858 11.25 12 11.25C12.4142 11.25 12.75 10.9142 12.75 10.5V8.5C12.75 8.08579 12.4142 7.75 12 7.75Z" fill="currentColor"/>''',
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
