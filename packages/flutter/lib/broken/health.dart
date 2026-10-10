// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `health` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4LjUgOS4wMDAwMkgxNi41TTE2LjUgOS4wMDAwMkwxNC41IDkuMDAwMDJNMTYuNSA5LjAwMDAyTDE2LjUgN00xNi41IDkuMDAwMDJMMTYuNSAxMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0zLjI5MzM0IDEzLjI5NEMyLjUwNzI5IDExLjk5NDMgMiAxMC42NDIzIDIgOS4zMTc1QzIgMy4wODc0OCA3LjUwMDE2IDAuNzYxNDk4IDEyIDUuNTc0MTJDMTYuNDk5OCAwLjc2MTQ5OCAyMiAzLjA4NzQ4IDIyIDkuMzE3NDdDMjIgMTMuMDQ2OCAxNy45ODA2IDE2Ljk5MSAxNS4wMzgzIDE5LjM3ODdDMTMuNzA2MyAyMC40NTk2IDEzLjA0MDMgMjEgMTIgMjFDMTAuOTU5NyAyMSAxMC4yOTM3IDIwLjQ1OTUgOC45NjE3MyAxOS4zNzg2QzguMDI4NjMgMTguNjIxNCA2Ljk4NzIgMTcuNzA3NyA2IDE2LjY5MzkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class HealthBrokenIcon extends StatelessWidget {
  /// Creates the `health` icon in the broken style.
  const HealthBrokenIcon({
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
    name: 'health',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M18.5 9.00002H16.5M16.5 9.00002L14.5 9.00002M16.5 9.00002L16.5 7M16.5 9.00002L16.5 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.29334 13.294C2.50729 11.9943 2 10.6423 2 9.3175C2 3.08748 7.50016 0.761498 12 5.57412C16.4998 0.761498 22 3.08748 22 9.31747C22 13.0468 17.9806 16.991 15.0383 19.3787C13.7063 20.4596 13.0403 21 12 21C10.9597 21 10.2937 20.4595 8.96173 19.3786C8.02863 18.6214 6.9872 17.7077 6 16.6939" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
