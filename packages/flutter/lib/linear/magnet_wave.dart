// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNC40NDQ0IDNIMTYuNUMxNy4zMjg0IDMgMTggMy42NzE1NyAxOCA0LjVWNkMxOCA2LjgyODQzIDE3LjMyODQgNy41IDE2LjUgNy41SDE0LjQ0NDRNMTQuNDQ0NCAzSDExQzYuMDI5NDMgMyAyIDcuMDI5NDQgMiAxMkMyIDE2Ljk3MDYgNi4wMjk0NCAyMSAxMSAyMUgxNC40NDQ0TTE0LjQ0NDQgM1Y3LjVNMTQuNDQ0NCA3LjVIMTAuOTQ0NEM4LjQ1OTE2IDcuNSA2LjQ0NDQ0IDkuNTE0NzIgNi40NDQ0NCAxMkM2LjQ0NDQ0IDE0LjQ4NTMgOC40NTkxNiAxNi41IDEwLjk0NDQgMTYuNUgxNC40NDQ0TTE0LjQ0NDQgMTYuNUgxNi41QzE3LjMyODQgMTYuNSAxOCAxNy4xNzE2IDE4IDE4VjE5LjVDMTggMjAuMzI4NCAxNy4zMjg0IDIxIDE2LjUgMjFIMTQuNDQ0NE0xNC40NDQ0IDE2LjVWMjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjEuNSA2QzIxLjUgNiAyMyA3LjggMjMgMTJDMjMgMTYuMiAyMS41IDE4IDIxLjUgMTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkuNSA5QzE5LjUgOSAyMCA5LjkgMjAgMTJDMjAgMTQuMSAxOS41IDE1IDE5LjUgMTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class MagnetWaveLinearIcon extends StatelessWidget {
  /// Creates the `magnet-wave` icon in the linear style.
  const MagnetWaveLinearIcon({
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
    name: 'magnet-wave',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14.4444 3H16.5C17.3284 3 18 3.67157 18 4.5V6C18 6.82843 17.3284 7.5 16.5 7.5H14.4444M14.4444 3H11C6.02943 3 2 7.02944 2 12C2 16.9706 6.02944 21 11 21H14.4444M14.4444 3V7.5M14.4444 7.5H10.9444C8.45916 7.5 6.44444 9.51472 6.44444 12C6.44444 14.4853 8.45916 16.5 10.9444 16.5H14.4444M14.4444 16.5H16.5C17.3284 16.5 18 17.1716 18 18V19.5C18 20.3284 17.3284 21 16.5 21H14.4444M14.4444 16.5V21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M21.5 6C21.5 6 23 7.8 23 12C23 16.2 21.5 18 21.5 18" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.5 9C19.5 9 20 9.9 20 12C20 14.1 19.5 15 19.5 15" stroke="currentColor" stroke-linecap="round"/>''',
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
