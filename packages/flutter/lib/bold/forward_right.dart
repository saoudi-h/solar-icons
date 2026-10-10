// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `forward-right` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEzLjk1NTEgNS4xODM0MUwxOC45MzI5IDkuNjA4MTVDMTkuODYzNSAxMC40MzUzIDIwLjMyODggMTAuODQ4OSAyMC41MDAyIDExLjMzNzNDMjAuNjUwOCAxMS43NjYyIDIwLjY1MDggMTIuMjMzNSAyMC41MDAyIDEyLjY2MjRDMjAuMzI4OCAxMy4xNTA4IDE5Ljg2MzUgMTMuNTY0NCAxOC45MzI5IDE0LjM5MTZMMTMuOTU1MSAxOC44MTYzQzEzLjUzMjggMTkuMTkxNyAxMy4zMjE2IDE5LjM3OTQgMTMuMTQyMyAxOS4zODYxQzEyLjk4NjUgMTkuMzkxOSAxMi44MzY5IDE5LjMyNDcgMTIuNzM3NyAxOS4yMDQ0QzEyLjYyMzYgMTkuMDY1OSAxMi42MjM2IDE4Ljc4MzQgMTIuNjIzNiAxOC4yMTg0VjE1LjQyODRDMTAuMTk1NSAxNS40Mjg0IDcuNjMwOTMgMTYuMjA4MyA1Ljc1ODMxIDE3LjU5MjZDNC43ODM0MiAxOC4zMTMzIDQuMjk1OTUgMTguNjczNyA0LjExMDI5IDE4LjY1OTVDMy45MjkzMiAxOC42NDU2IDMuODE0NDYgMTguNTc1IDMuNzIwNTYgMTguNDE5NkMzLjYyNDIzIDE4LjI2MDMgMy43MDkzMiAxNy43NjI0IDMuODc5NDkgMTYuNzY2NkM0Ljk4NDQ2IDEwLjMwMDQgOS40MzQ0MyA4LjU3MTI5IDEyLjYyMzYgOC41NzEyOVY1Ljc4MTM0QzEyLjYyMzYgNS4yMTYzMiAxMi42MjM2IDQuOTMzODEgMTIuNzM3NyA0Ljc5NTMxQzEyLjgzNjkgNC42NzQ5OCAxMi45ODY1IDQuNjA3OCAxMy4xNDIzIDQuNjEzNjNDMTMuMzIxNiA0LjYyMDM0IDEzLjUzMjggNC44MDgwMyAxMy45NTUxIDUuMTgzNDFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ForwardRightBoldIcon extends StatelessWidget {
  /// Creates the `forward-right` icon in the bold style.
  const ForwardRightBoldIcon({
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
    name: 'forward-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M13.9551 5.18341L18.9329 9.60815C19.8635 10.4353 20.3288 10.8489 20.5002 11.3373C20.6508 11.7662 20.6508 12.2335 20.5002 12.6624C20.3288 13.1508 19.8635 13.5644 18.9329 14.3916L13.9551 18.8163C13.5328 19.1917 13.3216 19.3794 13.1423 19.3861C12.9865 19.3919 12.8369 19.3247 12.7377 19.2044C12.6236 19.0659 12.6236 18.7834 12.6236 18.2184V15.4284C10.1955 15.4284 7.63093 16.2083 5.75831 17.5926C4.78342 18.3133 4.29595 18.6737 4.11029 18.6595C3.92932 18.6456 3.81446 18.575 3.72056 18.4196C3.62423 18.2603 3.70932 17.7624 3.87949 16.7666C4.98446 10.3004 9.43443 8.57129 12.6236 8.57129V5.78134C12.6236 5.21632 12.6236 4.93381 12.7377 4.79531C12.8369 4.67498 12.9865 4.6078 13.1423 4.61363C13.3216 4.62034 13.5328 4.80803 13.9551 5.18341Z" fill="currentColor"/>''',
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
