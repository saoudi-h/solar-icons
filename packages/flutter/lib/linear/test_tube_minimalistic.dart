// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik02LjgwMDggMTEuNzgzNEw4LjA3NTAyIDExLjkyNTZDOS4wOTc3MiAxMi4wMzk4IDkuOTA1MDYgMTIuODUwNyAxMC4wMTg3IDEzLjg3NzlDMTAuMTA2MiAxNC42Njg5IDEwLjYxMDQgMTUuMzUxNSAxMS4zMzg3IDE1LjY2NUwxMyAxNi4zNTQ3TTEzIDE2LjM1NDdMMjAuMjM4NyA5LjA4Mzk4TDE0Ljg2MzUgMy42ODUwNEw0LjExMzIzIDE0LjQ4MjlDMi42Mjg5MiAxNS45NzM4IDIuNjI4OTIgMTguMzkxIDQuMTEzMjMgMTkuODgxOEM1LjU5NzU0IDIxLjM3MjcgOC4wMDQwNyAyMS4zNzI3IDkuNDg4MzggMTkuODgxOEwxMyAxNi4zNTQ3Wk0yMSA5Ljg0ODY3TDE0LjE4MTUgMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class TestTubeMinimalisticLinearIcon extends StatelessWidget {
  /// Creates the `test-tube-minimalistic` icon in the linear style.
  const TestTubeMinimalisticLinearIcon({
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
    name: 'test-tube-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6.8008 11.7834L8.07502 11.9256C9.09772 12.0398 9.90506 12.8507 10.0187 13.8779C10.1062 14.6689 10.6104 15.3515 11.3387 15.665L13 16.3547M13 16.3547L20.2387 9.08398L14.8635 3.68504L4.11323 14.4829C2.62892 15.9738 2.62892 18.391 4.11323 19.8818C5.59754 21.3727 8.00407 21.3727 9.48838 19.8818L13 16.3547ZM21 9.84867L14.1815 3" stroke="currentColor" stroke-linecap="round"/>''',
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
