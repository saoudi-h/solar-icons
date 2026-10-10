// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMiAxOS43MjNWMTIuMzAwNkMyMiA2LjYxMTczIDE3LjUyMjggMiAxMiAyQzYuNDc3MTUgMiAyIDYuNjExNzMgMiAxMi4zMDA2VjE5LjcyM0MyIDIxLjA0NTMgMy4zNTA5OCAyMS45MDU0IDQuNDk5MiAyMS4zMTRDNS40MjcyNiAyMC44MzYgNi41MzI4IDIwLjkwNjkgNy4zOTYxNCAyMS40OTk4QzguMzY3MzYgMjIuMTY2NyA5LjYzMjY0IDIyLjE2NjcgMTAuNjAzOSAyMS40OTk4TDEwLjk1NjUgMjEuMjU3NkMxMS41ODg0IDIwLjgyMzcgMTIuNDExNiAyMC44MjM3IDEzLjA0MzUgMjEuMjU3NkwxMy4zOTYxIDIxLjQ5OThDMTQuMzY3NCAyMi4xNjY3IDE1LjYzMjYgMjIuMTY2NyAxNi42MDM5IDIxLjQ5OThDMTcuNDY3MiAyMC45MDY5IDE4LjU3MjcgMjAuODM2IDE5LjUwMDggMjEuMzE0QzIwLjY0OSAyMS45MDU0IDIyIDIxLjA0NTMgMjIgMTkuNzIzWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNS41IDEwLjVDMTUuNSAxMS4wNTIzIDE1LjI3NjEgMTEuNSAxNSAxMS41QzE0LjcyMzkgMTEuNSAxNC41IDExLjA1MjMgMTQuNSAxMC41QzE0LjUgOS45NDc3MiAxNC43MjM5IDkuNSAxNSA5LjVDMTUuMjc2MSA5LjUgMTUuNSA5Ljk0NzcyIDE1LjUgMTAuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxlbGxpcHNlIGN4PSI5IiBjeT0iMTAuNSIgcng9IjAuNSIgcnk9IjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class GhostLinearIcon extends StatelessWidget {
  /// Creates the `ghost` icon in the linear style.
  const GhostLinearIcon({
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
    name: 'ghost',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 19.723V12.3006C22 6.61173 17.5228 2 12 2C6.47715 2 2 6.61173 2 12.3006V19.723C2 21.0453 3.35098 21.9054 4.4992 21.314C5.42726 20.836 6.5328 20.9069 7.39614 21.4998C8.36736 22.1667 9.63264 22.1667 10.6039 21.4998L10.9565 21.2576C11.5884 20.8237 12.4116 20.8237 13.0435 21.2576L13.3961 21.4998C14.3674 22.1667 15.6326 22.1667 16.6039 21.4998C17.4672 20.9069 18.5727 20.836 19.5008 21.314C20.649 21.9054 22 21.0453 22 19.723Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
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
