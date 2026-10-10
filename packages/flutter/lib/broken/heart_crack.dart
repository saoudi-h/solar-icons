// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik02LjUyNDAxIDE3QzcuMzQ5NDkgMTcuNjc5NCA4LjE5MjQzIDE4LjMwNDQgOC45NjE3MyAxOC45MTA5QzEwIDE5LjcyOTQgMTEgMjAuNSAxMiAyMC41QzEzIDIwLjUgMTQgMTkuNzI5NCAxNS4wMzgzIDE4LjkxMDlDMTcuOTgwNiAxNi41OTE0IDIyIDE0IDIyIDkuMTM3MUMyMiA0LjI3NDE2IDE2LjQ5OTggMC44MjU0NjQgMTIgNS41MDA2M0M3LjUwMDE2IDAuODI1NDY0IDIgNC4yNzQxNiAyIDkuMTM3MUMyIDEwLjYzOSAyLjM4MzM4IDExLjkyNDIgMyAxMy4wNTE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTEyIDUuNTAwNzNMMTAuNSA4LjUwMDFMMTQgMTEuMDAwMUwxMSAxNC41MDAxTDEzIDE2LjUwMDFMMTIgMjAuNTAwMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class HeartCrackBrokenIcon extends StatelessWidget {
  /// Creates the `heart-crack` icon in the broken style.
  const HeartCrackBrokenIcon({
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
    name: 'heart-crack',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M6.52401 17C7.34949 17.6794 8.19243 18.3044 8.96173 18.9109C10 19.7294 11 20.5 12 20.5C13 20.5 14 19.7294 15.0383 18.9109C17.9806 16.5914 22 14 22 9.1371C22 4.27416 16.4998 0.825464 12 5.50063C7.50016 0.825464 2 4.27416 2 9.1371C2 10.639 2.38338 11.9242 3 13.0516" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 5.50073L10.5 8.5001L14 11.0001L11 14.5001L13 16.5001L12 20.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
