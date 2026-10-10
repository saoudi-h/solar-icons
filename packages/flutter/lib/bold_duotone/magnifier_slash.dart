// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTEuNSIgY3k9IjExLjUiIHI9IjkuNSIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjEuNzg4OSAyMC43NjYzQzIyLjA3MDkgMjEuMDQ4NSAyMi4wNzA5IDIxLjUwNjUgMjEuNzg4OSAyMS43ODg3QzIxLjUwNjcgMjIuMDcwOCAyMS4wNDg4IDIyLjA3MDggMjAuNzY2NSAyMS43ODg3TDE3LjY4NTQgMTguNzA3N0MxOC4wNTE0IDE4LjM5MzMgMTguMzkyNSAxOC4wNTEyIDE4LjcwNjkgMTcuNjg1MkwyMS43ODg5IDIwLjc2NjNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMi43MzcyIDkuMjAxODJDMTMuMDI5OSA4LjkwOTE4IDEzLjUwNDggOC45MDk0IDEzLjc5NzcgOS4yMDE4MkMxNC4wOTA0IDkuNDk0NzMgMTQuMDkwNiA5Ljk3MDUxIDEzLjc5NzcgMTAuMjYzM0wxMC4yNjI2IDEzLjc5ODVDOS45Njk3NSAxNC4wOTEyIDkuNDk0ODkgMTQuMDkxMSA5LjIwMjAyIDEzLjc5ODVDOC45MDkxOCAxMy41MDU3IDguOTA5MjcgMTMuMDMwOSA5LjIwMjAyIDEyLjczOEwxMi43MzcyIDkuMjAxODJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MagnifierSlashBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `magnifier-slash` icon in the boldDuotone style.
  const MagnifierSlashBoldDuotoneIcon({
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
    name: 'magnifier-slash',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.7889 20.7663C22.0709 21.0485 22.0709 21.5065 21.7889 21.7887C21.5067 22.0708 21.0488 22.0708 20.7665 21.7887L17.6854 18.7077C18.0514 18.3933 18.3925 18.0512 18.7069 17.6852L21.7889 20.7663Z" fill="currentColor"/>
<path d="M12.7372 9.20182C13.0299 8.90918 13.5048 8.9094 13.7977 9.20182C14.0904 9.49473 14.0906 9.97051 13.7977 10.2633L10.2626 13.7985C9.96975 14.0912 9.49489 14.0911 9.20202 13.7985C8.90918 13.5057 8.90927 13.0309 9.20202 12.738L12.7372 9.20182Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" fill="currentColor"/>''',
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
