// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNSAxMi4yNUMxNS40MTQyIDEyLjI1IDE1Ljc1IDEyLjU4NTggMTUuNzUgMTNDMTUuNzUgMTMuNDE0MiAxNS40MTQyIDEzLjc1IDE1IDEzLjc1SDlDOC41ODU3OSAxMy43NSA4LjI1IDEzLjQxNDIgOC4yNSAxM0M4LjI1IDEyLjU4NTggOC41ODU3OSAxMi4yNSA5IDEyLjI1SDE1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTQuNSAyQzE1LjMyODQgMiAxNiAyLjY3MTU3IDE2IDMuNVY0LjVDMTYgNS4zMjg0MyAxNS4zMjg0IDYgMTQuNSA2SDkuNUM4LjY3MTU3IDYgOCA1LjMyODQzIDggNC41VjMuNUM4IDIuNjcxNTcgOC42NzE1NyAyIDkuNSAySDE0LjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIxIDE1Ljk5ODNWOS45OTgyNkMyMSA3LjE2OTgzIDIxIDUuNzU1NjIgMjAuMTIxMyA0Ljg3Njk0QzE5LjM1MjkgNC4xMDg1NiAxOC4xNzUgNC4wMTIxMSAxNiA0SDhDNS44MjQ5NyA0LjAxMjExIDQuNjQ3MDYgNC4xMDg1NiAzLjg3ODY4IDQuODc2OTRDMyA1Ljc1NTYyIDMgNy4xNjk4MyAzIDkuOTk4MjZWMTUuOTk4M0MzIDE4LjgyNjcgMyAyMC4yNDA5IDMuODc4NjggMjEuMTE5NkM0Ljc1NzM2IDIxLjk5ODMgNi4xNzE1NyAyMS45OTgzIDkgMjEuOTk4M0gxNUMxNy44Mjg0IDIxLjk5ODMgMTkuMjQyNiAyMS45OTgzIDIwLjEyMTMgMjEuMTE5NkMyMSAyMC4yNDA5IDIxIDE4LjgyNjcgMjEgMTUuOTk4M1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ClipboardMinusBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `clipboard-minus` icon in the boldDuotone style.
  const ClipboardMinusBoldDuotoneIcon({
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
    name: 'clipboard-minus',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15 12.25C15.4142 12.25 15.75 12.5858 15.75 13C15.75 13.4142 15.4142 13.75 15 13.75H9C8.58579 13.75 8.25 13.4142 8.25 13C8.25 12.5858 8.58579 12.25 9 12.25H15Z" fill="currentColor"/>
<path d="M14.5 2C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5C8 2.67157 8.67157 2 9.5 2H14.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 15.9983V9.99826C21 7.16983 21 5.75562 20.1213 4.87694C19.3529 4.10856 18.175 4.01211 16 4H8C5.82497 4.01211 4.64706 4.10856 3.87868 4.87694C3 5.75562 3 7.16983 3 9.99826V15.9983C3 18.8267 3 20.2409 3.87868 21.1196C4.75736 21.9983 6.17157 21.9983 9 21.9983H15C17.8284 21.9983 19.2426 21.9983 20.1213 21.1196C21 20.2409 21 18.8267 21 15.9983Z" fill="currentColor"/>''',
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
