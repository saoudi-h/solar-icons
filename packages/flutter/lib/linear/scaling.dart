// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `scaling` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExIDJDNi45NDQ5MyAyLjAwNzMgNC44MjE1IDIuMTA2ODYgMy40NjQ0NyAzLjQ2Mzg5QzIgNC45MjgzNSAyIDcuMjg1MzggMiAxMS45OTk0QzIgMTYuNzEzNSAyIDE5LjA3MDUgMy40NjQ0NyAyMC41MzVDNC45Mjg5MyAyMS45OTk0IDcuMjg1OTYgMjEuOTk5NCAxMiAyMS45OTk0QzE2LjcxNCAyMS45OTk0IDE5LjA3MTEgMjEuOTk5NCAyMC41MzU1IDIwLjUzNUMyMS44OTI2IDE5LjE3NzkgMjEuOTkyMSAxNy4wNTQ1IDIxLjk5OTQgMTIuOTk5NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMyAxMUwyMiAyTTIyIDcuMzQzNzVWMkgxNi42NTYyTTIxIDNMMTIgMTJNMTIgOFYxMkgxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class ScalingLinearIcon extends StatelessWidget {
  /// Creates the `scaling` icon in the linear style.
  const ScalingLinearIcon({
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
    name: 'scaling',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M11 2C6.94493 2.0073 4.8215 2.10686 3.46447 3.46389C2 4.92835 2 7.28538 2 11.9994C2 16.7135 2 19.0705 3.46447 20.535C4.92893 21.9994 7.28596 21.9994 12 21.9994C16.714 21.9994 19.0711 21.9994 20.5355 20.535C21.8926 19.1779 21.9921 17.0545 21.9994 12.9994" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 11L22 2M22 7.34375V2H16.6562M21 3L12 12M12 8V12H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
