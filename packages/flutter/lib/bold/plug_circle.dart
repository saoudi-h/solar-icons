// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAyQzYuNDc3MTUgMiAyIDYuNDgzMzYgMiAxMi4wMTM5QzIgMTcuMjkxOCA2LjA3NzU5IDIxLjYxNjEgMTEuMjUwMyAyMkwxMS4yNDk5IDE1LjkzODdDOS42NzczNyAxNS41OTQ5IDguNSAxNC4xOTI0IDguNSAxMi41MTQ2VjEyLjAxMzlDOC41IDExLjQ2MDggOC45NDc3MiAxMS4wMTI1IDkuNSAxMS4wMTI1SDkuNzVWOS4wMDk3QzkuNzUgOC41OTQ5MSAxMC4wODU4IDguMjU4NjYgMTAuNSA4LjI1ODY2QzEwLjkxNDIgOC4yNTg2NiAxMS4yNSA4LjU5NDkxIDExLjI1IDkuMDA5N1YxMS4wMTI1SDEyLjc1VjkuMDA5N0MxMi43NSA4LjU5NDkxIDEzLjA4NTggOC4yNTg2NiAxMy41IDguMjU4NjZDMTMuOTE0MiA4LjI1ODY2IDE0LjI1IDguNTk0OTEgMTQuMjUgOS4wMDk3VjExLjAxMjVIMTQuNUMxNS4wNTIzIDExLjAxMjUgMTUuNSAxMS40NjA4IDE1LjUgMTIuMDEzOVYxMi41MTQ2QzE1LjUgMTQuMTkyNSAxNC4zMjI2IDE1LjU5NSAxMi43NDk5IDE1LjkzODhMMTIuNzQ5NyAyMkMxNy45MjI0IDIxLjYxNjEgMjIgMTcuMjkxOCAyMiAxMi4wMTM5QzIyIDYuNDgzMzYgMTcuNTIyOCAyIDEyIDJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class PlugCircleBoldIcon extends StatelessWidget {
  /// Creates the `plug-circle` icon in the bold style.
  const PlugCircleBoldIcon({
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
    name: 'plug-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 2C6.47715 2 2 6.48336 2 12.0139C2 17.2918 6.07759 21.6161 11.2503 22L11.2499 15.9387C9.67737 15.5949 8.5 14.1924 8.5 12.5146V12.0139C8.5 11.4608 8.94772 11.0125 9.5 11.0125H9.75V9.0097C9.75 8.59491 10.0858 8.25866 10.5 8.25866C10.9142 8.25866 11.25 8.59491 11.25 9.0097V11.0125H12.75V9.0097C12.75 8.59491 13.0858 8.25866 13.5 8.25866C13.9142 8.25866 14.25 8.59491 14.25 9.0097V11.0125H14.5C15.0523 11.0125 15.5 11.4608 15.5 12.0139V12.5146C15.5 14.1925 14.3226 15.595 12.7499 15.9388L12.7497 22C17.9224 21.6161 22 17.2918 22 12.0139C22 6.48336 17.5228 2 12 2Z" fill="currentColor"/>''',
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
