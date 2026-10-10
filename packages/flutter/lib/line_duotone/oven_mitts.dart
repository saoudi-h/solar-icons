// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEzLjI5NzUgMjAuMDI2M0MxMC4xNTk5IDE2Ljk1ODYgNy4wMjIzMyAxMy44OTA5IDMuODg0NzcgMTAuODIzMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMC4zMzQxIDQuNzc5MjlDOS45MTQ4MiAzLjE1MTU5IDguNjY3NTkgMS45Nzg0MyA3LjIxMzA1IDIuMDAwM0M1LjQ0MDkzIDIuMDI2OTQgNC4wMzIxNyAzLjgxNzMyIDQuMDY2NDggNS45OTkyM0w0LjAzNDMzIDkuMzQwNTZDNC4wMjcwNSAxMC4wOTY3IDQuMDIzNDEgMTAuNDc0OCAzLjg4OTY4IDEwLjgxMDlDMy43NTU5NSAxMS4xNDcxIDMuNDYwMzYgMTEuNDY4NSAyLjg2OTE2IDEyLjExMTJDMi4yODk3MiAxMi43NDEyIDIgMTMuMjA4OSAyIDEzLjc0NTRDMiAxNC41NjMgMi42NzI5MyAxNS4yMjEgNC4wMTg4IDE2LjUzNjhMNy41ODc1OCAyMC4wMjYyQzguOTMzNDUgMjEuMzQyMSA5LjYwNjM4IDIyIDEwLjQ0MjYgMjJDMTEuMjc4OCAyMiAxMS45NTE4IDIxLjM0MiAxMy4yOTc2IDIwLjAyNjJMMjAuMDc4MyAxMy4zOTY1QzIyLjY0MDYgMTAuODkxMyAyMi42NDA2IDYuODI5NTEgMjAuMDc4MyA0LjMyNDI5QzE3LjUxNiAxLjgxOTA4IDEzLjM2MTggMS44MTkwOCAxMC43OTk1IDQuMzI0MjlMMTAuMzM0MSA0Ljc3OTI5Wk0xMC4zMzQxIDQuNzc5MjlMOS4zNzE5NyA1LjcyMDAxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class OvenMittsLineDuotoneIcon extends StatelessWidget {
  /// Creates the `oven-mitts` icon in the lineDuotone style.
  const OvenMittsLineDuotoneIcon({
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
    name: 'oven-mitts',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M10.3341 4.77929C9.91482 3.15159 8.66759 1.97843 7.21305 2.0003C5.44093 2.02694 4.03217 3.81732 4.06648 5.99923L4.03433 9.34056C4.02705 10.0967 4.02341 10.4748 3.88968 10.8109C3.75595 11.1471 3.46036 11.4685 2.86916 12.1112C2.28972 12.7412 2 13.2089 2 13.7454C2 14.563 2.67293 15.221 4.0188 16.5368L7.58758 20.0262C8.93345 21.3421 9.60638 22 10.4426 22C11.2788 22 11.9518 21.342 13.2976 20.0262L20.0783 13.3965C22.6406 10.8913 22.6406 6.82951 20.0783 4.32429C17.516 1.81908 13.3618 1.81908 10.7995 4.32429L10.3341 4.77929ZM10.3341 4.77929L9.37197 5.72001" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13.2975 20.0263C10.1599 16.9586 7.02233 13.8909 3.88477 10.8232" stroke="currentColor" stroke-linecap="round"/>''',
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
