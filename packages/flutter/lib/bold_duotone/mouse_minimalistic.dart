// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE5IDE1VjlDMTkgNS4xMzQwMSAxNS44NjYgMiAxMiAyQzguMTM0MDEgMiA1IDUuMTM0MDEgNSA5VjE1QzUgMTguODY2IDguMTM0MDEgMjIgMTIgMjJDMTUuODY2IDIyIDE5IDE4Ljg2NiAxOSAxNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDQuMjVDMTIuNDE0MiA0LjI1IDEyLjc1IDQuNTg1NzkgMTIuNzUgNVY4QzEyLjc1IDguNDE0MjEgMTIuNDE0MiA4Ljc1IDEyIDguNzVDMTEuNTg1OCA4Ljc1IDExLjI1IDguNDE0MjEgMTEuMjUgOFY1QzExLjI1IDQuNTg1NzkgMTEuNTg1OCA0LjI1IDEyIDQuMjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MouseMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `mouse-minimalistic` icon in the boldDuotone style.
  const MouseMinimalisticBoldDuotoneIcon({
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
    name: 'mouse-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 4.25C12.4142 4.25 12.75 4.58579 12.75 5V8C12.75 8.41421 12.4142 8.75 12 8.75C11.5858 8.75 11.25 8.41421 11.25 8V5C11.25 4.58579 11.5858 4.25 12 4.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M19 15V9C19 5.13401 15.866 2 12 2C8.13401 2 5 5.13401 5 9V15C5 18.866 8.13401 22 12 22C15.866 22 19 18.866 19 15Z" fill="currentColor"/>''',
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
