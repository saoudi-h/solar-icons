// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMy4zMTkyIDE0LjgzOTJDMTEuNjA3MiAxMy45MzA3IDEwLjE5MDcgMTIuNTM5NCA5LjI1MDk5IDEwLjg0NjhNNy4wMDY5MiAxNC43MDQ2QzcuMzM2OTMgMTMuNTU0OSA4LjA5NTg0IDEyLjM5MTYgOS4yNTA5OSAxMC44NDY4QzkuOTE5NjMgOS45NTI2IDEwLjcwNzggOS4wMjk1MiAxMS41OTQzIDguMTIxMjZDMTUuMjYyMiA0LjM2MzA5IDE5LjIyMTcgMi4yNzg4OCAyMC40MzgxIDMuNDY2MDRDMjEuNjU0NSA0LjY1MzIgMTkuNjY3MSA4LjY2MjE5IDE1Ljk5OTEgMTIuNDIwNEMxNS4xNTY0IDEzLjI4MzggMTQuMjU5NSAxNC4wODM4IDEzLjMxOTIgMTQuODM5MkMxMS45MzIzIDE1LjkyODMgMTAuNTgwOSAxNi43NjUgOS40OTMwOCAxNy4xNjM0TTcuMDA2OTIgMTQuNzA0NkM1Ljg0MDI1IDE0LjcwNDYgMy42MzY0NSAxNC44NDQ5IDMuNTMxMDUgMTcuNzk2MkMzLjQ3Njc3IDE5LjMxNjMgMi4wNDgyOCAxOS43MDkyIDIuMjczOTYgMjAuNTk4NUMyLjQ5OTYzIDIxLjQ4NzcgOS44Nzk4IDIyLjE5MDYgOS40OTMwOCAxNy4xNjM0TTcuMDA2OTIgMTQuNzA0NkM3LjgwNjkyIDE1LjkwNDYgOS4xNTk3NSAxNi45OTY3IDkuNDkzMDggMTcuMTYzNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class PaintBrushLinearIcon extends StatelessWidget {
  /// Creates the `paint-brush` icon in the linear style.
  const PaintBrushLinearIcon({
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
    name: 'paint-brush',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13.3192 14.8392C11.6072 13.9307 10.1907 12.5394 9.25099 10.8468M7.00692 14.7046C7.33693 13.5549 8.09584 12.3916 9.25099 10.8468C9.91963 9.9526 10.7078 9.02952 11.5943 8.12126C15.2622 4.36309 19.2217 2.27888 20.4381 3.46604C21.6545 4.6532 19.6671 8.66219 15.9991 12.4204C15.1564 13.2838 14.2595 14.0838 13.3192 14.8392C11.9323 15.9283 10.5809 16.765 9.49308 17.1634M7.00692 14.7046C5.84025 14.7046 3.63645 14.8449 3.53105 17.7962C3.47677 19.3163 2.04828 19.7092 2.27396 20.5985C2.49963 21.4877 9.8798 22.1906 9.49308 17.1634M7.00692 14.7046C7.80692 15.9046 9.15975 16.9967 9.49308 17.1634" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
