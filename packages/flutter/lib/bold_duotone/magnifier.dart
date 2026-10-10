// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `magnifier` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxMS41IiBjeT0iMTEuNSIgcj0iOS41IiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMS43ODkxIDIwLjc2NTZDMjIuMDcxMyAyMS4wNDc5IDIyLjA3MTEgMjEuNTA1OCAyMS43ODkxIDIxLjc4ODFDMjEuNTA2OCAyMi4wNzA0IDIxLjA0ODkgMjIuMDcwNCAyMC43NjY2IDIxLjc4ODFMMTcuNjg1NSAxOC43MDdDMTguMDUxNiAxOC4zOTI2IDE4LjM5MjYgMTguMDUwNiAxOC43MDcgMTcuNjg0NkwyMS43ODkxIDIwLjc2NTZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
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
