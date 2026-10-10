// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAxOEwxNCAxNS41MDAxSDEwTDEyIDEzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTcgOUgxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0zIDEzVjExQzMgNy4yNTAyNyAzIDUuMzc1NCAzLjk1NDkxIDQuMDYxMDdDNC4yNjMzMSAzLjYzNjYgNC42MzY2IDMuMjYzMzEgNS4wNjEwNyAyLjk1NDkxQzYuMzc1NCAyIDguMjUwMjcgMiAxMiAyQzE1Ljc0OTcgMiAxNy42MjQ2IDIgMTguOTM4OSAyLjk1NDkxQzE5LjM2MzQgMy4yNjMzMSAxOS43MzY3IDMuNjM2NiAyMC4wNDUxIDQuMDYxMDdDMjEgNS4zNzU0IDIxIDcuMjUwMjcgMjEgMTFWMTNDMjEgMTYuNzQ5NyAyMSAxOC42MjQ2IDIwLjA0NTEgMTkuOTM4OUMxOS43MzY3IDIwLjM2MzQgMTkuMzYzNCAyMC43MzY3IDE4LjkzODkgMjEuMDQ1MUMxNy42MjQ2IDIyIDE1Ljc0OTcgMjIgMTIgMjJDOC4yNTAyNyAyMiA2LjM3NTQgMjIgNS4wNjEwNyAyMS4wNDUxQzQuNjM2NiAyMC43MzY3IDQuMjYzMzEgMjAuMzYzNCAzLjk1NDkxIDE5LjkzODlDMy40MjM4NiAxOS4yMDggMy4xODgxNCAxOC4zMDM3IDMuMDgzNTEgMTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class AirbudsCaseChargeBrokenIcon extends StatelessWidget {
  /// Creates the `airbuds-case-charge` icon in the broken style.
  const AirbudsCaseChargeBrokenIcon({
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
    name: 'airbuds-case-charge',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 18L14 15.5001H10L12 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 9H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 13V11C3 7.25027 3 5.3754 3.95491 4.06107C4.26331 3.6366 4.6366 3.26331 5.06107 2.95491C6.3754 2 8.25027 2 12 2C15.7497 2 17.6246 2 18.9389 2.95491C19.3634 3.26331 19.7367 3.6366 20.0451 4.06107C21 5.3754 21 7.25027 21 11V13C21 16.7497 21 18.6246 20.0451 19.9389C19.7367 20.3634 19.3634 20.7367 18.9389 21.0451C17.6246 22 15.7497 22 12 22C8.25027 22 6.3754 22 5.06107 21.0451C4.6366 20.7367 4.26331 20.3634 3.95491 19.9389C3.42386 19.208 3.18814 18.3037 3.08351 17" stroke="currentColor" stroke-linecap="round"/>''',
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
