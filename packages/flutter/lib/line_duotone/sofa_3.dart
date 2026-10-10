// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sofa-3` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQgMThIMjBDMjEuMTA0NiAxOCAyMiAxNy4xMDQ2IDIyIDE2QzIyIDE0Ljg5NTQgMjEuMTA0NiAxNCAyMCAxNEg0QzIuODk1NDMgMTQgMiAxNC44OTU0IDIgMTZDMiAxNy4xMDQ2IDIuODk1NDMgMTggNCAxOFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik00LjQ5OTkzIDE0TDQuNDI1MjggMTMuNzAxNEMzLjMzODQ1IDkuMzU0MDkgMi43OTUwNCA3LjE4MDQzIDMuODY1ODQgNS42NzgyMUMzLjkzMzM5IDUuNTgzNDUgNC4wMDUwNCA1LjQ5MTY5IDQuMDgwNTkgNS40MDMxN0M1LjI3ODI0IDQgNy41MTg4IDQgMTEuOTk5OSA0QzE2LjQ4MTEgNCAxOC43MjE2IDQgMTkuOTE5MyA1LjQwMzE3QzE5Ljk5NDggNS40OTE2OSAyMC4wNjY1IDUuNTgzNDUgMjAuMTM0IDUuNjc4MjFDMjEuMjA0OCA3LjE4MDQzIDIwLjY2MTQgOS4zNTQwOSAxOS41NzQ2IDEzLjcwMTRMMTkuNDk5OSAxNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIwIDIwVjE4TTQgMjBWMTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Sofa3LineDuotoneIcon extends StatelessWidget {
  /// Creates the `sofa-3` icon in the lineDuotone style.
  const Sofa3LineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4 18H20C21.1046 18 22 17.1046 22 16C22 14.8954 21.1046 14 20 14H4C2.89543 14 2 14.8954 2 16C2 17.1046 2.89543 18 4 18Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.49993 14L4.42528 13.7014C3.33845 9.35409 2.79504 7.18043 3.86584 5.67821C3.93339 5.58345 4.00504 5.49169 4.08059 5.40317C5.27824 4 7.5188 4 11.9999 4C16.4811 4 18.7216 4 19.9193 5.40317C19.9948 5.49169 20.0665 5.58345 20.134 5.67821C21.2048 7.18043 20.6614 9.35409 19.5746 13.7014L19.4999 14" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20 20V18M4 20V18" stroke="currentColor" stroke-linecap="round"/>''',
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
