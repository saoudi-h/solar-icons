// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `add-circle` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJDMiA2LjQ3NzE1IDYuNDc3MTUgMiAxMiAyQzE3LjUyMjggMiAyMiA2LjQ3NzE1IDIyIDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIuNzUgOUMxMi43NSA4LjU4NTc5IDEyLjQxNDIgOC4yNSAxMiA4LjI1QzExLjU4NTggOC4yNSAxMS4yNSA4LjU4NTc5IDExLjI1IDlMMTEuMjUgMTEuMjVIOUM4LjU4NTc5IDExLjI1IDguMjUgMTEuNTg1OCA4LjI1IDEyQzguMjUgMTIuNDE0MiA4LjU4NTc5IDEyLjc1IDkgMTIuNzVIMTEuMjVWMTVDMTEuMjUgMTUuNDE0MiAxMS41ODU4IDE1Ljc1IDEyIDE1Ljc1QzEyLjQxNDIgMTUuNzUgMTIuNzUgMTUuNDE0MiAxMi43NSAxNUwxMi43NSAxMi43NUgxNUMxNS40MTQyIDEyLjc1IDE1Ljc1IDEyLjQxNDIgMTUuNzUgMTJDMTUuNzUgMTEuNTg1OCAxNS40MTQyIDExLjI1IDE1IDExLjI1SDEyLjc1VjlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class AddCircleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `add-circle` icon in the boldDuotone style.
  const AddCircleBoldDuotoneIcon({
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
    name: 'add-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 9C12.75 8.58579 12.4142 8.25 12 8.25C11.5858 8.25 11.25 8.58579 11.25 9L11.25 11.25H9C8.58579 11.25 8.25 11.5858 8.25 12C8.25 12.4142 8.58579 12.75 9 12.75H11.25V15C11.25 15.4142 11.5858 15.75 12 15.75C12.4142 15.75 12.75 15.4142 12.75 15L12.75 12.75H15C15.4142 12.75 15.75 12.4142 15.75 12C15.75 11.5858 15.4142 11.25 15 11.25H12.75V9Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" fill="currentColor"/>''',
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
