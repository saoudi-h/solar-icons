// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMSAxOEgyMEMyMS4xMDQ2IDE4IDIyIDE3LjEwNDYgMjIgMTZDMjIgMTQuODk1NCAyMS4xMDQ2IDE0IDIwIDE0SDRDMi44OTU0MyAxNCAyIDE0Ljg5NTQgMiAxNkMyIDE3LjEwNDYgMi44OTU0MyAxOCA0IDE4SDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNC40OTk5MyAxNEw0LjQyNTI4IDEzLjcwMTRDMy4zMzg0NSA5LjM1NDA5IDIuNzk1MDQgNy4xODA0MyAzLjg2NTg0IDUuNjc4MjFDMy45MzMzOSA1LjU4MzQ1IDQuMDA1MDQgNS40OTE2OSA0LjA4MDU5IDUuNDAzMTdDNS4yNzgyNCA0IDcuNTE4OCA0IDExLjk5OTkgNEMxMi43MjMzIDQgMTMuMzg4MyA0IDE0IDQuMDA1OU0xOS40OTk5IDE0TDE5LjU3NDYgMTMuNzAxNEMyMC42NjE0IDkuMzU0MDkgMjEuMjA0OCA3LjE4MDQzIDIwLjEzNCA1LjY3ODIxQzIwLjA2NjUgNS41ODM0NSAxOS45OTQ4IDUuNDkxNjkgMTkuOTE5MyA1LjQwMzE3QzE5LjQ1NzUgNC44NjIxMiAxOC44NDA2IDQuNTI5NjkgMTggNC4zMjU0NSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMCAyMFYxOE00IDIwVjE4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Sofa3BrokenIcon extends StatelessWidget {
  /// Creates the `sofa-3` icon in the broken style.
  const Sofa3BrokenIcon({
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
    name: 'sofa-3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M11 18H20C21.1046 18 22 17.1046 22 16C22 14.8954 21.1046 14 20 14H4C2.89543 14 2 14.8954 2 16C2 17.1046 2.89543 18 4 18H7" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.49993 14L4.42528 13.7014C3.33845 9.35409 2.79504 7.18043 3.86584 5.67821C3.93339 5.58345 4.00504 5.49169 4.08059 5.40317C5.27824 4 7.5188 4 11.9999 4C12.7233 4 13.3883 4 14 4.0059M19.4999 14L19.5746 13.7014C20.6614 9.35409 21.2048 7.18043 20.134 5.67821C20.0665 5.58345 19.9948 5.49169 19.9193 5.40317C19.4575 4.86212 18.8406 4.52969 18 4.32545" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 20V18M4 20V18" stroke="currentColor" stroke-linecap="round"/>''',
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
