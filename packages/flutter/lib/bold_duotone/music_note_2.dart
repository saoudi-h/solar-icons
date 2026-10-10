// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05IDEzLjI1QzExLjYyMzQgMTMuMjUgMTMuNzUgMTUuMzc2NiAxMy43NSAxOEMxMy43NSAyMC42MjM0IDExLjYyMzQgMjIuNzUgOSAyMi43NUM2LjM3NjY1IDIyLjc1IDQuMjUgMjAuNjIzNCA0LjI1IDE4QzQuMjUgMTUuMzc2NiA2LjM3NjY1IDEzLjI1IDkgMTMuMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMyAxLjI1QzEzLjQxNDIgMS4yNSAxMy43NSAxLjU4NTc5IDEzLjc1IDJDMTMuNzUgNC44OTk1IDE2LjEwMDUgNy4yNSAxOSA3LjI1QzE5LjQxNDIgNy4yNSAxOS43NSA3LjU4NTc5IDE5Ljc1IDhDMTkuNzUgOC40MTQyMSAxOS40MTQyIDguNzUgMTkgOC43NUMxNS4yNzIxIDguNzUgMTIuMjUgNS43Mjc5MiAxMi4yNSAyQzEyLjI1IDEuNTg1NzkgMTIuNTg1OCAxLjI1IDEzIDEuMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyLjI1IDE0LjUzNTlWMkMxMi4yNSAzLjYwNzQ3IDEyLjgxMTkgNS4wODM3MSAxMy43NSA2LjI0M1YxOEMxMy43NSAxNi42MzM5IDEzLjE3MzMgMTUuNDAyNCAxMi4yNSAxNC41MzU5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MusicNote2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `music-note-2` icon in the boldDuotone style.
  const MusicNote2BoldDuotoneIcon({
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
    name: 'music-note-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9 13.25C11.6234 13.25 13.75 15.3766 13.75 18C13.75 20.6234 11.6234 22.75 9 22.75C6.37665 22.75 4.25 20.6234 4.25 18C4.25 15.3766 6.37665 13.25 9 13.25Z" fill="currentColor"/>
<path d="M13 1.25C13.4142 1.25 13.75 1.58579 13.75 2C13.75 4.8995 16.1005 7.25 19 7.25C19.4142 7.25 19.75 7.58579 19.75 8C19.75 8.41421 19.4142 8.75 19 8.75C15.2721 8.75 12.25 5.72792 12.25 2C12.25 1.58579 12.5858 1.25 13 1.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.25 14.5359V2C12.25 3.60747 12.8119 5.08371 13.75 6.243V18C13.75 16.6339 13.1733 15.4024 12.25 14.5359Z" fill="currentColor"/>''',
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
