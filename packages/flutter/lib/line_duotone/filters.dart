// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik02LjQyMDE4IDEwLjIxMDFDMy44NzI5NCAxMC45MDM1IDIgMTMuMjMzIDIgMTUuOTk5OUMyIDE5LjMxMzYgNC42ODYyOSAyMS45OTk5IDggMjEuOTk5OUMxMS4zMTM3IDIxLjk5OTkgMTQgMTkuMzEzNiAxNCAxNS45OTk5QzE0IDE1LjIxOTQgMTMuODUxIDE0LjQ3MzcgMTMuNTc5OCAxMy43ODk4TTE4IDhDMTggMTEuMzEzNyAxNS4zMTM3IDE0IDEyIDE0QzguNjg2MjkgMTQgNiAxMS4zMTM3IDYgOEM2IDQuNjg2MjkgOC42ODYyOSAyIDEyIDJDMTUuMzEzNyAyIDE4IDQuNjg2MjkgMTggOFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMiAyMC40NzIyQzEzLjA2MTUgMjEuNDIyMyAxNC40NjMzIDIyIDE2LjAwMDEgMjJDMTkuMzEzOCAyMiAyMi4wMDAxIDE5LjMxMzggMjIuMDAwMSAxNkMyMi4wMDAxIDEzLjIzMzEgMjAuMTI3MSAxMC45MDM2IDE3LjU3OTkgMTAuMjEwMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class FiltersLineDuotoneIcon extends StatelessWidget {
  /// Creates the `filters` icon in the lineDuotone style.
  const FiltersLineDuotoneIcon({
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
    name: 'filters',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M6.42018 10.2101C3.87294 10.9035 2 13.233 2 15.9999C2 19.3136 4.68629 21.9999 8 21.9999C11.3137 21.9999 14 19.3136 14 15.9999C14 15.2194 13.851 14.4737 13.5798 13.7898M18 8C18 11.3137 15.3137 14 12 14C8.68629 14 6 11.3137 6 8C6 4.68629 8.68629 2 12 2C15.3137 2 18 4.68629 18 8Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 20.4722C13.0615 21.4223 14.4633 22 16.0001 22C19.3138 22 22.0001 19.3138 22.0001 16C22.0001 13.2331 20.1271 10.9036 17.5799 10.2102" stroke="currentColor" stroke-linecap="round"/>''',
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
