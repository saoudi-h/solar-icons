// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `forbidden-circle` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDIyQzE3LjUyMjggMjIgMjIgMTcuNTIyOCAyMiAxMkMyMiA5LjUwODUzIDIxLjA4ODkgNy4yMjk4NyAxOS41ODE2IDUuNDc5MDZMNS40NzkwNSAxOS41ODE2QzcuMjI5ODcgMjEuMDg4OSA5LjUwODUzIDIyIDEyIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNC40OTE1IDIuOTExMTQgMTYuNzcwMSA0LjQxODM5IDE4LjUyMDlMMTguNTIwOSA0LjQxODM5QzE2Ljc3MDEgMi45MTExNCAxNC40OTE1IDIgMTIgMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ForbiddenCircleBoldIcon extends StatelessWidget {
  /// Creates the `forbidden-circle` icon in the bold style.
  const ForbiddenCircleBoldIcon({
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
    name: 'forbidden-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 22C17.5228 22 22 17.5228 22 12C22 9.50853 21.0889 7.22987 19.5816 5.47906L5.47905 19.5816C7.22987 21.0889 9.50853 22 12 22Z" fill="currentColor"/>
<path d="M12 2C6.47715 2 2 6.47715 2 12C2 14.4915 2.91114 16.7701 4.41839 18.5209L18.5209 4.41839C16.7701 2.91114 14.4915 2 12 2Z" fill="currentColor"/>''',
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
