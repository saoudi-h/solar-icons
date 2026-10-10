// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `forward` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMy45Njk3IDYuNDY5NjdDMTQuMjYyNiA2LjE3Njc4IDE0LjczNzQgNi4xNzY3OCAxNS4wMzAzIDYuNDY5NjdMMjAuMDMwMyAxMS40Njk3QzIwLjMyMzIgMTEuNzYyNiAyMC4zMjMyIDEyLjIzNzQgMjAuMDMwMyAxMi41MzAzTDE1LjAzMDMgMTcuNTMwM0MxNC43Mzc0IDE3LjgyMzIgMTQuMjYyNiAxNy44MjMyIDEzLjk2OTcgMTcuNTMwM0MxMy42NzY4IDE3LjIzNzQgMTMuNjc2OCAxNi43NjI2IDEzLjk2OTcgMTYuNDY5N0wxNy42ODkzIDEyLjc1TDkuNSAxMi43NUM4Ljc4NjY4IDEyLjc1IDcuNzAwMDIgMTIuOTcwMiA2LjgxMzIzIDEzLjYwODdDNS45NjQ2OCAxNC4yMTk2IDUuMjUgMTUuMjQ0NCA1LjI1IDE3QzUuMjUgMTcuNDE0MiA0LjkxNDIxIDE3Ljc1IDQuNSAxNy43NUM0LjA4NTc5IDE3Ljc1IDMuNzUgMTcuNDE0MiAzLjc1IDE3QzMuNzUgMTQuNzU1NiA0LjcwMTk4IDEzLjI4MDQgNS45MzY3NyAxMi4zOTEzQzcuMTMzMzIgMTEuNTI5OCA4LjU0NjY1IDExLjI1IDkuNSAxMS4yNUwxNy42ODkzIDExLjI1TDEzLjk2OTcgNy41MzAzM0MxMy42NzY4IDcuMjM3NDQgMTMuNjc2OCA2Ljc2MjU2IDEzLjk2OTcgNi40Njk2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ForwardBoldIcon extends StatelessWidget {
  /// Creates the `forward` icon in the bold style.
  const ForwardBoldIcon({
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
    name: 'forward',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M13.9697 6.46967C14.2626 6.17678 14.7374 6.17678 15.0303 6.46967L20.0303 11.4697C20.3232 11.7626 20.3232 12.2374 20.0303 12.5303L15.0303 17.5303C14.7374 17.8232 14.2626 17.8232 13.9697 17.5303C13.6768 17.2374 13.6768 16.7626 13.9697 16.4697L17.6893 12.75L9.5 12.75C8.78668 12.75 7.70002 12.9702 6.81323 13.6087C5.96468 14.2196 5.25 15.2444 5.25 17C5.25 17.4142 4.91421 17.75 4.5 17.75C4.08579 17.75 3.75 17.4142 3.75 17C3.75 14.7556 4.70198 13.2804 5.93677 12.3913C7.13332 11.5298 8.54665 11.25 9.5 11.25L17.6893 11.25L13.9697 7.53033C13.6768 7.23744 13.6768 6.76256 13.9697 6.46967Z" fill="currentColor"/>''',
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
