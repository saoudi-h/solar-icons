// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `text-bold` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjYwODcgMS4yNUM1Ljc1Mzc0IDEuMjUgNC4yNSAyLjc1Mzc0IDQuMjUgNC42MDg3VjE5Ljk0MTJDNC4yNSAyMS40OTI0IDUuNTA3NTUgMjIuNzUgNy4wNTg4MiAyMi43NUgxNEMxNy4xNzU2IDIyLjc1IDE5Ljc1IDIwLjE3NTYgMTkuNzUgMTdDMTkuNzUgMTQuMzgyNCAxOC4wMDA4IDEyLjE3MzIgMTUuNjA3NiAxMS40Nzc3QzE2LjkxNDIgMTAuNDIzNyAxNy43NSA4LjgwOTQ2IDE3Ljc1IDdDMTcuNzUgMy44MjQzNiAxNS4xNzU2IDEuMjUgMTIgMS4yNUg3LjYwODdaTTEyIDExLjI1QzE0LjM0NzIgMTEuMjUgMTYuMjUgOS4zNDcyMSAxNi4yNSA3QzE2LjI1IDQuNjUyNzkgMTQuMzQ3MiAyLjc1IDEyIDIuNzVINy42MDg3QzYuNTgyMTcgMi43NSA1Ljc1IDMuNTgyMTcgNS43NSA0LjYwODdWMTEuMjVIMTJaTTUuNzUgMTIuNzVWMTkuOTQxMkM1Ljc1IDIwLjY2NCA2LjMzNTk4IDIxLjI1IDcuMDU4ODIgMjEuMjVIMTRDMTYuMzQ3MiAyMS4yNSAxOC4yNSAxOS4zNDcyIDE4LjI1IDE3QzE4LjI1IDE0LjY1MjggMTYuMzQ3MiAxMi43NSAxNCAxMi43NUg1Ljc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class TextBoldOutlineIcon extends StatelessWidget {
  /// Creates the `text-bold` icon in the outline style.
  const TextBoldOutlineIcon({
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
    name: 'text-bold',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.6087 1.25C5.75374 1.25 4.25 2.75374 4.25 4.6087V19.9412C4.25 21.4924 5.50755 22.75 7.05882 22.75H14C17.1756 22.75 19.75 20.1756 19.75 17C19.75 14.3824 18.0008 12.1732 15.6076 11.4777C16.9142 10.4237 17.75 8.80946 17.75 7C17.75 3.82436 15.1756 1.25 12 1.25H7.6087ZM12 11.25C14.3472 11.25 16.25 9.34721 16.25 7C16.25 4.65279 14.3472 2.75 12 2.75H7.6087C6.58217 2.75 5.75 3.58217 5.75 4.6087V11.25H12ZM5.75 12.75V19.9412C5.75 20.664 6.33598 21.25 7.05882 21.25H14C16.3472 21.25 18.25 19.3472 18.25 17C18.25 14.6528 16.3472 12.75 14 12.75H5.75Z" fill="currentColor"/>''',
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
