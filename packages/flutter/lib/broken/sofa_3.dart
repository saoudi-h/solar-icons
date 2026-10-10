// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sofa-3` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExIDE4SDIwQzIxLjEwNDYgMTggMjIgMTcuMTA0NiAyMiAxNkMyMiAxNC44OTU0IDIxLjEwNDYgMTQgMjAgMTRINEMyLjg5NTQzIDE0IDIgMTQuODk1NCAyIDE2QzIgMTcuMTA0NiAyLjg5NTQzIDE4IDQgMThINyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik00LjQ5OTkzIDE0TDQuNDI1MjggMTMuNzAxNEMzLjMzODQ1IDkuMzU0MDkgMi43OTUwNCA3LjE4MDQzIDMuODY1ODQgNS42NzgyMUMzLjkzMzM5IDUuNTgzNDUgNC4wMDUwNCA1LjQ5MTY5IDQuMDgwNTkgNS40MDMxN0M1LjI3ODI0IDQgNy41MTg4IDQgMTEuOTk5OSA0QzEyLjcyMzMgNCAxMy4zODgzIDQgMTQgNC4wMDU5TTE5LjQ5OTkgMTRMMTkuNTc0NiAxMy43MDE0QzIwLjY2MTQgOS4zNTQwOSAyMS4yMDQ4IDcuMTgwNDMgMjAuMTM0IDUuNjc4MjFDMjAuMDY2NSA1LjU4MzQ1IDE5Ljk5NDggNS40OTE2OSAxOS45MTkzIDUuNDAzMTdDMTkuNDU3NSA0Ljg2MjEyIDE4Ljg0MDYgNC41Mjk2OSAxOCA0LjMyNTQ1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIwIDIwVjE4TTQgMjBWMTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
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
