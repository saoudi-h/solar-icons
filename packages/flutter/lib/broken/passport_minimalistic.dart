// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAxN0MxMy42NTY5IDE3IDE1IDE1LjY1NjkgMTUgMTRDMTUgMTIuMzQzMSAxMy42NTY5IDExIDEyIDExQzEwLjM0MzEgMTEgOSAxMi4zNDMxIDkgMTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTggNi4wMDAwMkg1LjA3MTA3QzQuNDc5NTMgNi4wMDAwMiA0IDUuNTIwNDkgNCA0LjkyODk1QzQgNC4zOTU5NCA0LjM5MTkzIDMuOTQ0MDMgNC45MTk1OSAzLjg2ODY1TDE1LjcxNzIgMi4zMjYxNEMxNi45MjIgMi4xNTQwMiAxOCAzLjA4ODk0IDE4IDQuMzA2MDRWNi4wMDAwMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNNCA2VjE5QzQgMjAuNjU2OSA1LjM0MzE1IDIyIDcgMjJIMTdDMTguNjU2OSAyMiAyMCAyMC42NTY5IDIwIDE5VjE0TTQgNlY1TTQgNkgxN0MxOC42NTY5IDYgMjAgNy4zNDMxNSAyMCA5VjEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class PassportMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `passport-minimalistic` icon in the broken style.
  const PassportMinimalisticBrokenIcon({
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
    name: 'passport-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 17C13.6569 17 15 15.6569 15 14C15 12.3431 13.6569 11 12 11C10.3431 11 9 12.3431 9 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 6.00002H5.07107C4.47953 6.00002 4 5.52049 4 4.92895C4 4.39594 4.39193 3.94403 4.91959 3.86865L15.7172 2.32614C16.922 2.15402 18 3.08894 18 4.30604V6.00002Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4 6V19C4 20.6569 5.34315 22 7 22H17C18.6569 22 20 20.6569 20 19V14M4 6V5M4 6H17C18.6569 6 20 7.34315 20 9V10" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
