// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `men` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjAwMDEgMS4yNUMxNi41ODU4IDEuMjUgMTYuMjUwMSAxLjU4NTc5IDE2LjI1MDEgMkMxNi4yNTAxIDIuNDE0MjEgMTYuNTg1OCAyLjc1IDE3LjAwMDEgMi43NUgyMC4xODk0TDE1LjEwMTggNy44Mzc2QzEzLjcxNyA2LjY4OTg5IDExLjkzOTEgNiAxMCA2QzUuNTgxNzIgNiAyIDkuNTgxNzIgMiAxNEMyIDE4LjQxODMgNS41ODE3MiAyMiAxMCAyMkMxNC40MTgzIDIyIDE4IDE4LjQxODMgMTggMTRDMTggMTIuMDYwOSAxNy4zMTAxIDEwLjI4MyAxNi4xNjI0IDguODk4MjdMMjEuMjUwMSAzLjgxMDY2VjdDMjEuMjUwMSA3LjQxNDIxIDIxLjU4NTggNy43NSAyMi4wMDAxIDcuNzVDMjIuNDE0MyA3Ljc1IDIyLjc1MDEgNy40MTQyMSAyMi43NTAxIDdWMkMyMi43NTAxIDEuNTg1NzkgMjIuNDE0MyAxLjI1IDIyLjAwMDEgMS4yNUgxNy4wMDAxWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MenBoldIcon extends StatelessWidget {
  /// Creates the `men` icon in the bold style.
  const MenBoldIcon({
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
    name: 'men',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.0001 1.25C16.5858 1.25 16.2501 1.58579 16.2501 2C16.2501 2.41421 16.5858 2.75 17.0001 2.75H20.1894L15.1018 7.8376C13.717 6.68989 11.9391 6 10 6C5.58172 6 2 9.58172 2 14C2 18.4183 5.58172 22 10 22C14.4183 22 18 18.4183 18 14C18 12.0609 17.3101 10.283 16.1624 8.89827L21.2501 3.81066V7C21.2501 7.41421 21.5858 7.75 22.0001 7.75C22.4143 7.75 22.7501 7.41421 22.7501 7V2C22.7501 1.58579 22.4143 1.25 22.0001 1.25H17.0001Z" fill="currentColor"/>''',
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
