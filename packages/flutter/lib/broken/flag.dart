// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `flag` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUgMjJWMTRNNSAxNEw3LjQ3MDY3IDEzLjUwNTlDOS4xMjEyIDEzLjE3NTggMTAuODMyMSAxMy4zMzI4IDEyLjM5NDkgMTMuOTU4QzE0LjA4ODUgMTQuNjM1NCAxNS45NTI0IDE0Ljc2MTkgMTcuNzIyIDE0LjMxOTVMMTcuOTM2NCAxNC4yNjU5QzE4LjU2MTUgMTQuMTA5NiAxOSAxMy41NDggMTkgMTIuOTAzN1Y1LjUzNjY5QzE5IDQuNzU2MTMgMTguMjY2NSA0LjE4MzM5IDE3LjUwOTIgNC4zNzI3QzE1Ljg3OCA0Ljc4MDUxIDE0LjE1OTcgNC42NjM4OSAxMi41OTg2IDQuMDM5NDNMMTIuMzk0OSAzLjk1Nzk3QzEwLjgzMjEgMy4zMzI4NCA5LjEyMTIgMy4xNzU3NiA3LjQ3MDY3IDMuNTA1ODdMNSA0TTUgMTRWMTFNNSA0VjJNNSA0VjciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class FlagBrokenIcon extends StatelessWidget {
  /// Creates the `flag` icon in the broken style.
  const FlagBrokenIcon({
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
    name: 'flag',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5 22V14M5 14L7.47067 13.5059C9.1212 13.1758 10.8321 13.3328 12.3949 13.958C14.0885 14.6354 15.9524 14.7619 17.722 14.3195L17.9364 14.2659C18.5615 14.1096 19 13.548 19 12.9037V5.53669C19 4.75613 18.2665 4.18339 17.5092 4.3727C15.878 4.78051 14.1597 4.66389 12.5986 4.03943L12.3949 3.95797C10.8321 3.33284 9.1212 3.17576 7.47067 3.50587L5 4M5 14V11M5 4V2M5 4V7" stroke="currentColor" stroke-linecap="round"/>''',
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
