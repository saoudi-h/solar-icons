// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05IDQuOTQxOThDNi40NzU2MSA0LjAyNjkzIDUuMTI5IDMuNjUzODEgNC4zOTE0MSA0LjM5MTQxQzMuNTUxNDYgNS4yMzEzNiA0LjE1MTg3IDYuODYxMDYgNS4zNTI3IDEwLjEyMDVMNy4zNjAzIDE1LjU2OTZDNy45NjIyNSAxNy4yMDM1IDguMjYzMjIgMTguMDIwNCA4LjkyNDg5IDE4LjE2NThDOS41ODY1NiAxOC4zMTExIDEwLjIwMjIgMTcuNjk1NSAxMS40MzM0IDE2LjQ2NDNMMTIuNjM2MSAxNS4yNjE2TDE2LjU3NDQgMTkuMTk5OUMxNi45ODIxIDE5LjYwNzcgMTcuMTg2IDE5LjgxMTYgMTcuNDEzNSAxOS45MDU4QzE3LjcxNjggMjAuMDMxNCAxOC4wNTc1IDIwLjAzMTQgMTguMzYwOCAxOS45MDU4QzE4LjU4ODIgMTkuODExNiAxOC43OTIxIDE5LjYwNzcgMTkuMTk5OSAxOS4xOTk5QzE5LjYwNzcgMTguNzkyMSAxOS44MTE2IDE4LjU4ODIgMTkuOTA1OCAxOC4zNjA4QzIwLjAzMTQgMTguMDU3NSAyMC4wMzE0IDE3LjcxNjggMTkuOTA1OCAxNy40MTM1QzE5LjgxMTYgMTcuMTg2IDE5LjYwNzcgMTYuOTgyMSAxOS4xOTk5IDE2LjU3NDRMMTUuMjYxNiAxMi42MzYxTDE2LjQ2NDMgMTEuNDMzNEMxNy42OTU1IDEwLjIwMjIgMTguMzExMSA5LjU4NjU2IDE4LjE2NTggOC45MjQ4OUMxOC4wMjA0IDguMjYzMjIgMTcuMjAzNSA3Ljk2MjI1IDE1LjU2OTYgNy4zNjAzTDEzIDYuNDEzNTkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class CursorBrokenIcon extends StatelessWidget {
  /// Creates the `cursor` icon in the broken style.
  const CursorBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 4.94198C6.47561 4.02693 5.129 3.65381 4.39141 4.39141C3.55146 5.23136 4.15187 6.86106 5.3527 10.1205L7.3603 15.5696C7.96225 17.2035 8.26322 18.0204 8.92489 18.1658C9.58656 18.3111 10.2022 17.6955 11.4334 16.4643L12.6361 15.2616L16.5744 19.1999C16.9821 19.6077 17.186 19.8116 17.4135 19.9058C17.7168 20.0314 18.0575 20.0314 18.3608 19.9058C18.5882 19.8116 18.7921 19.6077 19.1999 19.1999C19.6077 18.7921 19.8116 18.5882 19.9058 18.3608C20.0314 18.0575 20.0314 17.7168 19.9058 17.4135C19.8116 17.186 19.6077 16.9821 19.1999 16.5744L15.2616 12.6361L16.4643 11.4334C17.6955 10.2022 18.3111 9.58656 18.1658 8.92489C18.0204 8.26322 17.2035 7.96225 15.5696 7.3603L13 6.41359" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
