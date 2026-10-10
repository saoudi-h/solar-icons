// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `record-minimalistic` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik05LjQ2NDEyIDE1LjI1QzEwLjI2MTYgMTQuNDAwMyAxMC43NSAxMy4yNTcyIDEwLjc1IDEyQzEwLjc1IDkuMzc2NjUgOC42MjMzNSA3LjI1IDYgNy4yNUMzLjM3NjY1IDcuMjUgMS4yNSA5LjM3NjY1IDEuMjUgMTJDMS4yNSAxNC42MjM0IDMuMzc2NjUgMTYuNzUgNiAxNi43NUgxOEMyMC42MjM0IDE2Ljc1IDIyLjc1IDE0LjYyMzQgMjIuNzUgMTJDMjIuNzUgOS4zNzY2NSAyMC42MjM0IDcuMjUgMTggNy4yNUMxNS4zNzY2IDcuMjUgMTMuMjUgOS4zNzY2NSAxMy4yNSAxMkMxMy4yNSAxMy4yNTcyIDEzLjczODQgMTQuNDAwMyAxNC41MzU5IDE1LjI1SDkuNDY0MTJaTTYgOC43NUM0LjIwNTA3IDguNzUgMi43NSAxMC4yMDUxIDIuNzUgMTJDMi43NSAxMy43OTQ5IDQuMjA1MDcgMTUuMjUgNiAxNS4yNUM3Ljc5NDkzIDE1LjI1IDkuMjUgMTMuNzk0OSA5LjI1IDEyQzkuMjUgMTAuMjA1MSA3Ljc5NDkzIDguNzUgNiA4Ljc1Wk0xOCAxNS4yNUMxOS43OTQ5IDE1LjI1IDIxLjI1IDEzLjc5NDkgMjEuMjUgMTJDMjEuMjUgMTAuMjA1MSAxOS43OTQ5IDguNzUgMTggOC43NUMxNi4yMDUxIDguNzUgMTQuNzUgMTAuMjA1MSAxNC43NSAxMkMxNC43NSAxMy43OTQ5IDE2LjIwNTEgMTUuMjUgMTggMTUuMjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RecordMinimalisticOutlineIcon extends StatelessWidget {
  /// Creates the `record-minimalistic` icon in the outline style.
  const RecordMinimalisticOutlineIcon({
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
    name: 'record-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.46412 15.25C10.2616 14.4003 10.75 13.2572 10.75 12C10.75 9.37665 8.62335 7.25 6 7.25C3.37665 7.25 1.25 9.37665 1.25 12C1.25 14.6234 3.37665 16.75 6 16.75H18C20.6234 16.75 22.75 14.6234 22.75 12C22.75 9.37665 20.6234 7.25 18 7.25C15.3766 7.25 13.25 9.37665 13.25 12C13.25 13.2572 13.7384 14.4003 14.5359 15.25H9.46412ZM6 8.75C4.20507 8.75 2.75 10.2051 2.75 12C2.75 13.7949 4.20507 15.25 6 15.25C7.79493 15.25 9.25 13.7949 9.25 12C9.25 10.2051 7.79493 8.75 6 8.75ZM18 15.25C19.7949 15.25 21.25 13.7949 21.25 12C21.25 10.2051 19.7949 8.75 18 8.75C16.2051 8.75 14.75 10.2051 14.75 12C14.75 13.7949 16.2051 15.25 18 15.25Z" fill="currentColor"/>''',
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
