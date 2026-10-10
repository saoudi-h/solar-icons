// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `shield-warning` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMyAxMC40MTY3QzMgNy4yMTkwNyAzIDUuNjIwMjggMy4zNzc1MiA1LjA4MjQxQzMuNzU1MDMgNC41NDQ1NCA1LjI1ODMyIDQuMDI5OTYgOC4yNjQ5MSAzLjAwMDc5TDguODM3NzIgMi44MDQ3MkMxMC40MDUgMi4yNjgyNCAxMS4xODg2IDIgMTIgMkMxMi44MTE0IDIgMTMuNTk1IDIuMjY4MjQgMTUuMTYyMyAyLjgwNDcyTDE1LjczNTEgMy4wMDA3OUMxOC43NDE3IDQuMDI5OTYgMjAuMjQ1IDQuNTQ0NTQgMjAuNjIyNSA1LjA4MjQxQzIxIDUuNjIwMjggMjEgNy4yMTkwNyAyMSAxMC40MTY3QzIxIDEwLjg5OTYgMjEgMTEuNDIzNCAyMSAxMS45OTE0QzIxIDE3LjYyOTQgMTYuNzYxIDIwLjM2NTUgMTQuMTAxNCAyMS41MjczQzEzLjM4IDIxLjg0MjQgMTMuMDE5MyAyMiAxMiAyMkMxMC45ODA3IDIyIDEwLjYyIDIxLjg0MjQgOS44OTg1NiAyMS41MjczQzcuMjM4OTYgMjAuMzY1NSAzIDE3LjYyOTQgMyAxMS45OTE0QzMgMTEuNDIzNCAzIDEwLjg5OTYgMyAxMC40MTY3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiA4VjEyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDE1SDEyLjAwMDEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class ShieldWarningLineDuotoneIcon extends StatelessWidget {
  /// Creates the `shield-warning` icon in the lineDuotone style.
  const ShieldWarningLineDuotoneIcon({
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
    name: 'shield-warning',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M12 8V12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 15H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 10.4167C3 7.21907 3 5.62028 3.37752 5.08241C3.75503 4.54454 5.25832 4.02996 8.26491 3.00079L8.83772 2.80472C10.405 2.26824 11.1886 2 12 2C12.8114 2 13.595 2.26824 15.1623 2.80472L15.7351 3.00079C18.7417 4.02996 20.245 4.54454 20.6225 5.08241C21 5.62028 21 7.21907 21 10.4167C21 10.8996 21 11.4234 21 11.9914C21 17.6294 16.761 20.3655 14.1014 21.5273C13.38 21.8424 13.0193 22 12 22C10.9807 22 10.62 21.8424 9.89856 21.5273C7.23896 20.3655 3 17.6294 3 11.9914C3 11.4234 3 10.8996 3 10.4167Z" stroke="currentColor" stroke-linecap="round"/>''',
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
