// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIgMTIuMjAzOUMyIDkuOTE1NDkgMiA4Ljc3MTI4IDIuNTE5MiA3LjgyMjc0QzMuMDM4NCA2Ljg3NDIxIDMuOTg2OTUgNi4yODU1MSA1Ljg4NDAzIDUuMTA4MTNMNy44ODQwMyAzLjg2Njg3QzkuODg5MzkgMi42MjIyOSAxMC44OTIxIDIgMTIgMkMxMy4xMDc5IDIgMTQuMTEwNiAyLjYyMjI5IDE2LjExNiAzLjg2Njg3TDE4LjExNiA1LjEwODEyQzIwLjAxMzEgNi4yODU1MSAyMC45NjE2IDYuODc0MjEgMjEuNDgwOCA3LjgyMjc0QzIyIDguNzcxMjggMjIgOS45MTU0OSAyMiAxMi4yMDM5VjEzLjcyNUMyMiAxNy42MjU4IDIyIDE5LjU3NjMgMjAuODI4NCAyMC43ODgxQzE5LjY1NjkgMjIgMTcuNzcxMiAyMiAxNCAyMkgxMEM2LjIyODc2IDIyIDQuMzQzMTUgMjIgMy4xNzE1NyAyMC43ODgxQzIgMTkuNTc2MyAyIDE3LjYyNTggMiAxMy43MjVWMTIuMjAzOVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTExLjI1IDE4QzExLjI1IDE4LjQxNDIgMTEuNTg1OCAxOC43NSAxMiAxOC43NUMxMi40MTQyIDE4Ljc1IDEyLjc1IDE4LjQxNDIgMTIuNzUgMThWMTVDMTIuNzUgMTQuNTg1OCAxMi40MTQyIDE0LjI1IDEyIDE0LjI1QzExLjU4NTggMTQuMjUgMTEuMjUgMTQuNTg1OCAxMS4yNSAxNVYxOFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class Home2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `home-2` icon in the boldDuotone style.
  const Home2BoldDuotoneIcon({
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
    name: 'home-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.25 18C11.25 18.4142 11.5858 18.75 12 18.75C12.4142 18.75 12.75 18.4142 12.75 18V15C12.75 14.5858 12.4142 14.25 12 14.25C11.5858 14.25 11.25 14.5858 11.25 15V18Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12.2039C2 9.91549 2 8.77128 2.5192 7.82274C3.0384 6.87421 3.98695 6.28551 5.88403 5.10813L7.88403 3.86687C9.88939 2.62229 10.8921 2 12 2C13.1079 2 14.1106 2.62229 16.116 3.86687L18.116 5.10812C20.0131 6.28551 20.9616 6.87421 21.4808 7.82274C22 8.77128 22 9.91549 22 12.2039V13.725C22 17.6258 22 19.5763 20.8284 20.7881C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.7881C2 19.5763 2 17.6258 2 13.725V12.2039Z" fill="currentColor"/>''',
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
