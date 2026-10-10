// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cursor` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2LjU3NDQgMTkuMTk5OUwxMi42MzYxIDE1LjI2MTZMMTEuNDMzNCAxNi40NjQzQzEwLjIwMjIgMTcuNjk1NSA5LjU4NjU2IDE4LjMxMTEgOC45MjQ4OSAxOC4xNjU4QzguMjYzMjIgMTguMDIwNCA3Ljk2MjI1IDE3LjIwMzUgNy4zNjAzIDE1LjU2OTZMNS4zNTI3IDEwLjEyMDVDNC4xNTE4NyA2Ljg2MTA2IDMuNTUxNDYgNS4yMzEzNiA0LjM5MTQxIDQuMzkxNDFDNS4yMzEzNiAzLjU1MTQ2IDYuODYxMDYgNC4xNTE4NyAxMC4xMjA1IDUuMzUyNzFMMTUuNTY5NiA3LjM2MDNDMTcuMjAzNSA3Ljk2MjI1IDE4LjAyMDQgOC4yNjMyMiAxOC4xNjU4IDguOTI0ODlDMTguMzExMSA5LjU4NjU2IDE3LjY5NTUgMTAuMjAyMiAxNi40NjQzIDExLjQzMzRMMTUuMjYxNiAxMi42MzYxTDE5LjE5OTkgMTYuNTc0NEMxOS42MDc3IDE2Ljk4MjEgMTkuODExNiAxNy4xODYgMTkuOTA1OCAxNy40MTM1QzIwLjAzMTQgMTcuNzE2OCAyMC4wMzE0IDE4LjA1NzUgMTkuOTA1OCAxOC4zNjA4QzE5LjgxMTYgMTguNTg4MiAxOS42MDc3IDE4Ljc5MjEgMTkuMTk5OSAxOS4xOTk5QzE4Ljc5MjEgMTkuNjA3NyAxOC41ODgyIDE5LjgxMTYgMTguMzYwOCAxOS45MDU4QzE4LjA1NzUgMjAuMDMxNCAxNy43MTY4IDIwLjAzMTQgMTcuNDEzNSAxOS45MDU4QzE3LjE4NiAxOS44MTE2IDE2Ljk4MjEgMTkuNjA3NyAxNi41NzQ0IDE5LjE5OTlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class CursorBoldIcon extends StatelessWidget {
  /// Creates the `cursor` icon in the bold style.
  const CursorBoldIcon({
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
    name: 'cursor',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.5744 19.1999L12.6361 15.2616L11.4334 16.4643C10.2022 17.6955 9.58656 18.3111 8.92489 18.1658C8.26322 18.0204 7.96225 17.2035 7.3603 15.5696L5.3527 10.1205C4.15187 6.86106 3.55146 5.23136 4.39141 4.39141C5.23136 3.55146 6.86106 4.15187 10.1205 5.35271L15.5696 7.3603C17.2035 7.96225 18.0204 8.26322 18.1658 8.92489C18.3111 9.58656 17.6955 10.2022 16.4643 11.4334L15.2616 12.6361L19.1999 16.5744C19.6077 16.9821 19.8116 17.186 19.9058 17.4135C20.0314 17.7168 20.0314 18.0575 19.9058 18.3608C19.8116 18.5882 19.6077 18.7921 19.1999 19.1999C18.7921 19.6077 18.5882 19.8116 18.3608 19.9058C18.0575 20.0314 17.7168 20.0314 17.4135 19.9058C17.186 19.8116 16.9821 19.6077 16.5744 19.1999Z" fill="currentColor"/>''',
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
