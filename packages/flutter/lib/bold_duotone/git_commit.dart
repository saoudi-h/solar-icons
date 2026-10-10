// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `git-commit` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGcgb3BhY2l0eT0iMC41Ij4KPHBhdGggZD0iTTIyIDExLjI1MkMyMi40MTQyIDExLjI1MiAyMi43NSAxMS41ODc3IDIyLjc1IDEyLjAwMkMyMi43NSAxMi40MTYyIDIyLjQxNDIgMTIuNzUyIDIyIDEyLjc1MkgxNUMxNC41ODU4IDEyLjc1MiAxNC4yNSAxMi40MTYyIDE0LjI1IDEyLjAwMkMxNC4yNSAxMS41ODc3IDE0LjU4NTggMTEuMjUyIDE1IDExLjI1MkgyMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTkgMTEuMjQ3MUM5LjQxNDIxIDExLjI0NzEgOS43NSAxMS41ODI5IDkuNzUgMTEuOTk3MUM5Ljc1IDEyLjQxMTMgOS40MTQyMSAxMi43NDcxIDkgMTIuNzQ3MUgyQzEuNTg1NzkgMTIuNzQ3MSAxLjI1IDEyLjQxMTMgMS4yNSAxMS45OTcxQzEuMjUgMTEuNTgyOSAxLjU4NTc5IDExLjI0NzEgMiAxMS4yNDcxSDlaIiBmaWxsPSIjMUMyNzRDIi8+CjwvZz4KPHBhdGggZD0iTTE0LjI1IDExLjk5NzFDMTQuMjUgMTAuNzU0NCAxMy4yNDI2IDkuNzQ3MDcgMTIgOS43NDcwN0MxMC43NTc0IDkuNzQ3MDcgOS43NSAxMC43NTQ0IDkuNzUgMTEuOTk3MUM5Ljc1IDEzLjIzOTcgMTAuNzU3NCAxNC4yNDcxIDEyIDE0LjI0NzFDMTMuMjQyNiAxNC4yNDcxIDE0LjI1IDEzLjIzOTcgMTQuMjUgMTEuOTk3MVpNMTUuNzUgMTEuOTk3MUMxNS43NSAxNC4wNjgxIDE0LjA3MTEgMTUuNzQ3MSAxMiAxNS43NDcxQzkuOTI4OTMgMTUuNzQ3MSA4LjI1IDE0LjA2ODEgOC4yNSAxMS45OTcxQzguMjUgOS45MjYgOS45Mjg5MyA4LjI0NzA3IDEyIDguMjQ3MDdDMTQuMDcxMSA4LjI0NzA3IDE1Ljc1IDkuOTI2IDE1Ljc1IDExLjk5NzFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class GitCommitBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `git-commit` icon in the boldDuotone style.
  const GitCommitBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.25 11.9971C14.25 10.7544 13.2426 9.74707 12 9.74707C10.7574 9.74707 9.75 10.7544 9.75 11.9971C9.75 13.2397 10.7574 14.2471 12 14.2471C13.2426 14.2471 14.25 13.2397 14.25 11.9971ZM15.75 11.9971C15.75 14.0681 14.0711 15.7471 12 15.7471C9.92893 15.7471 8.25 14.0681 8.25 11.9971C8.25 9.926 9.92893 8.24707 12 8.24707C14.0711 8.24707 15.75 9.926 15.75 11.9971Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M22 11.252C22.4142 11.252 22.75 11.5877 22.75 12.002C22.75 12.4162 22.4142 12.752 22 12.752H15C14.5858 12.752 14.25 12.4162 14.25 12.002C14.25 11.5877 14.5858 11.252 15 11.252H22Z" fill="currentColor"/>
<path d="M9 11.2471C9.41421 11.2471 9.75 11.5829 9.75 11.9971C9.75 12.4113 9.41421 12.7471 9 12.7471H2C1.58579 12.7471 1.25 12.4113 1.25 11.9971C1.25 11.5829 1.58579 11.2471 2 11.2471H9Z" fill="currentColor"/>
</g>''',
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
