// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-forward` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTcuNTczN0wyIDYuNDI2MzJDMiA0LjU3ODk1IDMuNjAwNjQgMy40MTEyMiA0LjkwMzEyIDQuMzA4MzhMMTAuOTk5OCA4Ljc2ODQ0TDEwLjk5OTggNy4xMjMwM0MxMC45OTk4IDUuNTA2NTggMTIuNDY3IDQuNDg0ODIgMTMuNjYxIDUuMjY5ODNMMjEuMDc4NCAxMC4xNDY4QzIyLjMwNjkgMTAuOTU0NSAyMi4zMDY5IDEzLjA0NTUgMjEuMDc4NCAxMy44NTMyTDEzLjY2MSAxOC43MzAyQzEyLjQ2NyAxOS41MTUyIDEwLjk5OTggMTguNDkzNCAxMC45OTk4IDE2Ljg3N1YxNS4yMzE2TDQuOTAzMTMgMTkuNjkxNkMzLjYwMDY1IDIwLjU4ODggMiAxOS40MjExIDIgMTcuNTczN1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class RewindForwardBoldIcon extends StatelessWidget {
  /// Creates the `rewind-forward` icon in the bold style.
  const RewindForwardBoldIcon({
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
    name: 'rewind-forward',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M2 17.5737L2 6.42632C2 4.57895 3.60064 3.41122 4.90312 4.30838L10.9998 8.76844L10.9998 7.12303C10.9998 5.50658 12.467 4.48482 13.661 5.26983L21.0784 10.1468C22.3069 10.9545 22.3069 13.0455 21.0784 13.8532L13.661 18.7302C12.467 19.5152 10.9998 18.4934 10.9998 16.877V15.2316L4.90313 19.6916C3.60065 20.5888 2 19.4211 2 17.5737Z" fill="currentColor"/>''',
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
