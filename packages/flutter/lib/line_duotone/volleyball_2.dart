// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `volleyball-2` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJDMiA2LjQ3NzE1IDYuNDc3MTUgMiAxMiAyWk0xMiAyTDExLjMxNDIgMy42NDU4NkMxMC4xNzYxIDYuMzc3MjYgMTAuNDMxNyA5LjQ5MDc1IDEyIDEyTTEyIDEySDEyLjA5MTdDMTUuNDcwNSAxMiAxOC42MjU4IDEzLjY4ODcgMjAuNSAxNi41TTEyIDEyTDExLjU2OTcgMTIuNTUzMkM5LjYzMjg1IDE1LjA0MzUgNi42NTQ3OCAxNi41IDMuNSAxNi41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjEuOTg3NyAxMS41MDAxTDIxLjI0MjYgMTAuNzQyN0MxOS4yNDQ1IDguNzQ0NjQgMTYuNzIyOCA3LjM5MDU2IDE0IDYuODE0MU01LjczMjY3IDE5Ljc5MjlDOC45OTU5NCAxOS43OTI5IDEyLjI5MTYgMTguNjI4NCAxNSAxNi43MTA1TTcuNDk5OTcgMy4wNjczOEM2LjMwNzM4IDUuOTI5NiA2LjAwMzcxIDkuMDIxMTEgNi41ODg5NiAxMi4wMDAxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class Volleyball2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `volleyball-2` icon in the lineDuotone style.
  const Volleyball2LineDuotoneIcon({
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
    name: 'volleyball-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2ZM12 2L11.3142 3.64586C10.1761 6.37726 10.4317 9.49075 12 12M12 12H12.0917C15.4705 12 18.6258 13.6887 20.5 16.5M12 12L11.5697 12.5532C9.63285 15.0435 6.65478 16.5 3.5 16.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21.9877 11.5001L21.2426 10.7427C19.2445 8.74464 16.7228 7.39056 14 6.8141M5.73267 19.7929C8.99594 19.7929 12.2916 18.6284 15 16.7105M7.49997 3.06738C6.30738 5.9296 6.00371 9.02111 6.58896 12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
