// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevron-last` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNi45MzA2MyA1LjQ4ODMyQzYuNjYxMTEgNS4xNzM4OCA2LjY5NzM0IDQuNzAwMjkgNy4wMTE2OCA0LjQzMDdDNy4zMjYxMyA0LjE2MTE4IDcuNzk5NzEgNC4xOTc0MSA4LjA2OTMgNC41MTE3NkwxNC4wNjkzIDExLjUxMThDMTQuMzEgMTEuNzkyNiAxNC4zMSAxMi4yMDc1IDE0LjA2OTMgMTIuNDg4M0w4LjA2OTMgMTkuNDg4M0M3Ljc5OTcxIDE5LjgwMjcgNy4zMjYxMiAxOS44Mzg5IDcuMDExNjggMTkuNTY5NEM2LjY5NzM0IDE5LjI5OTggNi42NjExMSAxOC44MjYyIDYuOTMwNjMgMTguNTExOEwxMi41MTE3IDEyTDYuOTMwNjMgNS40ODgzMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE1Ljc1IDVDMTUuNzUgNC41ODU3OSAxNi4wODU4IDQuMjUwMDEgMTYuNSA0LjI1QzE2LjkxNDIgNC4yNSAxNy4yNSA0LjU4NTc5IDE3LjI1IDVMMTcuMjUgMTlDMTcuMjUgMTkuNDE0MiAxNi45MTQyIDE5Ljc1IDE2LjUgMTkuNzVDMTYuMDg1OCAxOS43NSAxNS43NSAxOS40MTQyIDE1Ljc1IDE5TDE1Ljc1IDVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ChevronLastBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chevron-last` icon in the boldDuotone style.
  const ChevronLastBoldDuotoneIcon({
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
    name: 'chevron-last',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15.75 5C15.75 4.58579 16.0858 4.25001 16.5 4.25C16.9142 4.25 17.25 4.58579 17.25 5L17.25 19C17.25 19.4142 16.9142 19.75 16.5 19.75C16.0858 19.75 15.75 19.4142 15.75 19L15.75 5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M6.93063 5.48832C6.66111 5.17388 6.69734 4.70029 7.01168 4.4307C7.32613 4.16118 7.79971 4.19741 8.0693 4.51176L14.0693 11.5118C14.31 11.7926 14.31 12.2075 14.0693 12.4883L8.0693 19.4883C7.79971 19.8027 7.32612 19.8389 7.01168 19.5694C6.69734 19.2998 6.66111 18.8262 6.93063 18.5118L12.5117 12L6.93063 5.48832Z" fill="currentColor"/>''',
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
