// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `expressionless-circle` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyMkMxNy41MjI4IDIyIDIyIDE3LjUyMjggMjIgMTJDMjIgNi40NzcxNSAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJaTTguMjUgMTZDOC4yNSAxNS41ODU4IDguNTg1NzkgMTUuMjUgOSAxNS4yNUgxNUMxNS40MTQyIDE1LjI1IDE1Ljc1IDE1LjU4NTggMTUuNzUgMTZDMTUuNzUgMTYuNDE0MiAxNS40MTQyIDE2Ljc1IDE1IDE2Ljc1SDlDOC41ODU3OSAxNi43NSA4LjI1IDE2LjQxNDIgOC4yNSAxNlpNMTAgMTAuNUMxMCAxMS4zMjg0IDkuNTUyMjggMTIgOSAxMkM4LjQ0NzcyIDEyIDggMTEuMzI4NCA4IDEwLjVDOCA5LjY3MTU3IDguNDQ3NzIgOSA5IDlDOS41NTIyOCA5IDEwIDkuNjcxNTcgMTAgMTAuNVpNMTUgMTJDMTUuNTUyMyAxMiAxNiAxMS4zMjg0IDE2IDEwLjVDMTYgOS42NzE1NyAxNS41NTIzIDkgMTUgOUMxNC40NDc3IDkgMTQgOS42NzE1NyAxNCAxMC41QzE0IDExLjMyODQgMTQuNDQ3NyAxMiAxNSAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ExpressionlessCircleBoldIcon extends StatelessWidget {
  /// Creates the `expressionless-circle` icon in the bold style.
  const ExpressionlessCircleBoldIcon({
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
    name: 'expressionless-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22ZM8.25 16C8.25 15.5858 8.58579 15.25 9 15.25H15C15.4142 15.25 15.75 15.5858 15.75 16C15.75 16.4142 15.4142 16.75 15 16.75H9C8.58579 16.75 8.25 16.4142 8.25 16ZM10 10.5C10 11.3284 9.55228 12 9 12C8.44772 12 8 11.3284 8 10.5C8 9.67157 8.44772 9 9 9C9.55228 9 10 9.67157 10 10.5ZM15 12C15.5523 12 16 11.3284 16 10.5C16 9.67157 15.5523 9 15 9C14.4477 9 14 9.67157 14 10.5C14 11.3284 14.4477 12 15 12Z" fill="currentColor"/>''',
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
