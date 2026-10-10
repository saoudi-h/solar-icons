// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNC41IDExLjVMOS41MDAwNCAxNi41TTkuNTAwMDIgMTEuNUwxNC41IDE2LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjAuNSA3VjEzQzIwLjUgMTYuNzcxMiAyMC41IDE4LjY1NjkgMTkuMzI4NCAxOS44Mjg0QzE4LjE1NjkgMjEgMTYuMjcxMiAyMSAxMi41IDIxSDExLjVNMy41IDdWMTNDMy41IDE2Ljc3MTIgMy41IDE4LjY1NjkgNC42NzE1NyAxOS44Mjg0QzUuMzc2MzQgMjAuNTMzMiA2LjMzOTUgMjAuODE0IDcuODE2MDggMjAuOTI1OSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAzSDRDMy4wNTcxOSAzIDIuNTg1NzkgMyAyLjI5Mjg5IDMuMjkyODlDMiAzLjU4NTc5IDIgNC4wNTcxOSAyIDVDMiA1Ljk0MjgxIDIgNi40MTQyMSAyLjI5Mjg5IDYuNzA3MTFDMi41ODU3OSA3IDMuMDU3MTkgNyA0IDdIMjBDMjAuOTQyOCA3IDIxLjQxNDIgNyAyMS43MDcxIDYuNzA3MTFDMjIgNi40MTQyMSAyMiA1Ljk0MjgxIDIyIDVDMjIgNC4wNTcxOSAyMiAzLjU4NTc5IDIxLjcwNzEgMy4yOTI4OUMyMS40MTQyIDMgMjAuOTQyOCAzIDIwIDNIMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class ArchiveCloseBrokenIcon extends StatelessWidget {
  /// Creates the `archive-close` icon in the broken style.
  const ArchiveCloseBrokenIcon({
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
    name: 'archive-close',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14.5 11.5L9.50004 16.5M9.50002 11.5L14.5 16.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.5 7V13C20.5 16.7712 20.5 18.6569 19.3284 19.8284C18.1569 21 16.2712 21 12.5 21H11.5M3.5 7V13C3.5 16.7712 3.5 18.6569 4.67157 19.8284C5.37634 20.5332 6.3395 20.814 7.81608 20.9259" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 3H4C3.05719 3 2.58579 3 2.29289 3.29289C2 3.58579 2 4.05719 2 5C2 5.94281 2 6.41421 2.29289 6.70711C2.58579 7 3.05719 7 4 7H20C20.9428 7 21.4142 7 21.7071 6.70711C22 6.41421 22 5.94281 22 5C22 4.05719 22 3.58579 21.7071 3.29289C21.4142 3 20.9428 3 20 3H16" stroke="currentColor" stroke-linecap="round"/>''',
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
