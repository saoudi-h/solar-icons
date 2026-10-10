// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `screencast-2` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTQgM0gxMEM2LjIyODc2IDMgNC4zNDMxNSAzIDMuMTcxNTcgNC4xNzE1N0MyIDUuMzQzMTUgMiA3LjIyODc2IDIgMTFDMiAxNC43NzEyIDIgMTYuNjU2OSAzLjE3MTU3IDE3LjgyODRDNC4zNDMxNSAxOSA2LjIyODc2IDE5IDEwIDE5SDE0QzE3Ljc3MTIgMTkgMTkuNjU2OSAxOSAyMC44Mjg0IDE3LjgyODRDMjIgMTYuNjU2OSAyMiAxNC43NzEyIDIyIDExQzIyIDcuMjI4NzYgMjIgNS4zNDMxNSAyMC44Mjg0IDQuMTcxNTdDMTkuNjU2OSAzIDE3Ljc3MTIgMyAxNCAzWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNOS45NDk1NSAxNi4wNTAzQzEwLjg4MDYgMTUuMTE5MiAxMS4zNDYxIDE0LjY1MzcgMTEuOTIwOSAxNC42MjM0QzExLjk3MzUgMTQuNjIwNiAxMi4wMjYxIDE0LjYyMDYgMTIuMDc4NyAxNC42MjM0QzEyLjY1MzUgMTQuNjUzNyAxMy4xMTkgMTUuMTE5MiAxNC4wNTAxIDE2LjA1MDNDMTYuMDc1OSAxOC4wNzYxIDE3LjA4ODggMTkuMDg5IDE2LjgwNTMgMTkuOTYzQzE2Ljc4MDkgMjAuMDM4MSAxNi43NTA2IDIwLjExMTIgMTYuNzE0NyAyMC4xODE1QzE2LjI5NzMgMjEgMTQuODY0OCAyMSAxMS45OTk4IDIxQzkuMTM0ODIgMjEgNy43MDIzMyAyMSA3LjI4NDg5IDIwLjE4MTVDNy4yNDkgMjAuMTExMiA3LjIxODczIDIwLjAzODEgNy4xOTQzNiAxOS45NjNDNi45MTA3OCAxOS4wODkgNy45MjM3MSAxOC4wNzYxIDkuOTQ5NTUgMTYuMDUwM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class Screencast2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `screencast-2` icon in the boldDuotone style.
  const Screencast2BoldDuotoneIcon({
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
    name: 'screencast-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.94955 16.0503C10.8806 15.1192 11.3461 14.6537 11.9209 14.6234C11.9735 14.6206 12.0261 14.6206 12.0787 14.6234C12.6535 14.6537 13.119 15.1192 14.0501 16.0503C16.0759 18.0761 17.0888 19.089 16.8053 19.963C16.7809 20.0381 16.7506 20.1112 16.7147 20.1815C16.2973 21 14.8648 21 11.9998 21C9.13482 21 7.70233 21 7.28489 20.1815C7.249 20.1112 7.21873 20.0381 7.19436 19.963C6.91078 19.089 7.92371 18.0761 9.94955 16.0503Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M14 3H10C6.22876 3 4.34315 3 3.17157 4.17157C2 5.34315 2 7.22876 2 11C2 14.7712 2 16.6569 3.17157 17.8284C4.34315 19 6.22876 19 10 19H14C17.7712 19 19.6569 19 20.8284 17.8284C22 16.6569 22 14.7712 22 11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3Z" fill="currentColor"/>''',
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
