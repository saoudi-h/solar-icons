// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `double-alt-arrow-up` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00LjQzMDU3IDEzLjQ4ODFDNC43MDAxNCAxMy44MDI2IDUuMTczNjEgMTMuODM5IDUuNDg4MTEgMTMuNTY5NEwxMiA3Ljk4NzgxTDE4LjUxMTkgMTMuNTY5NEMxOC44MjY0IDEzLjgzOSAxOS4yOTk5IDEzLjgwMjYgMTkuNTY5NSAxMy40ODgxQzE5LjgzOSAxMy4xNzM2IDE5LjgwMjYgMTIuNzAwMSAxOS40ODgxIDEyLjQzMDZMMTIuNDg4MSA2LjQzMDU2QzEyLjIwNzIgNi4xODk4MSAxMS43OTI4IDYuMTg5ODEgMTEuNTExOSA2LjQzMDU2TDQuNTExOTIgMTIuNDMwNkM0LjE5NzQzIDEyLjcwMDEgNC4xNjEgMTMuMTczNiA0LjQzMDU3IDEzLjQ4ODFaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik01LjAwMDA1IDE3Ljc1QzQuNjg2MTkgMTcuNzUgNC40MDU1MyAxNy41NTQ2IDQuMjk2NjQgMTcuMjYwMkM0LjE4Nzc0IDE2Ljk2NTggNC4yNzM2NiAxNi42MzQ4IDQuNTExOTYgMTYuNDMwNkwxMS41MTIgMTAuNDMwNkMxMS43OTI4IDEwLjE4OTggMTIuMjA3MyAxMC4xODk4IDEyLjQ4ODEgMTAuNDMwNkwxOS40ODgxIDE2LjQzMDZDMTkuNzI2NCAxNi42MzQ4IDE5LjgxMjQgMTYuOTY1OCAxOS43MDM1IDE3LjI2MDJDMTkuNTk0NiAxNy41NTQ2IDE5LjMxMzkgMTcuNzUgMTkgMTcuNzVINS4wMDAwNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class DoubleAltArrowUpBoldIcon extends StatelessWidget {
  /// Creates the `double-alt-arrow-up` icon in the bold style.
  const DoubleAltArrowUpBoldIcon({
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
    name: 'double-alt-arrow-up',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.43057 13.4881C4.70014 13.8026 5.17361 13.839 5.48811 13.5694L12 7.98781L18.5119 13.5694C18.8264 13.839 19.2999 13.8026 19.5695 13.4881C19.839 13.1736 19.8026 12.7001 19.4881 12.4306L12.4881 6.43056C12.2072 6.18981 11.7928 6.18981 11.5119 6.43056L4.51192 12.4306C4.19743 12.7001 4.161 13.1736 4.43057 13.4881Z" fill="currentColor"/>
<path d="M5.00005 17.75C4.68619 17.75 4.40553 17.5546 4.29664 17.2602C4.18774 16.9658 4.27366 16.6348 4.51196 16.4306L11.512 10.4306C11.7928 10.1898 12.2073 10.1898 12.4881 10.4306L19.4881 16.4306C19.7264 16.6348 19.8124 16.9658 19.7035 17.2602C19.5946 17.5546 19.3139 17.75 19 17.75H5.00005Z" fill="currentColor"/>''',
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
