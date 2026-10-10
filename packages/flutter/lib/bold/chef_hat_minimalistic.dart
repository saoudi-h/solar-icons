// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chef-hat-minimalistic` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yIDEwQzIgNy4yMzg1OCA0LjIzODU4IDUgNyA1QzcuMjUwNTIgNSA3LjQ5NjczIDUuMDE4NDIgNy43MzczNiA1LjA1Mzk5QzguMzM5NjEgMy4yNzgwNiAxMC4wMjA2IDIgMTIgMkMxMy45Nzk0IDIgMTUuNjYwNCAzLjI3ODA2IDE2LjI2MjYgNS4wNTM5OUMxNi41MDMzIDUuMDE4NDIgMTYuNzQ5NSA1IDE3IDVDMTkuNzYxNCA1IDIyIDcuMjM4NTggMjIgMTBDMjIgMTIuMDUwMyAyMC43NjU5IDEzLjgxMjQgMTkgMTQuNTg0TDE5IDE4QzE5IDE5Ljg4NTYgMTkgMjAuODI4NCAxOC40MTQyIDIxLjQxNDJDMTcuODI4NCAyMiAxNi44ODU2IDIyIDE1IDIySDlDNy4xMTQzOCAyMiA2LjE3MTU3IDIyIDUuNTg1NzkgMjEuNDE0MkM1IDIwLjgyODQgNSAxOS44ODU2IDUgMThWMTQuNTg0QzMuMjM0MSAxMy44MTI0IDIgMTIuMDUwMyAyIDEwWk05IDE3LjI1QzguNTg1NzkgMTcuMjUgOC4yNSAxNy41ODU4IDguMjUgMThDOC4yNSAxOC40MTQyIDguNTg1NzkgMTguNzUgOSAxOC43NUgxNUMxNS40MTQyIDE4Ljc1IDE1Ljc1IDE4LjQxNDIgMTUuNzUgMThDMTUuNzUgMTcuNTg1OCAxNS40MTQyIDE3LjI1IDE1IDE3LjI1SDlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ChefHatMinimalisticBoldIcon extends StatelessWidget {
  /// Creates the `chef-hat-minimalistic` icon in the bold style.
  const ChefHatMinimalisticBoldIcon({
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
    name: 'chef-hat-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2 10C2 7.23858 4.23858 5 7 5C7.25052 5 7.49673 5.01842 7.73736 5.05399C8.33961 3.27806 10.0206 2 12 2C13.9794 2 15.6604 3.27806 16.2626 5.05399C16.5033 5.01842 16.7495 5 17 5C19.7614 5 22 7.23858 22 10C22 12.0503 20.7659 13.8124 19 14.584L19 18C19 19.8856 19 20.8284 18.4142 21.4142C17.8284 22 16.8856 22 15 22H9C7.11438 22 6.17157 22 5.58579 21.4142C5 20.8284 5 19.8856 5 18V14.584C3.2341 13.8124 2 12.0503 2 10ZM9 17.25C8.58579 17.25 8.25 17.5858 8.25 18C8.25 18.4142 8.58579 18.75 9 18.75H15C15.4142 18.75 15.75 18.4142 15.75 18C15.75 17.5858 15.4142 17.25 15 17.25H9Z" fill="currentColor"/>''',
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
