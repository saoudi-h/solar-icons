// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `airbuds-case-charge` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMgMTFDMyA3LjI1MDI3IDMgNS4zNzU0IDMuOTU0OTEgNC4wNjEwN0M0LjI2MzMxIDMuNjM2NiA0LjYzNjYgMy4yNjMzMSA1LjA2MTA3IDIuOTU0OTFDNi4zNzU0IDIgOC4yNTAyNyAyIDEyIDJDMTUuNzQ5NyAyIDE3LjYyNDYgMiAxOC45Mzg5IDIuOTU0OTFDMTkuMzYzNCAzLjI2MzMxIDE5LjczNjcgMy42MzY2IDIwLjA0NTEgNC4wNjEwN0MyMSA1LjM3NTQgMjEgNy4yNTAyNyAyMSAxMVYxM0MyMSAxNi43NDk3IDIxIDE4LjYyNDYgMjAuMDQ1MSAxOS45Mzg5QzE5LjczNjcgMjAuMzYzNCAxOS4zNjM0IDIwLjczNjcgMTguOTM4OSAyMS4wNDUxQzE3LjYyNDYgMjIgMTUuNzQ5NyAyMiAxMiAyMkM4LjI1MDI3IDIyIDYuMzc1NCAyMiA1LjA2MTA3IDIxLjA0NTFDNC42MzY2IDIwLjczNjcgNC4yNjMzMSAyMC4zNjM0IDMuOTU0OTEgMTkuOTM4OUMzIDE4LjYyNDYgMyAxNi43NDk3IDMgMTNWMTFaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDE4TDE0IDE1LjUwMDFIMTBMMTIgMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNNyA5SDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class AirbudsCaseChargeLinearIcon extends StatelessWidget {
  /// Creates the `airbuds-case-charge` icon in the linear style.
  const AirbudsCaseChargeLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3 11C3 7.25027 3 5.3754 3.95491 4.06107C4.26331 3.6366 4.6366 3.26331 5.06107 2.95491C6.3754 2 8.25027 2 12 2C15.7497 2 17.6246 2 18.9389 2.95491C19.3634 3.26331 19.7367 3.6366 20.0451 4.06107C21 5.3754 21 7.25027 21 11V13C21 16.7497 21 18.6246 20.0451 19.9389C19.7367 20.3634 19.3634 20.7367 18.9389 21.0451C17.6246 22 15.7497 22 12 22C8.25027 22 6.3754 22 5.06107 21.0451C4.6366 20.7367 4.26331 20.3634 3.95491 19.9389C3 18.6246 3 16.7497 3 13V11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 18L14 15.5001H10L12 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 9H17" stroke="currentColor" stroke-linecap="round"/>''',
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
