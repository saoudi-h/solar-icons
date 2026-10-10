// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `text-italic` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNC45ODI2IDEuMjQ5OTVIOUM4LjU4NTc5IDEuMjQ5OTUgOC4yNSAxLjU4NTc0IDguMjUgMS45OTk5NUM4LjI1IDIuNDE0MTcgOC41ODU3OSAyLjc0OTk1IDkgMi43NDk5NUgxMy45OTJMOC40NDE5OCAyMS4yNUgzQzIuNTg1NzkgMjEuMjUgMi4yNSAyMS41ODU3IDIuMjUgMjJDMi4yNSAyMi40MTQyIDIuNTg1NzkgMjIuNzUgMyAyMi43NUg4Ljk4MzE0QzguOTk0NiAyMi43NTAyIDkuMDA2MDQgMjIuNzUwMiA5LjAxNzQ0IDIyLjc1SDE1QzE1LjQxNDIgMjIuNzUgMTUuNzUgMjIuNDE0MiAxNS43NSAyMkMxNS43NSAyMS41ODU3IDE1LjQxNDIgMjEuMjUgMTUgMjEuMjVIMTAuMDA4TDE1LjU1OCAyLjc0OTk1SDIxQzIxLjQxNDIgMi43NDk5NSAyMS43NSAyLjQxNDE3IDIxLjc1IDEuOTk5OTVDMjEuNzUgMS41ODU3NCAyMS40MTQyIDEuMjQ5OTUgMjEgMS4yNDk5NUgxNS4wMTY5QzE1LjAwNTQgMS4yNDk2OSAxNC45OTQgMS4yNDk2OSAxNC45ODI2IDEuMjQ5OTVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class TextItalicOutlineIcon extends StatelessWidget {
  /// Creates the `text-italic` icon in the outline style.
  const TextItalicOutlineIcon({
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
    name: 'text-italic',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M14.9826 1.24995H9C8.58579 1.24995 8.25 1.58574 8.25 1.99995C8.25 2.41417 8.58579 2.74995 9 2.74995H13.992L8.44198 21.25H3C2.58579 21.25 2.25 21.5857 2.25 22C2.25 22.4142 2.58579 22.75 3 22.75H8.98314C8.9946 22.7502 9.00604 22.7502 9.01744 22.75H15C15.4142 22.75 15.75 22.4142 15.75 22C15.75 21.5857 15.4142 21.25 15 21.25H10.008L15.558 2.74995H21C21.4142 2.74995 21.75 2.41417 21.75 1.99995C21.75 1.58574 21.4142 1.24995 21 1.24995H15.0169C15.0054 1.24969 14.994 1.24969 14.9826 1.24995Z" fill="currentColor"/>''',
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
