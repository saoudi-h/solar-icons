// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sort` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2IDE2LjI1QzE2LjQxNDIgMTYuMjUgMTYuNzUgMTYuNTg1OCAxNi43NSAxN0MxNi43NSAxNy40MTQyIDE2LjQxNDIgMTcuNzUgMTYgMTcuNzVIOEM3LjU4NTc5IDE3Ljc1IDcuMjUgMTcuNDE0MiA3LjI1IDE3QzcuMjUgMTYuNTg1OCA3LjU4NTc5IDE2LjI1IDggMTYuMjVIMTZaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xOSAxMS4yNUMxOS40MTQyIDExLjI1IDE5Ljc1IDExLjU4NTggMTkuNzUgMTJDMTkuNzUgMTIuNDE0MiAxOS40MTQyIDEyLjc1IDE5IDEyLjc1SDVDNC41ODU3OSAxMi43NSA0LjI1IDEyLjQxNDIgNC4yNSAxMkM0LjI1IDExLjU4NTggNC41ODU3OSAxMS4yNSA1IDExLjI1SDE5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjIgNi4yNUMyMi40MTQyIDYuMjUgMjIuNzUgNi41ODU3OSAyMi43NSA3QzIyLjc1IDcuNDE0MjEgMjIuNDE0MiA3Ljc1IDIyIDcuNzVIMkMxLjU4NTc5IDcuNzUgMS4yNSA3LjQxNDIxIDEuMjUgN0MxLjI1IDYuNTg1NzkgMS41ODU3OSA2LjI1IDIgNi4yNUgyMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class SortOutlineIcon extends StatelessWidget {
  /// Creates the `sort` icon in the outline style.
  const SortOutlineIcon({
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
    name: 'sort',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M16 16.25C16.4142 16.25 16.75 16.5858 16.75 17C16.75 17.4142 16.4142 17.75 16 17.75H8C7.58579 17.75 7.25 17.4142 7.25 17C7.25 16.5858 7.58579 16.25 8 16.25H16Z" fill="currentColor"/>
<path d="M19 11.25C19.4142 11.25 19.75 11.5858 19.75 12C19.75 12.4142 19.4142 12.75 19 12.75H5C4.58579 12.75 4.25 12.4142 4.25 12C4.25 11.5858 4.58579 11.25 5 11.25H19Z" fill="currentColor"/>
<path d="M22 6.25C22.4142 6.25 22.75 6.58579 22.75 7C22.75 7.41421 22.4142 7.75 22 7.75H2C1.58579 7.75 1.25 7.41421 1.25 7C1.25 6.58579 1.58579 6.25 2 6.25H22Z" fill="currentColor"/>''',
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
