// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNy44NDQ1IDYuMTU1NDdDMTcuODQ0NSA2LjE1NTQ3IDE3LjQxMTkgOC4zOTk5OSAxNC45MDU3IDEwLjkwNjFDMTIuMzk5NiAxMy40MTIzIDEwLjE1NTUgMTMuODQ0NSAxMC4xNTU1IDEzLjg0NDVNMjAuNDA3NSAxNi40MDc1QzE4LjYzMzggMTguMTgxMyAxNS45MzkzIDE4LjQ3MzMgMTMuODYyNCAxNy4yODM1QzEzLjQ1MzIgMTcuMDQ5IDEzLjA2OCAxNi43NTcgMTIuNzE4NSAxNi40MDc1TDcuNTkyNDYgMTEuMjgxNUM3LjI0MyAxMC45MzIxIDYuOTUxMDYgMTAuNTQ2OSA2LjcxNjY0IDEwLjEzNzdDNS41MjY3IDguMDYwODIgNS44MTg2NCA1LjM2NjI4IDcuNTkyNDYgMy41OTI0NkM5LjcxNTczIDEuNDY5MTggMTMuMTU4MiAxLjQ2OTE4IDE1LjI4MTUgMy41OTI0NkwyMC40MDc1IDguNzE4NDlDMjIuNTMwOCAxMC44NDE4IDIyLjUzMDggMTQuMjg0MyAyMC40MDc1IDE2LjQwNzVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0LjUgNi41TDEzIDUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTMuODYyNCAxNy4yODM0QzEzLjI3NDggMTkuOTgwNSAxMC44NzMyIDIyLjAwMDEgOCAyMi4wMDAxQzQuNjg2MjkgMjIuMDAwMSAyIDE5LjMxMzggMiAxNi4wMDAxQzIgMTMuMTI2OSA0LjAxOTU5IDEwLjcyNTQgNi43MTY2NCAxMC4xMzc3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PillsLinearIcon extends StatelessWidget {
  /// Creates the `pills` icon in the linear style.
  const PillsLinearIcon({
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
    name: 'pills',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M17.8445 6.15547C17.8445 6.15547 17.4119 8.39999 14.9057 10.9061C12.3996 13.4123 10.1555 13.8445 10.1555 13.8445M20.4075 16.4075C18.6338 18.1813 15.9393 18.4733 13.8624 17.2835C13.4532 17.049 13.068 16.757 12.7185 16.4075L7.59246 11.2815C7.243 10.9321 6.95106 10.5469 6.71664 10.1377C5.5267 8.06082 5.81864 5.36628 7.59246 3.59246C9.71573 1.46918 13.1582 1.46918 15.2815 3.59246L20.4075 8.71849C22.5308 10.8418 22.5308 14.2843 20.4075 16.4075Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 6.5L13 5" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.8624 17.2834C13.2748 19.9805 10.8732 22.0001 8 22.0001C4.68629 22.0001 2 19.3138 2 16.0001C2 13.1269 4.01959 10.7254 6.71664 10.1377" stroke="currentColor" stroke-linecap="round"/>''',
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
