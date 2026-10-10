// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDE1Ljk5OVYxMk0xMiAxMkMxNS4yOTk4IDEyIDE2Ljk0OTcgMTIgMTcuOTc0OSAxMS40MTQyQzE5IDEwLjgyODQgMTkgOS44ODU2MiAxOSA4TTEyIDEyQzguNzAwMTcgMTIgNy4wNTAyNSAxMiA2LjAyNTEzIDExLjQxNDJDNSAxMC44Mjg0IDUgOS44ODU2MiA1IDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCA1QzggNi42NTY4NSA2LjY1Njg1IDggNSA4QzMuMzQzMTUgOCAyIDYuNjU2ODUgMiA1QzIgMy4zNDMxNSAzLjM0MzE1IDIgNSAyQzYuNjU2ODUgMiA4IDMuMzQzMTUgOCA1WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiA1QzIyIDYuNjU2ODYgMjAuNjU2OSA4IDE5IDhDMTcuMzQzMSA4IDE2IDYuNjU2ODYgMTYgNUMxNiAzLjM0MzE1IDE3LjM0MzEgMiAxOSAyQzIwLjY1NjkgMiAyMiAzLjM0MzE1IDIyIDVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDE5LjAwMzlDMTUgMjAuNjYwOCAxMy42NTY5IDIyLjAwMzkgMTIgMjIuMDAzOUMxMC4zNDMxIDIyLjAwMzkgOSAyMC42NjA4IDkgMTkuMDAzOUM5IDE3LjM0NzEgMTAuMzQzMSAxNi4wMDM5IDEyIDE2LjAwMzlDMTMuNjU2OSAxNi4wMDM5IDE1IDE3LjM0NzEgMTUgMTkuMDAzOVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class GitForkLineDuotoneIcon extends StatelessWidget {
  /// Creates the `git-fork` icon in the lineDuotone style.
  const GitForkLineDuotoneIcon({
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
    name: 'git-fork',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 5C8 6.65685 6.65685 8 5 8C3.34315 8 2 6.65685 2 5C2 3.34315 3.34315 2 5 2C6.65685 2 8 3.34315 8 5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 5C22 6.65686 20.6569 8 19 8C17.3431 8 16 6.65686 16 5C16 3.34315 17.3431 2 19 2C20.6569 2 22 3.34315 22 5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 19.0039C15 20.6608 13.6569 22.0039 12 22.0039C10.3431 22.0039 9 20.6608 9 19.0039C9 17.3471 10.3431 16.0039 12 16.0039C13.6569 16.0039 15 17.3471 15 19.0039Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 15.999V12M12 12C15.2998 12 16.9497 12 17.9749 11.4142C19 10.8284 19 9.88562 19 8M12 12C8.70017 12 7.05025 12 6.02513 11.4142C5 10.8284 5 9.88562 5 8" stroke="currentColor" stroke-linecap="round"/>''',
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
