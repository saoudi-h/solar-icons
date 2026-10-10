// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `circle-top-up` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTcuNTIyOCA2LjQ3NzE1IDIyIDEyIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjQ2OTcgMTEuNTMwM0MxMi4xNzY4IDExLjIzNzQgMTIuMTc2OCAxMC43NjI2IDEyLjQ2OTcgMTAuNDY5N0wyMC4xODkzIDIuNzVIMTYuNjU2MkMxNi4yNDIgMi43NSAxNS45MDYyIDIuNDE0MjEgMTUuOTA2MiAyQzE1LjkwNjIgMS41ODU3OSAxNi4yNDIgMS4yNSAxNi42NTYyIDEuMjVIMjJDMjIuNDE0MiAxLjI1IDIyLjc1IDEuNTg1NzkgMjIuNzUgMlY3LjM0Mzc1QzIyLjc1IDcuNzU3OTYgMjIuNDE0MiA4LjA5Mzc1IDIyIDguMDkzNzVDMjEuNTg1OCA4LjA5Mzc1IDIxLjI1IDcuNzU3OTYgMjEuMjUgNy4zNDM3NVYzLjgxMDY2TDEzLjUzMDMgMTEuNTMwM0MxMy4yMzc0IDExLjgyMzIgMTIuNzYyNiAxMS44MjMyIDEyLjQ2OTcgMTEuNTMwM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class CircleTopUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `circle-top-up` icon in the boldDuotone style.
  const CircleTopUpBoldDuotoneIcon({
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
    name: 'circle-top-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.4697 11.5303C12.1768 11.2374 12.1768 10.7626 12.4697 10.4697L20.1893 2.75H16.6562C16.242 2.75 15.9062 2.41421 15.9062 2C15.9062 1.58579 16.242 1.25 16.6562 1.25H22C22.4142 1.25 22.75 1.58579 22.75 2V7.34375C22.75 7.75796 22.4142 8.09375 22 8.09375C21.5858 8.09375 21.25 7.75796 21.25 7.34375V3.81066L13.5303 11.5303C13.2374 11.8232 12.7626 11.8232 12.4697 11.5303Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
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
