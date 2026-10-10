// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMC45NDIzIDMuMDU3NjhDMjMuNDExNyA1LjUyNzAxIDIxLjQwOTkgMTEuNTMyNCAxNi40NzEyIDE2LjQ3MTFDMTEuNTMyNiAyMS40MDk3IDUuNTI3MiAyMy40MTE1IDMuMDU3ODcgMjAuOTQyMkMwLjU4ODU0NyAxOC40NzI4IDIuNTkwMzMgMTIuNDY3NSA3LjUyODk5IDcuNTI4OEMxMi40Njc2IDIuNTkwMTQgMTguNDczIDAuNTg4MzQ1IDIwLjk0MjMgMy4wNTc2OFpNMy4wNTc2OCAzLjA1NzgyQzAuNTg4MzQ5IDUuNTI3MTUgMi41OTAxMyAxMS41MzI1IDcuNTI4NzkgMTYuNDcxMkMxMi40Njc0IDIxLjQwOTkgMTguNDcyOCAyMy40MTE3IDIwLjk0MjEgMjAuOTQyM0MyMy40MTE1IDE4LjQ3MyAyMS40MDk3IDEyLjQ2NzYgMTYuNDcxIDcuNTI4OTRDMTEuNTMyNCAyLjU5MDI4IDUuNTI3IDAuNTg4NDg1IDMuMDU3NjggMy4wNTc4MloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTQuNSAxMkMxNC41IDEzLjM4MDcgMTMuMzgwNyAxNC41IDEyIDE0LjVDMTAuNjE5MyAxNC41IDkuNSAxMy4zODA3IDkuNSAxMkM5LjUgMTAuNjE5MyAxMC42MTkzIDkuNSAxMiA5LjVDMTMuMzgwNyA5LjUgMTQuNSAxMC42MTkzIDE0LjUgMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class AtomLinearIcon extends StatelessWidget {
  /// Creates the `atom` icon in the linear style.
  const AtomLinearIcon({
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
    name: 'atom',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20.9423 3.05768C23.4117 5.52701 21.4099 11.5324 16.4712 16.4711C11.5326 21.4097 5.5272 23.4115 3.05787 20.9422C0.588547 18.4728 2.59033 12.4675 7.52899 7.5288C12.4676 2.59014 18.473 0.588345 20.9423 3.05768ZM3.05768 3.05782C0.588349 5.52715 2.59013 11.5325 7.52879 16.4712C12.4674 21.4099 18.4728 23.4117 20.9421 20.9423C23.4115 18.473 21.4097 12.4676 16.471 7.52894C11.5324 2.59028 5.527 0.588485 3.05768 3.05782Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 12C14.5 13.3807 13.3807 14.5 12 14.5C10.6193 14.5 9.5 13.3807 9.5 12C9.5 10.6193 10.6193 9.5 12 9.5C13.3807 9.5 14.5 10.6193 14.5 12Z" stroke="currentColor" stroke-linecap="round"/>''',
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
