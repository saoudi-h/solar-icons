// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTcuOTA1NCAzLjkyODcxTDE3LjkzNzYgMy45OTk1MUMxOC4xNzE3IDQuNzEwMDQgMTcuNzAzNSA2LjEzMTA5IDE3LjIzNTQgNi44NDE2MkMxNy4wNjU4IDcuMDk4OTggMTYuNjgxMiA3LjQxODUgMTYuMjU5NyA3LjcyMTM3QzE1LjMwOTIgOC40MDQyOCAxNC4xMDk3IDguNzQyMDUgMTMuNDk5OCA5Ljk5OTUxQzEzLjMyNTUgMTAuMzU5IDEzLjMzMjkgMTAuNzEwMyAxMy40MTY4IDExLjAxNThDMTMuNDc3MSAxMS4yMzU0IDEzLjUxNTYgMTEuNDc0IDEzLjUxNjIgMTEuNzA3NUMxMy41MTgyIDEyLjQ2MjQgMTIuNzU0NyAxMy4wMDc4IDExLjk5OTggMTIuOTk5NUMxMC4wMzU1IDEyLjk3ODEgOC43NDk2OCAxMS4zOTUxIDguNTc0NjUgOS40NDY4OEM4LjM4NzM5IDcuMzYyNjcgNi43ODAwOCA1LjQyMDU3IDUuOTk5ODQgNC43MTAwNEw1LjU5NjY4IDQuMzE4NTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0yMS45MjkxIDEzLjIyMjdDMjEuNjE5IDE0LjI2OTkgMjEuMTY5OSAxNi4zNzc0IDE3LjcxODIgMTYuNDEzNEMxNy43MTgyIDE2LjQxMzQgMTQuNDI0NiAxNi40MTM0IDEzLjQzNjUgMTguMjc1NUMxMi42ODM3IDE5LjY5NCAxMy4wNjU5IDIxLjIyNTEgMTMuMzg4NSAyMS45MDQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class EarthLineDuotoneIcon extends StatelessWidget {
  /// Creates the `earth` icon in the lineDuotone style.
  const EarthLineDuotoneIcon({
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
    name: 'earth',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17.9054 3.92871L17.9376 3.99951C18.1717 4.71004 17.7035 6.13109 17.2354 6.84162C17.0658 7.09898 16.6812 7.4185 16.2597 7.72137C15.3092 8.40428 14.1097 8.74205 13.4998 9.99951C13.3255 10.359 13.3329 10.7103 13.4168 11.0158C13.4771 11.2354 13.5156 11.474 13.5162 11.7075C13.5182 12.4624 12.7547 13.0078 11.9998 12.9995C10.0355 12.9781 8.74968 11.3951 8.57465 9.44688C8.38739 7.36267 6.78008 5.42057 5.99984 4.71004L5.59668 4.31856" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M21.9291 13.2227C21.619 14.2699 21.1699 16.3774 17.7182 16.4134C17.7182 16.4134 14.4246 16.4134 13.4365 18.2755C12.6837 19.694 13.0659 21.2251 13.3885 21.904" stroke="currentColor" stroke-linecap="round"/>''',
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
