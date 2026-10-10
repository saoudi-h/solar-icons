// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIgMTJDMiA3LjI4NTk1IDIgNC45Mjg5MyAzLjQ2NDQ3IDMuNDY0NDdDNC45Mjg5MyAyIDcuMjg1OTUgMiAxMiAyQzE2LjcxNCAyIDE5LjA3MTEgMiAyMC41MzU1IDMuNDY0NDdDMjIgNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyQzIyIDE2LjcxNCAyMiAxOS4wNzExIDIwLjUzNTUgMjAuNTM1NUMxOS4wNzExIDIyIDE2LjcxNCAyMiAxMiAyMkM3LjI4NTk1IDIyIDQuOTI4OTMgMjIgMy40NjQ0NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIuNzUgMi4wMDA5OFYxMS4yNDUxSDIxLjk5OUMyMS45OTkzIDExLjQ4OTggMjIgMTEuNzQxNCAyMiAxMkMyMiAxMi4yNTUyIDIxLjk5OTMgMTIuNTAzNSAyMS45OTkgMTIuNzQ1MUgxMi43NVYyMS45OThDMTIuNTA2OCAyMS45OTgzIDEyLjI1NjkgMjIgMTIgMjJDMTEuNzQzMSAyMiAxMS40OTMyIDIxLjk5ODMgMTEuMjUgMjEuOTk4VjEyLjc0NTFIMi4wMDA5OEMyLjAwMDc0IDEyLjUwMzUgMiAxMi4yNTUyIDIgMTJDMiAxMS43NDE0IDIuMDAwNzMgMTEuNDg5OCAyLjAwMDk4IDExLjI0NTFIMTEuMjVWMi4wMDA5OEMxMS40OTMyIDIuMDAwNzQgMTEuNzQzMSAyIDEyIDJDMTIuMjU2OSAyIDEyLjUwNjggMi4wMDA3NCAxMi43NSAyLjAwMDk4WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class Grid2x2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `grid-2x2` icon in the boldDuotone style.
  const Grid2x2BoldDuotoneIcon({
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
    name: 'grid-2x2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 2.00098V11.2451H21.999C21.9993 11.4898 22 11.7414 22 12C22 12.2552 21.9993 12.5035 21.999 12.7451H12.75V21.998C12.5068 21.9983 12.2569 22 12 22C11.7431 22 11.4932 21.9983 11.25 21.998V12.7451H2.00098C2.00074 12.5035 2 12.2552 2 12C2 11.7414 2.00073 11.4898 2.00098 11.2451H11.25V2.00098C11.4932 2.00074 11.7431 2 12 2C12.2569 2 12.5068 2.00074 12.75 2.00098Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" fill="currentColor"/>''',
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
