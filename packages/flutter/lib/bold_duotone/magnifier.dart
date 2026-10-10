// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTEuNSIgY3k9IjExLjUiIHI9IjkuNSIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjEuNzg5MSAyMC43NjU2QzIyLjA3MTMgMjEuMDQ3OSAyMi4wNzExIDIxLjUwNTggMjEuNzg5MSAyMS43ODgxQzIxLjUwNjggMjIuMDcwNCAyMS4wNDg5IDIyLjA3MDQgMjAuNzY2NiAyMS43ODgxTDE3LjY4NTUgMTguNzA3QzE4LjA1MTYgMTguMzkyNiAxOC4zOTI2IDE4LjA1MDYgMTguNzA3IDE3LjY4NDZMMjEuNzg5MSAyMC43NjU2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MagnifierBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `magnifier` icon in the boldDuotone style.
  const MagnifierBoldDuotoneIcon({
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
    name: 'magnifier',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.7891 20.7656C22.0713 21.0479 22.0711 21.5058 21.7891 21.7881C21.5068 22.0704 21.0489 22.0704 20.7666 21.7881L17.6855 18.707C18.0516 18.3926 18.3926 18.0506 18.707 17.6846L21.7891 20.7656Z" fill="currentColor"/>''',
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
