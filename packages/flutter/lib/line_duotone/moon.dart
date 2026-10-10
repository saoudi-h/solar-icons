// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDIyQzE3LjUyMjggMjIgMjIgMTcuNTIyOCAyMiAxMkMyMiAxMS41MzczIDIxLjMwNjUgMTEuNDYwOCAyMS4wNjcyIDExLjg1NjhDMTkuOTI4OSAxMy43NDA2IDE3Ljg2MTUgMTUgMTUuNSAxNUMxMS45MTAxIDE1IDkgMTIuMDg5OSA5IDguNUM5IDYuMTM4NDUgMTAuMjU5NCA0LjA3MTA1IDEyLjE0MzIgMi45MzI3NkMxMi41MzkyIDIuNjkzNDcgMTIuNDYyNyAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTcuNTIyOCA2LjQ3NzE1IDIyIDEyIDIyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik04LjY3ODg3IDIxLjQzNTNDNC43ODg1MiAyMC4wNjU5IDIgMTYuMzU4NiAyIDEyQzIgNi40NzcxNSA2LjQ3NzE1IDIgMTIgMkMxMi40NjI3IDIgMTIuNTM5MiAyLjY5MzQ3IDEyLjE0MzIgMi45MzI3NkMxMC4yNTk0IDQuMDcxMDUgOSA2LjEzODQ1IDkgOC41QzkgOS44NjQyMiA5LjQyMDI3IDExLjEzMDMgMTAuMTM4NCAxMi4xNzU4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class MoonLineDuotoneIcon extends StatelessWidget {
  /// Creates the `moon` icon in the lineDuotone style.
  const MoonLineDuotoneIcon({
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
    name: 'moon',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8.67887 21.4353C4.78852 20.0659 2 16.3586 2 12C2 6.47715 6.47715 2 12 2C12.4627 2 12.5392 2.69347 12.1432 2.93276C10.2594 4.07105 9 6.13845 9 8.5C9 9.86422 9.42027 11.1303 10.1384 12.1758" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 11.5373 21.3065 11.4608 21.0672 11.8568C19.9289 13.7406 17.8615 15 15.5 15C11.9101 15 9 12.0899 9 8.5C9 6.13845 10.2594 4.07105 12.1432 2.93276C12.5392 2.69347 12.4627 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
