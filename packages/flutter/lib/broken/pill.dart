// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pill` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIuNTk5OTYgNkMyLjkyODU0IDUuMjcxNTQgMy4zOTIxIDQuNTg5MTIgMy45OTA2NiAzLjk5MDU3QzYuNjQ0NzUgMS4zMzY0OCAxMC45NDc5IDEuMzM2NDggMTMuNjAyIDMuOTkwNTdMMjAuMDA5NSAxMC4zOTgxQzIxLjAyOTEgMTEuNDE3NyAyMS42NTcgMTIuNjgwNyAyMS44OTMyIDE0TTIuMTA2OTMgMTBDMi4zNDMxNiAxMS4zMTkzIDIuOTcxMDYgMTIuNTgyMyAzLjk5MDY2IDEzLjYwMTlMMTAuMzk4MiAyMC4wMDk0QzEzLjA1MjMgMjIuNjYzNSAxNy4zNTU0IDIyLjY2MzUgMjAuMDA5NSAyMC4wMDk0QzIwLjYwODEgMTkuNDEwOSAyMS4wNzE2IDE4LjcyODUgMjEuNDAwMiAxOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi44MDU3IDcuMTk0MzRDMTYuODA1NyA3LjE5NDM0IDE2LjI2NDkgOS45OTk5OSAxMy4xMzIyIDEzLjEzMjdDOS45OTk1MiAxNi4yNjUzIDcuMTk0MzQgMTYuODA1NyA3LjE5NDM0IDE2LjgwNTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PillBrokenIcon extends StatelessWidget {
  /// Creates the `pill` icon in the broken style.
  const PillBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2.59996 6C2.92854 5.27154 3.3921 4.58912 3.99066 3.99057C6.64475 1.33648 10.9479 1.33648 13.602 3.99057L20.0095 10.3981C21.0291 11.4177 21.657 12.6807 21.8932 14M2.10693 10C2.34316 11.3193 2.97106 12.5823 3.99066 13.6019L10.3982 20.0094C13.0523 22.6635 17.3554 22.6635 20.0095 20.0094C20.6081 19.4109 21.0716 18.7285 21.4002 18" stroke="currentColor" stroke-linecap="round"/>
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
