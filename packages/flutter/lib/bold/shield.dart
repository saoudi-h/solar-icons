// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `shield` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExLjI1IDIuMDczMjRDMTAuNjQzNyAyLjE4NjM0IDkuOTMxNTkgMi40MzAxMSA4LjgzNzcyIDIuODA0NTRMOC4yNjQ5MSAzLjAwMDYyQzUuMjU4MzIgNC4wMjk3OCAzLjc1NTAzIDQuNTQ0MzYgMy4zNzc1MiA1LjA4MjIzQzMuMDA4MjUgNS42MDgzNiAzLjAwMDE4IDcuMTQ5NTcgMyAxMC4yMDkzTDExLjI1IDcuNDU5MjVWMi4wNzMyNFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTExLjI1IDkuMDQwMzlMMyAxMS43OTA0VjExLjk5MTJDMyAxNy42MjkzIDcuMjM4OTYgMjAuMzY1MyA5Ljg5ODU2IDIxLjUyNzFDMTAuNDA5MyAyMS43NTAyIDEwLjczOTIgMjEuODk0MyAxMS4yNSAyMS45NTk1VjkuMDQwMzlaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMi43NSAyMS45NTk1VjkuMDQwMzlMMjEgMTEuNzkwNFYxMS45OTEyQzIxIDE3LjYyOTMgMTYuNzYxIDIwLjM2NTMgMTQuMTAxNCAyMS41MjcxQzEzLjU5MDcgMjEuNzUwMiAxMy4yNjA4IDIxLjg5NDMgMTIuNzUgMjEuOTU5NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyLjc1IDcuNDU5MjVWMi4wNzMyNEMxMy4zNTYzIDIuMTg2MzQgMTQuMDY4NCAyLjQzMDExIDE1LjE2MjMgMi44MDQ1NEwxNS43MzUxIDMuMDAwNjJDMTguNzQxNyA0LjAyOTc4IDIwLjI0NSA0LjU0NDM2IDIwLjYyMjUgNS4wODIyM0MyMC45OTE4IDUuNjA4MzYgMjAuOTk5OCA3LjE0OTU3IDIxIDEwLjIwOTNMMTIuNzUgNy40NTkyNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ShieldBoldIcon extends StatelessWidget {
  /// Creates the `shield` icon in the bold style.
  const ShieldBoldIcon({
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
    name: 'shield',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.25 2.07324C10.6437 2.18634 9.93159 2.43011 8.83772 2.80454L8.26491 3.00062C5.25832 4.02978 3.75503 4.54436 3.37752 5.08223C3.00825 5.60836 3.00018 7.14957 3 10.2093L11.25 7.45925V2.07324Z" fill="currentColor"/>
<path d="M11.25 9.04039L3 11.7904V11.9912C3 17.6293 7.23896 20.3653 9.89856 21.5271C10.4093 21.7502 10.7392 21.8943 11.25 21.9595V9.04039Z" fill="currentColor"/>
<path d="M12.75 21.9595V9.04039L21 11.7904V11.9912C21 17.6293 16.761 20.3653 14.1014 21.5271C13.5907 21.7502 13.2608 21.8943 12.75 21.9595Z" fill="currentColor"/>
<path d="M12.75 7.45925V2.07324C13.3563 2.18634 14.0684 2.43011 15.1623 2.80454L15.7351 3.00062C18.7417 4.02978 20.245 4.54436 20.6225 5.08223C20.9918 5.60836 20.9998 7.14957 21 10.2093L12.75 7.45925Z" fill="currentColor"/>''',
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
