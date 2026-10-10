// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMCA2TDMgNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMCAxNkgzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkgMTFIMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMyAxMS43MTQ4QzEzIDEzLjQ2NzQgMTUuMTYzMyAxNS4zMzA0IDE2LjQ5MDEgMTYuMzA4MkMxNi45NDQyIDE2LjY0MyAxNy4xNzEzIDE2LjgxMDMgMTcuNSAxNi44MTAzQzE3LjgyODcgMTYuODEwMyAxOC4wNTU4IDE2LjY0MyAxOC41MDk5IDE2LjMwODNDMTkuODM2NyAxNS4zMzA0IDIyIDEzLjQ2NzQgMjIgMTEuNzE0OEMyMiA5LjAzNzU5IDE5LjUyNDkgOC4wMzgwNyAxNy41IDEwLjEwNjJDMTUuNDc1MSA4LjAzODA3IDEzIDkuMDM3NTkgMTMgMTEuNzE0OFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class ListHeartMinimalisticLinearIcon extends StatelessWidget {
  /// Creates the `list-heart-minimalistic` icon in the linear style.
  const ListHeartMinimalisticLinearIcon({
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
    name: 'list-heart-minimalistic',
    style: SolarIconStyle.linear,
    body: r'''<path d="M20 6L3 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 16H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 11H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 11.7148C13 13.4674 15.1633 15.3304 16.4901 16.3082C16.9442 16.643 17.1713 16.8103 17.5 16.8103C17.8287 16.8103 18.0558 16.643 18.5099 16.3083C19.8367 15.3304 22 13.4674 22 11.7148C22 9.03759 19.5249 8.03807 17.5 10.1062C15.4751 8.03807 13 9.03759 13 11.7148Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
