// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDkuMzE3NUMyIDEzLjA0NjggNi4wMTk0MyAxNi45OTEgOC45NjE3MyAxOS4zNzg2QzEwLjI5MzcgMjAuNDU5NSAxMC45NTk3IDIxIDEyIDIxQzEzLjA0MDMgMjEgMTMuNzA2MyAyMC40NTk2IDE1LjAzODMgMTkuMzc4N0MxNy45ODA2IDE2Ljk5MSAyMiAxMy4wNDY4IDIyIDkuMzE3NDdDMjIgMy4wODc0OCAxNi40OTk4IDAuNzYxNDk4IDEyIDUuNTc0MTJDNy41MDAxNiAwLjc2MTQ5OCAyIDMuMDg3NDggMiA5LjMxNzVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE4LjUgOS4wMDAwMkgxNi41TTE2LjUgOS4wMDAwMkwxNC41IDkuMDAwMDJNMTYuNSA5LjAwMDAyTDE2LjUgN00xNi41IDkuMDAwMDJMMTYuNSAxMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class HealthLinearIcon extends StatelessWidget {
  /// Creates the `health` icon in the linear style.
  const HealthLinearIcon({
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
    name: 'health',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 9.3175C2 13.0468 6.01943 16.991 8.96173 19.3786C10.2937 20.4595 10.9597 21 12 21C13.0403 21 13.7063 20.4596 15.0383 19.3787C17.9806 16.991 22 13.0468 22 9.31747C22 3.08748 16.4998 0.761498 12 5.57412C7.50016 0.761498 2 3.08748 2 9.3175Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.5 9.00002H16.5M16.5 9.00002L14.5 9.00002M16.5 9.00002L16.5 7M16.5 9.00002L16.5 11" stroke="currentColor" stroke-linecap="round"/>''',
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
