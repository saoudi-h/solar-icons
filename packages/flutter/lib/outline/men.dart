// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `men` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNi4yNSAyQzE2LjI1IDEuNTg1NzkgMTYuNTg1OCAxLjI1IDE3IDEuMjVIMjJDMjIuNDE0MiAxLjI1IDIyLjc1IDEuNTg1NzkgMjIuNzUgMlY3QzIyLjc1IDcuNDE0MjEgMjIuNDE0MiA3Ljc1IDIyIDcuNzVDMjEuNTg1OCA3Ljc1IDIxLjI1IDcuNDE0MjEgMjEuMjUgN1YzLjgxMDY2TDE2LjY5NDkgOC4zNjU3OEMxNy45NzczIDkuODg4MDIgMTguNzUgMTEuODUzOCAxOC43NSAxNEMxOC43NSAxOC44MzI1IDE0LjgzMjUgMjIuNzUgMTAgMjIuNzVDNS4xNjc1MSAyMi43NSAxLjI1IDE4LjgzMjUgMS4yNSAxNEMxLjI1IDkuMTY3NTEgNS4xNjc1MSA1LjI1IDEwIDUuMjVDMTIuMTQ2MiA1LjI1IDE0LjExMiA2LjAyMjcxIDE1LjYzNDIgNy4zMDUxMkwyMC4xODkzIDIuNzVIMTdDMTYuNTg1OCAyLjc1IDE2LjI1IDIuNDE0MjEgMTYuMjUgMlpNMTAgNi43NUM1Ljk5NTk0IDYuNzUgMi43NSA5Ljk5NTk0IDIuNzUgMTRDMi43NSAxOC4wMDQxIDUuOTk1OTQgMjEuMjUgMTAgMjEuMjVDMTQuMDA0MSAyMS4yNSAxNy4yNSAxOC4wMDQxIDE3LjI1IDE0QzE3LjI1IDkuOTk1OTQgMTQuMDA0MSA2Ljc1IDEwIDYuNzVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MenOutlineIcon extends StatelessWidget {
  /// Creates the `men` icon in the outline style.
  const MenOutlineIcon({
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
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.25 2C16.25 1.58579 16.5858 1.25 17 1.25H22C22.4142 1.25 22.75 1.58579 22.75 2V7C22.75 7.41421 22.4142 7.75 22 7.75C21.5858 7.75 21.25 7.41421 21.25 7V3.81066L16.6949 8.36578C17.9773 9.88802 18.75 11.8538 18.75 14C18.75 18.8325 14.8325 22.75 10 22.75C5.16751 22.75 1.25 18.8325 1.25 14C1.25 9.16751 5.16751 5.25 10 5.25C12.1462 5.25 14.112 6.02271 15.6342 7.30512L20.1893 2.75H17C16.5858 2.75 16.25 2.41421 16.25 2ZM10 6.75C5.99594 6.75 2.75 9.99594 2.75 14C2.75 18.0041 5.99594 21.25 10 21.25C14.0041 21.25 17.25 18.0041 17.25 14C17.25 9.99594 14.0041 6.75 10 6.75Z" fill="currentColor"/>''',
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
