// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `home-2` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjUxOTIgNy44MjI3NEMyIDguNzcxMjggMiA5LjkxNTQ5IDIgMTIuMjAzOVYxMy43MjVDMiAxNy42MjU4IDIgMTkuNTc2MyAzLjE3MTU3IDIwLjc4ODFDNC4zNDMxNSAyMiA2LjIyODc2IDIyIDEwIDIySDE0QzE3Ljc3MTIgMjIgMTkuNjU2OSAyMiAyMC44Mjg0IDIwLjc4ODFDMjIgMTkuNTc2MyAyMiAxNy42MjU4IDIyIDEzLjcyNVYxMi4yMDM5QzIyIDkuOTE1NDkgMjIgOC43NzEyOCAyMS40ODA4IDcuODIyNzRDMjAuOTYxNiA2Ljg3NDIxIDIwLjAxMzEgNi4yODU1MSAxOC4xMTYgNS4xMDgxMkwxNi4xMTYgMy44NjY4N0MxNC4xMTA2IDIuNjIyMjkgMTMuMTA3OSAyIDEyIDJDMTAuODkyMSAyIDkuODg5MzkgMi42MjIyOSA3Ljg4NDAzIDMuODY2ODdMNS44ODQwMyA1LjEwODEzQzMuOTg2OTUgNi4yODU1MSAzLjAzODQgNi44NzQyMSAyLjUxOTIgNy44MjI3NFpNMTEuMjUgMThDMTEuMjUgMTguNDE0MiAxMS41ODU4IDE4Ljc1IDEyIDE4Ljc1QzEyLjQxNDIgMTguNzUgMTIuNzUgMTguNDE0MiAxMi43NSAxOFYxNUMxMi43NSAxNC41ODU4IDEyLjQxNDIgMTQuMjUgMTIgMTQuMjVDMTEuNTg1OCAxNC4yNSAxMS4yNSAxNC41ODU4IDExLjI1IDE1VjE4WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class Home2BoldIcon extends StatelessWidget {
  /// Creates the `home-2` icon in the bold style.
  const Home2BoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.5192 7.82274C2 8.77128 2 9.91549 2 12.2039V13.725C2 17.6258 2 19.5763 3.17157 20.7881C4.34315 22 6.22876 22 10 22H14C17.7712 22 19.6569 22 20.8284 20.7881C22 19.5763 22 17.6258 22 13.725V12.2039C22 9.91549 22 8.77128 21.4808 7.82274C20.9616 6.87421 20.0131 6.28551 18.116 5.10812L16.116 3.86687C14.1106 2.62229 13.1079 2 12 2C10.8921 2 9.88939 2.62229 7.88403 3.86687L5.88403 5.10813C3.98695 6.28551 3.0384 6.87421 2.5192 7.82274ZM11.25 18C11.25 18.4142 11.5858 18.75 12 18.75C12.4142 18.75 12.75 18.4142 12.75 18V15C12.75 14.5858 12.4142 14.25 12 14.25C11.5858 14.25 11.25 14.5858 11.25 15V18Z" fill="currentColor"/>''',
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
