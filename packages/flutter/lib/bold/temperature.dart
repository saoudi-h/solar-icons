// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTcuNSAxNi41QzE3LjUgMTkuNTM3NiAxNS4wMzc2IDIyIDEyIDIyQzguOTYyNDMgMjIgNi41IDE5LjUzNzYgNi41IDE2LjVDNi41IDE0Ljc2MzYgNy4zMDQ2NSAxMy4yMTUyIDguNTYxNDEgMTIuMjA3MkM4LjgyNTA1IDExLjk5NTcgOSAxMS42ODU3IDkgMTEuMzQ3N1Y1QzkgMy4zNDMxNSAxMC4zNDMxIDIgMTIgMkMxMy42NTY5IDIgMTUgMy4zNDMxNSAxNSA1VjExLjM0NzdDMTUgMTEuNjg1NyAxNS4xNzQ5IDExLjk5NTcgMTUuNDM4NiAxMi4yMDcyQzE2LjY5NTQgMTMuMjE1MiAxNy41IDE0Ljc2MzYgMTcuNSAxNi41Wk0xMiA0LjI1QzEyLjQxNDIgNC4yNSAxMi43NSA0LjU4NTc5IDEyLjc1IDVWMTMuMzgwNEMxMi43NSAxMy44MTcyIDEzLjA0NzMgMTQuMTg3NiAxMy40MDggMTQuNDMzOUMxNC4wNjczIDE0Ljg4NDEgMTQuNSAxNS42NDE1IDE0LjUgMTYuNUMxNC41IDE3Ljg4MDcgMTMuMzgwNyAxOSAxMiAxOUMxMC42MTkzIDE5IDkuNSAxNy44ODA3IDkuNSAxNi41QzkuNSAxNS42NDE1IDkuOTMyNzMgMTQuODg0MSAxMC41OTIgMTQuNDMzOUMxMC45NTI3IDE0LjE4NzYgMTEuMjUgMTMuODE3MiAxMS4yNSAxMy4zODA0VjVDMTEuMjUgNC41ODU3OSAxMS41ODU4IDQuMjUgMTIgNC4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class TemperatureBoldIcon extends StatelessWidget {
  /// Creates the `temperature` icon in the bold style.
  const TemperatureBoldIcon({
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
    name: 'temperature',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5 16.5C17.5 19.5376 15.0376 22 12 22C8.96243 22 6.5 19.5376 6.5 16.5C6.5 14.7636 7.30465 13.2152 8.56141 12.2072C8.82505 11.9957 9 11.6857 9 11.3477V5C9 3.34315 10.3431 2 12 2C13.6569 2 15 3.34315 15 5V11.3477C15 11.6857 15.1749 11.9957 15.4386 12.2072C16.6954 13.2152 17.5 14.7636 17.5 16.5ZM12 4.25C12.4142 4.25 12.75 4.58579 12.75 5V13.3804C12.75 13.8172 13.0473 14.1876 13.408 14.4339C14.0673 14.8841 14.5 15.6415 14.5 16.5C14.5 17.8807 13.3807 19 12 19C10.6193 19 9.5 17.8807 9.5 16.5C9.5 15.6415 9.93273 14.8841 10.592 14.4339C10.9527 14.1876 11.25 13.8172 11.25 13.3804V5C11.25 4.58579 11.5858 4.25 12 4.25Z" fill="currentColor"/>''',
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
