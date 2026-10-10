// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `mouse-circle` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTggMTBDOCA3Ljc5MDg2IDkuNzkwODYgNiAxMiA2QzE0LjIwOTEgNiAxNiA3Ljc5MDg2IDE2IDEwVjE0QzE2IDE2LjIwOTEgMTQuMjA5MSAxOCAxMiAxOEM5Ljc5MDg2IDE4IDggMTYuMjA5MSA4IDE0VjEwWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04LjUgMTBIMTUuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAxMFY2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgOC44OTE4MlYzLjg1MDIyQzEyIDIuNzM2NDYgMTEuMDk1NSAxLjgxMjU0IDEwLjAxMjggMi4wMzI2N0M1LjQ0MTkzIDIuOTYxOTQgMiA3LjAzNDA3IDIgMTEuOTE2OEMyIDE3LjQ4NTYgNi40NzcxNSAyMiAxMiAyMkMxNy41MjI4IDIyIDIyIDE3LjQ4NTYgMjIgMTEuOTE2OEMyMiA3LjkyNTY1IDE5LjcwMDMgNC40NzYxIDE2LjM2NDEgMi44NDE5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MouseCircleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `mouse-circle` icon in the lineDuotone style.
  const MouseCircleLineDuotoneIcon({
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
    name: 'mouse-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 10C8 7.79086 9.79086 6 12 6C14.2091 6 16 7.79086 16 10V14C16 16.2091 14.2091 18 12 18C9.79086 18 8 16.2091 8 14V10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 10H15.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 10V6" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 8.89182V3.85022C12 2.73646 11.0955 1.81254 10.0128 2.03267C5.44193 2.96194 2 7.03407 2 11.9168C2 17.4856 6.47715 22 12 22C17.5228 22 22 17.4856 22 11.9168C22 7.92565 19.7003 4.4761 16.3641 2.8419" stroke="currentColor" stroke-linecap="round"/>''',
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
