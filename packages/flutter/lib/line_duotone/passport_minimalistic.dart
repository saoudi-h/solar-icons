// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `passport-minimalistic` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQgNkgxN0MxOC42NTY5IDYgMjAgNy4zNDMxNSAyMCA5VjE5QzIwIDIwLjY1NjkgMTguNjU2OSAyMiAxNyAyMkg3QzUuMzQzMTUgMjIgNCAyMC42NTY5IDQgMTlWNlpNNCA2VjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8Y2lyY2xlIG9wYWNpdHk9IjAuNSIgY3g9IjEyIiBjeT0iMTQiIHI9IjMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTggNi4wMDAwMkg1LjA3MTA3QzQuNDc5NTMgNi4wMDAwMiA0IDUuNTIwNDkgNCA0LjkyODk1QzQgNC4zOTU5NCA0LjM5MTkzIDMuOTQ0MDMgNC45MTk1OSAzLjg2ODY1TDE1LjcxNzIgMi4zMjYxNEMxNi45MjIgMi4xNTQwMiAxOCAzLjA4ODk0IDE4IDQuMzA2MDRWNi4wMDAwMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class PassportMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `passport-minimalistic` icon in the lineDuotone style.
  const PassportMinimalisticLineDuotoneIcon({
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
    name: 'passport-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4 6H17C18.6569 6 20 7.34315 20 9V19C20 20.6569 18.6569 22 17 22H7C5.34315 22 4 20.6569 4 19V6ZM4 6V5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 6.00002H5.07107C4.47953 6.00002 4 5.52049 4 4.92895C4 4.39594 4.39193 3.94403 4.91959 3.86865L15.7172 2.32614C16.922 2.15402 18 3.08894 18 4.30604V6.00002Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="14" r="3" stroke="currentColor" stroke-linecap="round"/>''',
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
