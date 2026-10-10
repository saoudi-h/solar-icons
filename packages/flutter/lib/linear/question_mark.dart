// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04IDYuMjk2OUM4IDMuOTIzNzkgOS45NTg3NyAyIDEyLjM3NSAyQzE0Ljc5MTMgMiAxNi43NTAxIDMuOTIzNzkgMTYuNzUwMSA2LjI5NjlDMTYuNzUwMSA3Ljg3MjMxIDE1Ljg4NjggOS4yNDk3IDE0LjU5OTYgOS45OTc2OUMxMy40OTA1IDEwLjY0MjIgMTIuMzc1IDExLjYxOTggMTIuMzc1IDEyLjg4NTVWMTUuNzUwMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAyMkgxMi4wMDAxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class QuestionMarkLinearIcon extends StatelessWidget {
  /// Creates the `question-mark` icon in the linear style.
  const QuestionMarkLinearIcon({
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
    name: 'question-mark',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8 6.2969C8 3.92379 9.95877 2 12.375 2C14.7913 2 16.7501 3.92379 16.7501 6.2969C16.7501 7.87231 15.8868 9.2497 14.5996 9.99769C13.4905 10.6422 12.375 11.6198 12.375 12.8855V15.7501" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
