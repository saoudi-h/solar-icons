// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `temperature` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDMTUuMDM3NiAyMiAxNy41IDE5LjUzNzYgMTcuNSAxNi41QzE3LjUgMTQuNzYzNiAxNi42OTU0IDEzLjIxNTIgMTUuNDM4NiAxMi4yMDcyQzE1LjE3NDkgMTEuOTk1NyAxNSAxMS42ODU3IDE1IDExLjM0NzdWNUMxNSAzLjM0MzE1IDEzLjY1NjkgMiAxMiAyQzEwLjM0MzEgMiA5IDMuMzQzMTUgOSA1VjExLjM0NzdDOSAxMS42ODU3IDguODI1MDUgMTEuOTk1NyA4LjU2MTQxIDEyLjIwNzJDNy4zMDQ2NSAxMy4yMTUyIDYuNSAxNC43NjM2IDYuNSAxNi41QzYuNSAxOS41Mzc2IDguOTYyNDMgMjIgMTIgMjJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTExLjk5OTggMTMuOTk5OUMxMC42MTkgMTMuOTk5OSA5LjQ5OTc2IDE1LjExOTIgOS40OTk3NiAxNi40OTk5QzkuNDk5NzYgMTcuODgwNiAxMC42MTkgMTguOTk5OSAxMS45OTk4IDE4Ljk5OTlDMTMuMzgwNSAxOC45OTk5IDE0LjQ5OTggMTcuODgwNiAxNC40OTk4IDE2LjQ5OTlDMTQuNDk5OCAxNS4xMTkyIDEzLjM4MDUgMTMuOTk5OSAxMS45OTk4IDEzLjk5OTlaTTExLjk5OTggMTMuOTk5OUwxMiA1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class TemperatureLineDuotoneIcon extends StatelessWidget {
  /// Creates the `temperature` icon in the lineDuotone style.
  const TemperatureLineDuotoneIcon({
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
    name: 'temperature',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11.9998 13.9999C10.619 13.9999 9.49976 15.1192 9.49976 16.4999C9.49976 17.8806 10.619 18.9999 11.9998 18.9999C13.3805 18.9999 14.4998 17.8806 14.4998 16.4999C14.4998 15.1192 13.3805 13.9999 11.9998 13.9999ZM11.9998 13.9999L12 5" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C15.0376 22 17.5 19.5376 17.5 16.5C17.5 14.7636 16.6954 13.2152 15.4386 12.2072C15.1749 11.9957 15 11.6857 15 11.3477V5C15 3.34315 13.6569 2 12 2C10.3431 2 9 3.34315 9 5V11.3477C9 11.6857 8.82505 11.9957 8.56141 12.2072C7.30465 13.2152 6.5 14.7636 6.5 16.5C6.5 19.5376 8.96243 22 12 22Z" stroke="currentColor" stroke-linecap="round"/>''',
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
