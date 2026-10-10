// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pills` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3Ljg0NDUgNi4xNTU0N0MxNy44NDQ1IDYuMTU1NDcgMTcuNDExOSA4LjM5OTk5IDE0LjkwNTcgMTAuOTA2MUMxMi4zOTk2IDEzLjQxMjMgMTAuMTU1NSAxMy44NDQ1IDEwLjE1NTUgMTMuODQ0NU0yMC40MDc1IDE2LjQwNzVDMTguMjg0MyAxOC41MzA4IDE0Ljg0MTggMTguNTMwOCAxMi43MTg1IDE2LjQwNzVMNy41OTI0NiAxMS4yODE1QzUuNDY5MTggOS4xNTgyNCA1LjQ2OTE4IDUuNzE1NzMgNy41OTI0NiAzLjU5MjQ2QzkuNzE1NzMgMS40NjkxOCAxMy4xNTgyIDEuNDY5MTggMTUuMjgxNSAzLjU5MjQ2TDIwLjQwNzUgOC43MTg0OUMyMi41MzA4IDEwLjg0MTggMjIuNTMwOCAxNC4yODQzIDIwLjQwNzUgMTYuNDA3NVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xNC41IDYuNUwxMyA1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTMuODYyNCAxNy4yODM0QzEzLjI3NDggMTkuOTgwNSAxMC44NzMyIDIyLjAwMDEgOCAyMi4wMDAxQzQuNjg2MjkgMjIuMDAwMSAyIDE5LjMxMzggMiAxNi4wMDAxQzIgMTMuMTI2OSA0LjAxOTU5IDEwLjcyNTQgNi43MTY2NCAxMC4xMzc3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PillsLineDuotoneIcon extends StatelessWidget {
  /// Creates the `pills` icon in the lineDuotone style.
  const PillsLineDuotoneIcon({
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
    name: 'pills',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M17.8445 6.15547C17.8445 6.15547 17.4119 8.39999 14.9057 10.9061C12.3996 13.4123 10.1555 13.8445 10.1555 13.8445M20.4075 16.4075C18.2843 18.5308 14.8418 18.5308 12.7185 16.4075L7.59246 11.2815C5.46918 9.15824 5.46918 5.71573 7.59246 3.59246C9.71573 1.46918 13.1582 1.46918 15.2815 3.59246L20.4075 8.71849C22.5308 10.8418 22.5308 14.2843 20.4075 16.4075Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.5 6.5L13 5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M13.8624 17.2834C13.2748 19.9805 10.8732 22.0001 8 22.0001C4.68629 22.0001 2 19.3138 2 16.0001C2 13.1269 4.01959 10.7254 6.71664 10.1377" stroke="currentColor" stroke-linecap="round"/>''',
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
