// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chef-hat` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTcgNUM0LjIzODU4IDUgMiA3LjIzODU4IDIgMTBDMiAxMi4wNTAzIDMuMjM0MSAxMy44MTI0IDUgMTQuNTg0VjE3LjI1SDE5TDE5IDE0LjU4NEMyMC43NjU5IDEzLjgxMjQgMjIgMTIuMDUwMyAyMiAxMEMyMiA3LjIzODU4IDE5Ljc2MTQgNSAxNyA1QzE2Ljc0OTUgNSAxNi41MDMzIDUuMDE4NDIgMTYuMjYyNiA1LjA1Mzk5QzE1LjY2MDQgMy4yNzgwNiAxMy45Nzk0IDIgMTIgMkMxMC4wMjA2IDIgOC4zMzk2MSAzLjI3ODA2IDcuNzM3MzYgNS4wNTM5OUM3LjQ5NjczIDUuMDE4NDIgNy4yNTA1MiA1IDcgNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE4Ljk5ODMgMTguNzVINS4wMDE2OUM1LjAxMTg4IDIwLjE0NjkgNS4wODM0MyAyMC45MTE5IDUuNTg1NzkgMjEuNDE0MkM2LjE3MTU3IDIyIDcuMTE0MzggMjIgOSAyMkgxNUMxNi44ODU2IDIyIDE3LjgyODQgMjIgMTguNDE0MiAyMS40MTQyQzE4LjkxNjYgMjAuOTExOSAxOC45ODgxIDIwLjE0NjkgMTguOTk4MyAxOC43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ChefHatBoldIcon extends StatelessWidget {
  /// Creates the `chef-hat` icon in the bold style.
  const ChefHatBoldIcon({
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
    name: 'chef-hat',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M7 5C4.23858 5 2 7.23858 2 10C2 12.0503 3.2341 13.8124 5 14.584V17.25H19L19 14.584C20.7659 13.8124 22 12.0503 22 10C22 7.23858 19.7614 5 17 5C16.7495 5 16.5033 5.01842 16.2626 5.05399C15.6604 3.27806 13.9794 2 12 2C10.0206 2 8.33961 3.27806 7.73736 5.05399C7.49673 5.01842 7.25052 5 7 5Z" fill="currentColor"/>
<path d="M18.9983 18.75H5.00169C5.01188 20.1469 5.08343 20.9119 5.58579 21.4142C6.17157 22 7.11438 22 9 22H15C16.8856 22 17.8284 22 18.4142 21.4142C18.9166 20.9119 18.9881 20.1469 18.9983 18.75Z" fill="currentColor"/>''',
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
