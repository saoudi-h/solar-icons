// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `double-alt-arrow-down` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00LjQzMDU3IDEwLjUxMTlDNC43MDAxNCAxMC4xOTc0IDUuMTczNjEgMTAuMTYxIDUuNDg4MTEgMTAuNDMwNkwxMiAxNi4wMTIyTDE4LjUxMTkgMTAuNDMwNkMxOC44MjY0IDEwLjE2MSAxOS4yOTk5IDEwLjE5NzQgMTkuNTY5NSAxMC41MTE5QzE5LjgzOSAxMC44MjY0IDE5LjgwMjYgMTEuMjk5OSAxOS40ODgxIDExLjU2OTRMMTIuNDg4MSAxNy41Njk0QzEyLjIwNzIgMTcuODEwMiAxMS43OTI4IDE3LjgxMDIgMTEuNTExOSAxNy41Njk0TDQuNTExOTIgMTEuNTY5NEM0LjE5NzQzIDExLjI5OTkgNC4xNjEgMTAuODI2NCA0LjQzMDU3IDEwLjUxMTlaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik01LjAwMDA1IDYuMjVDNC42ODYxOSA2LjI1IDQuNDA1NTMgNi40NDU0MyA0LjI5NjY0IDYuNzM5NzlDNC4xODc3NCA3LjAzNDE1IDQuMjczNjYgNy4zNjUxOSA0LjUxMTk2IDcuNTY5NDRMMTEuNTEyIDEzLjU2OTRDMTEuNzkyOCAxMy44MTAyIDEyLjIwNzMgMTMuODEwMiAxMi40ODgxIDEzLjU2OTRMMTkuNDg4MSA3LjU2OTQ0QzE5LjcyNjQgNy4zNjUxOSAxOS44MTI0IDcuMDM0MTUgMTkuNzAzNSA2LjczOTc5QzE5LjU5NDYgNi40NDU0MyAxOS4zMTM5IDYuMjUgMTkgNi4yNUg1LjAwMDA1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class DoubleAltArrowDownBoldIcon extends StatelessWidget {
  /// Creates the `double-alt-arrow-down` icon in the bold style.
  const DoubleAltArrowDownBoldIcon({
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
    name: 'double-alt-arrow-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.43057 10.5119C4.70014 10.1974 5.17361 10.161 5.48811 10.4306L12 16.0122L18.5119 10.4306C18.8264 10.161 19.2999 10.1974 19.5695 10.5119C19.839 10.8264 19.8026 11.2999 19.4881 11.5694L12.4881 17.5694C12.2072 17.8102 11.7928 17.8102 11.5119 17.5694L4.51192 11.5694C4.19743 11.2999 4.161 10.8264 4.43057 10.5119Z" fill="currentColor"/>
<path d="M5.00005 6.25C4.68619 6.25 4.40553 6.44543 4.29664 6.73979C4.18774 7.03415 4.27366 7.36519 4.51196 7.56944L11.512 13.5694C11.7928 13.8102 12.2073 13.8102 12.4881 13.5694L19.4881 7.56944C19.7264 7.36519 19.8124 7.03415 19.7035 6.73979C19.5946 6.44543 19.3139 6.25 19 6.25H5.00005Z" fill="currentColor"/>''',
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
