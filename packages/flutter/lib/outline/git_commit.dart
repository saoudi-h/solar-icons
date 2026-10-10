// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `git-commit` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiA4LjI0NzA3QzEzLjgxNTkgOC4yNDcwNyAxNS4zMzAyIDkuNTM3ODYgMTUuNjc1OCAxMS4yNTJIMjJDMjIuNDE0MiAxMS4yNTIgMjIuNzUgMTEuNTg3NyAyMi43NSAxMi4wMDJDMjIuNzUgMTIuNDE2MiAyMi40MTQyIDEyLjc1MiAyMiAxMi43NTJIMTUuNjczOEMxNS4zMjQ1IDE0LjQ2MTIgMTMuODEyNSAxNS43NDcxIDEyIDE1Ljc0NzFDMTAuMTg1OCAxNS43NDcxIDguNjcyNjYgMTQuNDU4NyA4LjMyNTIgMTIuNzQ3MUgyQzEuNTg1NzkgMTIuNzQ3MSAxLjI1IDEyLjQxMTMgMS4yNSAxMS45OTcxQzEuMjUgMTEuNTgyOSAxLjU4NTc5IDExLjI0NzEgMiAxMS4yNDcxSDguMzI1MkM4LjY3MjY2IDkuNTM1NDEgMTAuMTg1OCA4LjI0NzA3IDEyIDguMjQ3MDdaTTEyIDkuNzQ3MDdDMTAuNzU3NCA5Ljc0NzA3IDkuNzUgMTAuNzU0NCA5Ljc1IDExLjk5NzFDOS43NSAxMy4yMzk3IDEwLjc1NzQgMTQuMjQ3MSAxMiAxNC4yNDcxQzEzLjI0MjYgMTQuMjQ3MSAxNC4yNSAxMy4yMzk3IDE0LjI1IDExLjk5NzFDMTQuMjUgMTAuNzU0NCAxMy4yNDI2IDkuNzQ3MDcgMTIgOS43NDcwN1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class GitCommitOutlineIcon extends StatelessWidget {
  /// Creates the `git-commit` icon in the outline style.
  const GitCommitOutlineIcon({
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
    name: 'git-commit',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 8.24707C13.8159 8.24707 15.3302 9.53786 15.6758 11.252H22C22.4142 11.252 22.75 11.5877 22.75 12.002C22.75 12.4162 22.4142 12.752 22 12.752H15.6738C15.3245 14.4612 13.8125 15.7471 12 15.7471C10.1858 15.7471 8.67266 14.4587 8.3252 12.7471H2C1.58579 12.7471 1.25 12.4113 1.25 11.9971C1.25 11.5829 1.58579 11.2471 2 11.2471H8.3252C8.67266 9.53541 10.1858 8.24707 12 8.24707ZM12 9.74707C10.7574 9.74707 9.75 10.7544 9.75 11.9971C9.75 13.2397 10.7574 14.2471 12 14.2471C13.2426 14.2471 14.25 13.2397 14.25 11.9971C14.25 10.7544 13.2426 9.74707 12 9.74707Z" fill="currentColor"/>''',
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
