// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `snowflake` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDJWMThNMTIgMjJWMThNMTIgMThMMTUgMjFNMTIgMThMOSAyMU0xNSAzTDEyIDZMOSAzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMy4zMzk3NCA3LjAwMDQyTDYuODAzODQgOS4wMDA0Mk02LjgwMzg0IDkuMDAwNDJMMTEuOTk5OSAxMi4wMDA0TTYuODAzODQgOS4wMDA0Mkw1LjcwNTc2IDQuOTAyMzRNNi44MDM4NCA5LjAwMDQyTDIuNzA1NzYgMTAuMDk4NU0xMS45OTk5IDEyLjAwMDRMMTcuMTk2MSAxNS4wMDA0TTExLjk5OTkgMTIuMDAwNEwxNy4xOTU5IDkuMDAwNDJNMTEuOTk5OSAxMi4wMDA0TDYuODAzNjQgMTUuMDAwNE0xNy4xOTYxIDE1LjAwMDRMMjAuNjYwMiAxNy4wMDA0TTE3LjE5NjEgMTUuMDAwNEwyMS4yOTQyIDEzLjkwMjNNMTcuMTk2MSAxNS4wMDA0TDE4LjI5NDIgMTkuMDk4NU0yMC42NiA3LjAwMDQyTDE3LjE5NTkgOS4wMDA0Mk0xNy4xOTU5IDkuMDAwNDJMMTguMjk0IDQuOTAyMzRNMTcuMTk1OSA5LjAwMDQyTDIxLjI5NCAxMC4wOTg1TTYuODAzNjQgMTUuMDAwNEwzLjMzOTU0IDE3LjAwMDRNNi44MDM2NCAxNS4wMDA0TDIuNzA1NTcgMTMuOTAyM002LjgwMzY0IDE1LjAwMDRMNS43MDU1NyAxOS4wOTg1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SnowflakeLineDuotoneIcon extends StatelessWidget {
  /// Creates the `snowflake` icon in the lineDuotone style.
  const SnowflakeLineDuotoneIcon({
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
    name: 'snowflake',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 2V18M12 22V18M12 18L15 21M12 18L9 21M15 3L12 6L9 3" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.33974 7.00042L6.80384 9.00042M6.80384 9.00042L11.9999 12.0004M6.80384 9.00042L5.70576 4.90234M6.80384 9.00042L2.70576 10.0985M11.9999 12.0004L17.1961 15.0004M11.9999 12.0004L17.1959 9.00042M11.9999 12.0004L6.80364 15.0004M17.1961 15.0004L20.6602 17.0004M17.1961 15.0004L21.2942 13.9023M17.1961 15.0004L18.2942 19.0985M20.66 7.00042L17.1959 9.00042M17.1959 9.00042L18.294 4.90234M17.1959 9.00042L21.294 10.0985M6.80364 15.0004L3.33954 17.0004M6.80364 15.0004L2.70557 13.9023M6.80364 15.0004L5.70557 19.0985" stroke="currentColor" stroke-linecap="round"/>''',
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
