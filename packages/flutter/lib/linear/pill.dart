// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pill` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuOTkwNTcgMTMuNjAxOUMxLjMzNjQ4IDEwLjk0NzggMS4zMzY0OCA2LjY0NDY2IDMuOTkwNTcgMy45OTA1N0M2LjY0NDY2IDEuMzM2NDggMTAuOTQ3OCAxLjMzNjQ4IDEzLjYwMTkgMy45OTA1N0wyMC4wMDk0IDEwLjM5ODFDMjIuNjYzNSAxMy4wNTIyIDIyLjY2MzUgMTcuMzU1MyAyMC4wMDk0IDIwLjAwOTRDMTcuMzU1MyAyMi42NjM1IDEzLjA1MjIgMjIuNjYzNSAxMC4zOTgxIDIwLjAwOTRMMy45OTA1NyAxMy42MDE5WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi44MDU3IDcuMTk0MzRDMTYuODA1NyA3LjE5NDM0IDE2LjI2NDkgOS45OTk5OSAxMy4xMzIyIDEzLjEzMjdDOS45OTk1MiAxNi4yNjUzIDcuMTk0MzQgMTYuODA1NyA3LjE5NDM0IDE2LjgwNTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PillLinearIcon extends StatelessWidget {
  /// Creates the `pill` icon in the linear style.
  const PillLinearIcon({
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
    name: 'pill',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.99057 13.6019C1.33648 10.9478 1.33648 6.64466 3.99057 3.99057C6.64466 1.33648 10.9478 1.33648 13.6019 3.99057L20.0094 10.3981C22.6635 13.0522 22.6635 17.3553 20.0094 20.0094C17.3553 22.6635 13.0522 22.6635 10.3981 20.0094L3.99057 13.6019Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.8057 7.19434C16.8057 7.19434 16.2649 9.99999 13.1322 13.1327C9.99952 16.2653 7.19434 16.8057 7.19434 16.8057" stroke="currentColor" stroke-linecap="round"/>''',
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
