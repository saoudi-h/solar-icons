// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMy4yNSA4Ljc1QzEzLjI1IDkuNDQwMzYgMTIuNjkwNCAxMCAxMiAxMEMxMS4zMDk2IDEwIDEwLjc1IDkuNDQwMzYgMTAuNzUgOC43NUMxMC43NSA4LjA1OTY0IDExLjMwOTYgNy41IDEyIDcuNUMxMi42OTA0IDcuNSAxMy4yNSA4LjA1OTY0IDEzLjI1IDguNzVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcuMDA3NzggMTRDNS43NjYwMSAxMi43MjY5IDUgMTAuOTgxIDUgOS4wNTQ3M0M1IDUuMTU4NTEgOC4xMzQwMSAyIDEyIDJDMTUuODY2IDIgMTkgNS4xNTg1MSAxOSA5LjA1NDczQzE5IDEwLjk2NDcgMTguMjQ2OCAxMi42OTc1IDE3LjAyMzUgMTMuOTY3N004Ljk4NzggMTIuMDA0NUM4LjI1MjY4IDExLjI0MjIgNy44IDEwLjIwMTcgNy44IDkuMDU0NzNDNy44IDYuNzE3IDkuNjgwNCA0LjgyMTg5IDEyIDQuODIxODlDMTQuMzE5NiA0LjgyMTg5IDE2LjIgNi43MTcgMTYuMiA5LjA1NDczQzE2LjIgMTAuMTg1NSAxNS43NiAxMS4yMTI3IDE1LjA0MzIgMTEuOTcyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE2IDIyTDEyIDEwTDggMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTQuNSAxNy41SDkuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class StationMinimalisticLinearIcon extends StatelessWidget {
  /// Creates the `station-minimalistic` icon in the linear style.
  const StationMinimalisticLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13.25 8.75C13.25 9.44036 12.6904 10 12 10C11.3096 10 10.75 9.44036 10.75 8.75C10.75 8.05964 11.3096 7.5 12 7.5C12.6904 7.5 13.25 8.05964 13.25 8.75Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.00778 14C5.76601 12.7269 5 10.981 5 9.05473C5 5.15851 8.13401 2 12 2C15.866 2 19 5.15851 19 9.05473C19 10.9647 18.2468 12.6975 17.0235 13.9677M8.9878 12.0045C8.25268 11.2422 7.8 10.2017 7.8 9.05473C7.8 6.717 9.6804 4.82189 12 4.82189C14.3196 4.82189 16.2 6.717 16.2 9.05473C16.2 10.1855 15.76 11.2127 15.0432 11.972" stroke="currentColor" stroke-linecap="round"/>
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
