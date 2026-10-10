// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-to-top-right` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik02LjQ2OTY3IDEwLjAzMDNDNi4xNzY3OCA5LjczNzQ0IDYuMTc2NzggOS4yNjI1NiA2LjQ2OTY3IDguOTY5NjdMMTEuNDY5NyAzLjk2OTY3QzExLjc2MjYgMy42NzY3OCAxMi4yMzc0IDMuNjc2NzggMTIuNTMwMyAzLjk2OTY3TDE3LjUzMDMgOC45Njk2N0MxNy44MjMyIDkuMjYyNTYgMTcuODIzMiA5LjczNzQ0IDE3LjUzMDMgMTAuMDMwM0MxNy4yMzc0IDEwLjMyMzIgMTYuNzYyNiAxMC4zMjMyIDE2LjQ2OTcgMTAuMDMwM0wxMi43NSA2LjMxMDY2TDEyLjc1IDE0LjVDMTIuNzUgMTUuMjEzMyAxMi45NzAyIDE2LjMgMTMuNjA4NyAxNy4xODY4QzE0LjIxOTYgMTguMDM1MyAxNS4yNDQ0IDE4Ljc1IDE3IDE4Ljc1QzE3LjQxNDIgMTguNzUgMTcuNzUgMTkuMDg1OCAxNy43NSAxOS41QzE3Ljc1IDE5LjkxNDIgMTcuNDE0MiAyMC4yNSAxNyAyMC4yNUMxNC43NTU2IDIwLjI1IDEzLjI4MDQgMTkuMjk4IDEyLjM5MTMgMTguMDYzMkMxMS41Mjk4IDE2Ljg2NjcgMTEuMjUgMTUuNDUzNCAxMS4yNSAxNC41TDExLjI1IDYuMzEwNjZMNy41MzAzMyAxMC4wMzAzQzcuMjM3NDQgMTAuMzIzMiA2Ljc2MjU2IDEwLjMyMzIgNi40Njk2NyAxMC4wMzAzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowToTopRightBoldIcon extends StatelessWidget {
  /// Creates the `arrow-to-top-right` icon in the bold style.
  const ArrowToTopRightBoldIcon({
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
    name: 'arrow-to-top-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.46967 10.0303C6.17678 9.73744 6.17678 9.26256 6.46967 8.96967L11.4697 3.96967C11.7626 3.67678 12.2374 3.67678 12.5303 3.96967L17.5303 8.96967C17.8232 9.26256 17.8232 9.73744 17.5303 10.0303C17.2374 10.3232 16.7626 10.3232 16.4697 10.0303L12.75 6.31066L12.75 14.5C12.75 15.2133 12.9702 16.3 13.6087 17.1868C14.2196 18.0353 15.2444 18.75 17 18.75C17.4142 18.75 17.75 19.0858 17.75 19.5C17.75 19.9142 17.4142 20.25 17 20.25C14.7556 20.25 13.2804 19.298 12.3913 18.0632C11.5298 16.8667 11.25 15.4534 11.25 14.5L11.25 6.31066L7.53033 10.0303C7.23744 10.3232 6.76256 10.3232 6.46967 10.0303Z" fill="currentColor"/>''',
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
