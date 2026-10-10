// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01LjAzMTUgNi45Mzc1MUM0Ljc1NzMxIDQuNzI4NTcgNi4zMDE5MiAyLjY5NzY2IDguNTQyMDcgMi4zMjE2OEw4LjkzOTYzIDIuMjU0OTZDMTAuOTY1MSAxLjkxNTAxIDEzLjAzNDkgMS45MTUwMSAxNS4wNjA0IDIuMjU0OTZMMTUuNDU3OSAyLjMyMTY4QzE3LjY5ODEgMi42OTc2NiAxOS4yNDI3IDQuNzI4NTcgMTguOTY4NSA2LjkzNzUxTDE4Ljk1MDUgNy4wODI3M0MxOC44ODU1IDcuNjA2MyAxOC40MzE1IDggMTcuODkyOCA4SDYuMTA3MTlDNS41Njg0NyA4IDUuMTE0NTIgNy42MDYzIDUuMDQ5NTMgNy4wODI3M0w1LjAzMTUgNi45Mzc1MVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSA4TDYgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUgOEwxNS43NSAxMS41TTE4IDIyTDE2LjUgMTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYuNSAxN0g3LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BarChairBrokenIcon extends StatelessWidget {
  /// Creates the `bar-chair` icon in the broken style.
  const BarChairBrokenIcon({
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
    name: 'bar-chair',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5.0315 6.93751C4.75731 4.72857 6.30192 2.69766 8.54207 2.32168L8.93963 2.25496C10.9651 1.91501 13.0349 1.91501 15.0604 2.25496L15.4579 2.32168C17.6981 2.69766 19.2427 4.72857 18.9685 6.93751L18.9505 7.08273C18.8855 7.6063 18.4315 8 17.8928 8H6.10719C5.56847 8 5.11452 7.6063 5.04953 7.08273L5.0315 6.93751Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 8L6 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 8L15.75 11.5M18 22L16.5 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 17H7.5" stroke="currentColor" stroke-linecap="round"/>''',
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
