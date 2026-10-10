// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iNiIgcj0iNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMC40MTQxIDE4LjVIMTguOTk5OU0xOC45OTk5IDE4LjVIMTcuNTg1N00xOC45OTk5IDE4LjVMMTguOTk5OSAxNy4wODU4TTE4Ljk5OTkgMTguNUwxOC45OTk5IDE5LjkxNDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTNDMTQuNjA4MyAxMyAxNi44ODM0IDEzLjgxNTIgMTguMDg3NyAxNS4wMjRNMTUuNTg0MSAyMC40MzY2QzE0LjUzNTggMjAuNzk0NCAxMy4zMDk5IDIxIDEyIDIxQzguMTM0MDEgMjEgNSAxOS4yMDkxIDUgMTdDNSAxNS42NDA3IDYuMTg2NTIgMTQuNDM5OCA4IDEzLjcxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class UserPlusRoundedBrokenIcon extends StatelessWidget {
  /// Creates the `user-plus-rounded` icon in the broken style.
  const UserPlusRoundedBrokenIcon({
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
    name: 'user-plus-rounded',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.4141 18.5H18.9999M18.9999 18.5H17.5857M18.9999 18.5L18.9999 17.0858M18.9999 18.5L18.9999 19.9142" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 13C14.6083 13 16.8834 13.8152 18.0877 15.024M15.5841 20.4366C14.5358 20.7944 13.3099 21 12 21C8.13401 21 5 19.2091 5 17C5 15.6407 6.18652 14.4398 8 13.717" stroke="currentColor" stroke-linecap="round"/>''',
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
