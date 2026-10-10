// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTIiIGN5PSI5IiByPSI3IiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik03LjU0NTcyIDE0LjQwMDFMNy4zNTExMSAxNUw2LjcxNDI0IDE3LjMyMjlDNi4wODU5IDE5LjYxNDggNS43NzE3MyAyMC43NjA3IDYuMTkwOTcgMjEuMzg4QzYuMzM3OSAyMS42MDc5IDYuNTM1IDIxLjc4NDMgNi43NjM3MiAyMS45MDA4QzcuNDE2MzQgMjIuMjMzMSA4LjQyNCAyMS43MDggMTAuNDM5MyAyMC42NTc5QzExLjEwOTkgMjAuMzA4NSAxMS40NDUyIDIwLjEzMzggMTEuODAxNCAyMC4wOTU4QzExLjkzMzUgMjAuMDgxOCAxMi4wNjY1IDIwLjA4MTggMTIuMTk4NiAyMC4wOTU4QzEyLjU1NDggMjAuMTMzOCAxMi44OTAxIDIwLjMwODUgMTMuNTYwNyAyMC42NTc5QzE1LjU3NiAyMS43MDggMTYuNTgzNyAyMi4yMzMxIDE3LjIzNjMgMjEuOTAwOEMxNy40NjUgMjEuNzg0MyAxNy42NjIxIDIxLjYwNzkgMTcuODA5IDIxLjM4OEMxOC4yMjgzIDIwLjc2MDcgMTcuOTE0MSAxOS42MTQ4IDE3LjI4NTggMTcuMzIyOUwxNi42NDg5IDE1TDE2LjQ1NDMgMTQuNDAwMUMxNS4yNDQgMTUuMzk5NSAxMy42OTIxIDE2IDEyIDE2QzEwLjMwNzkgMTYgOC43NTU5NyAxNS4zOTk1IDcuNTQ1NzIgMTQuNDAwMVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MedalRibbonBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `medal-ribbon` icon in the boldDuotone style.
  const MedalRibbonBoldDuotoneIcon({
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
    name: 'medal-ribbon',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7.54572 14.4001L7.35111 15L6.71424 17.3229C6.0859 19.6148 5.77173 20.7607 6.19097 21.388C6.3379 21.6079 6.535 21.7843 6.76372 21.9008C7.41634 22.2331 8.424 21.708 10.4393 20.6579C11.1099 20.3085 11.4452 20.1338 11.8014 20.0958C11.9335 20.0818 12.0665 20.0818 12.1986 20.0958C12.5548 20.1338 12.8901 20.3085 13.5607 20.6579C15.576 21.708 16.5837 22.2331 17.2363 21.9008C17.465 21.7843 17.6621 21.6079 17.809 21.388C18.2283 20.7607 17.9141 19.6148 17.2858 17.3229L16.6489 15L16.4543 14.4001C15.244 15.3995 13.6921 16 12 16C10.3079 16 8.75597 15.3995 7.54572 14.4001Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="9" r="7" fill="currentColor"/>''',
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
