// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01LjAzMzIgMTAuNzgzMkM2LjEzODUzIDEzLjU0NzIgOC44NDEzOSAxNS41IDEyIDE1LjVDMTIuNjc1NSAxNS41IDEzLjMzMDUgMTUuNDEwNiAxMy45NTMxIDE1LjI0MzJDMTMuOTg0MyAxNS40OTEgMTQgMTUuNzQzNyAxNCAxNkMxNCAxOS4zMTM3IDExLjMxMzcgMjIgOCAyMkM0LjY4NjMgMjIgMi4wMDAwMSAxOS4zMTM3IDIgMTZDMiAxMy43NjU0IDMuMjIxNDEgMTEuODE1OCA1LjAzMzIgMTAuNzgzMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE4Ljk2NjggMTAuNzgzMkMyMC43Nzg2IDExLjgxNTggMjIgMTMuNzY1NCAyMiAxNkMyMiAxOS4zMTM3IDE5LjMxMzcgMjIgMTYgMjJDMTUuMDE0NyAyMiAxNC4wODQ5IDIxLjc2MjYgMTMuMjY0NiAyMS4zNDE4QzE0LjY0NDYgMTkuOTgxNyAxNS41IDE4LjA5MDYgMTUuNSAxNkMxNS41IDE1LjU1NDQgMTUuNDYxMiAxNS4xMTc2IDE1LjM4NjcgMTQuNjkzNEMxNy4wMDYyIDEzLjg3MjMgMTguMjg3OSAxMi40ODA4IDE4Ljk2NjggMTAuNzgzMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDJDMTUuMzEzNyAyIDE4IDQuNjg2MjkgMTggOEMxOCAxMS4zMTM3IDE1LjMxMzcgMTQgMTIgMTRDOC42ODYyOSAxNCA2IDExLjMxMzcgNiA4QzYgNC42ODYyOSA4LjY4NjI5IDIgMTIgMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class FiltersBoldIcon extends StatelessWidget {
  /// Creates the `filters` icon in the bold style.
  const FiltersBoldIcon({
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
    name: 'filters',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.0332 10.7832C6.13853 13.5472 8.84139 15.5 12 15.5C12.6755 15.5 13.3305 15.4106 13.9531 15.2432C13.9843 15.491 14 15.7437 14 16C14 19.3137 11.3137 22 8 22C4.6863 22 2.00001 19.3137 2 16C2 13.7654 3.22141 11.8158 5.0332 10.7832Z" fill="currentColor"/>
<path d="M18.9668 10.7832C20.7786 11.8158 22 13.7654 22 16C22 19.3137 19.3137 22 16 22C15.0147 22 14.0849 21.7626 13.2646 21.3418C14.6446 19.9817 15.5 18.0906 15.5 16C15.5 15.5544 15.4612 15.1176 15.3867 14.6934C17.0062 13.8723 18.2879 12.4808 18.9668 10.7832Z" fill="currentColor"/>
<path d="M12 2C15.3137 2 18 4.68629 18 8C18 11.3137 15.3137 14 12 14C8.68629 14 6 11.3137 6 8C6 4.68629 8.68629 2 12 2Z" fill="currentColor"/>''',
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
