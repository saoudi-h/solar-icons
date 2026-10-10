// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMy4yNSA4Ljc1QzEzLjI1IDkuNDQwMzYgMTIuNjkwNCAxMCAxMiAxMEMxMS4zMDk2IDEwIDEwLjc1IDkuNDQwMzYgMTAuNzUgOC43NUMxMC43NSA4LjA1OTY0IDExLjMwOTYgNy41IDEyIDcuNUMxMi42OTA0IDcuNSAxMy4yNSA4LjA1OTY0IDEzLjI1IDguNzVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDQuODIxODlDOS42ODA0IDQuODIxODkgNy44IDYuNzE3IDcuOCA5LjA1NDczQzcuOCAxMC4yMDE3IDguMjUyNjggMTEuMjQyMiA4Ljk4NzggMTIuMDA0NU0xMiAyQzE1Ljg2NiAyIDE5IDUuMTU4NTEgMTkgOS4wNTQ3M0MxOSAxMC45NjQ3IDE4LjI0NjggMTIuNjk3NSAxNy4wMjM1IDEzLjk2NzdNNy4wMDc3OCAxNEM1Ljc2NjAxIDEyLjcyNjkgNSAxMC45ODEgNSA5LjA1NDczQzUgNy4xMjg0OSA1Ljc2NjAxIDUuMzgyNTUgNy4wMDc3OCA0LjEwOTQ2TTE1LjA0MzIgMTEuOTcyQzE1Ljc2IDExLjIxMjcgMTYuMiAxMC4xODU1IDE2LjIgOS4wNTQ3M0MxNi4yIDguMzA5MDggMTYuMDA4NyA3LjYwODQ1IDE1LjY3MjggNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNiAyMkwxMiAxMEw4IDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE0LjUgMTcuNUg5LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class StationMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `station-minimalistic` icon in the broken style.
  const StationMinimalisticBrokenIcon({
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
    name: 'station-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13.25 8.75C13.25 9.44036 12.6904 10 12 10C11.3096 10 10.75 9.44036 10.75 8.75C10.75 8.05964 11.3096 7.5 12 7.5C12.6904 7.5 13.25 8.05964 13.25 8.75Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 4.82189C9.6804 4.82189 7.8 6.717 7.8 9.05473C7.8 10.2017 8.25268 11.2422 8.9878 12.0045M12 2C15.866 2 19 5.15851 19 9.05473C19 10.9647 18.2468 12.6975 17.0235 13.9677M7.00778 14C5.76601 12.7269 5 10.981 5 9.05473C5 7.12849 5.76601 5.38255 7.00778 4.10946M15.0432 11.972C15.76 11.2127 16.2 10.1855 16.2 9.05473C16.2 8.30908 16.0087 7.60845 15.6728 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 22L12 10L8 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.5 17.5H9.5" stroke="currentColor" stroke-linecap="round"/>''',
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
