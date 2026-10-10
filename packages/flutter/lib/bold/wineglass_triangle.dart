// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wineglass-triangle` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE5LjI5OTEgM0g0LjcwMDk1QzMuMjAwMDggMyAyLjQzNzU5IDQuNzk0MDkgMy40ODM4MSA1Ljg2MzgyTDYuMjM1MDggOUgxNy43NjQ5TDIwLjUxNjIgNS44NjM4MkMyMS41NjI0IDQuNzk0MDkgMjAuNzk5OSAzIDE5LjI5OTEgM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE2LjQ0OSAxMC41SDcuNTUwOTlMMTEuMjQ5OCAxNC43MTYyVjIwLjI0OTlINy43NTU4NkM3LjM0MTY1IDIwLjI0OTkgNy4wMDU4NiAyMC41ODU2IDcuMDA1ODYgMjAuOTk5OUM3LjAwNTg2IDIxLjQxNDEgNy4zNDE2NSAyMS43NDk5IDcuNzU1ODYgMjEuNzQ5OUgxNi4yNDM3QzE2LjY1NzkgMjEuNzQ5OSAxNi45OTM3IDIxLjQxNDEgMTYuOTkzNyAyMC45OTk5QzE2Ljk5MzcgMjAuNTg1NiAxNi42NTc5IDIwLjI0OTkgMTYuMjQzNyAyMC4yNDk5SDEyLjc0OThWMTQuNzE2OEwxNi40NDkgMTAuNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class WineglassTriangleBoldIcon extends StatelessWidget {
  /// Creates the `wineglass-triangle` icon in the bold style.
  const WineglassTriangleBoldIcon({
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
    name: 'wineglass-triangle',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M19.2991 3H4.70095C3.20008 3 2.43759 4.79409 3.48381 5.86382L6.23508 9H17.7649L20.5162 5.86382C21.5624 4.79409 20.7999 3 19.2991 3Z" fill="currentColor"/>
<path d="M16.449 10.5H7.55099L11.2498 14.7162V20.2499H7.75586C7.34165 20.2499 7.00586 20.5856 7.00586 20.9999C7.00586 21.4141 7.34165 21.7499 7.75586 21.7499H16.2437C16.6579 21.7499 16.9937 21.4141 16.9937 20.9999C16.9937 20.5856 16.6579 20.2499 16.2437 20.2499H12.7498V14.7168L16.449 10.5Z" fill="currentColor"/>''',
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
