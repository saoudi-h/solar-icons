// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tag-horizontal` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMi44NTggMjBIMTAuMjIxQzYuMzQ1NiAyMCA0LjQwNzg5IDIwIDMuMjAzOTQgMTguODI4NEMyIDE3LjY1NjkgMiAxNS43NzEyIDIgMTJDMiA4LjIyODc2IDIgNi4zNDMxNSAzLjIwMzk0IDUuMTcxNTdDNC40MDc4OSA0IDYuMzQ1NjEgNCAxMC4yMjEgNEgxMi44NThDMTUuMDg1NCA0IDE2LjE5OTIgNCAxNy4xMjg5IDQuNTAxNDNDMTguMDU4NiA1LjAwMjg2IDE4LjY0ODggNS45MjE5MSAxOS44Mjk0IDcuNzYwMDFMMjAuNTEwMiA4LjgyMDAxQzIxLjUwMzQgMTAuMzY2NCAyMiAxMS4xMzk2IDIyIDEyQzIyIDEyLjg2MDQgMjEuNTAzNCAxMy42MzM2IDIwLjUxMDIgMTUuMThMMTkuODI5NCAxNi4yNEMxOC42NDg4IDE4LjA3ODEgMTguMDU4NiAxOC45OTcxIDE3LjEyODkgMTkuNDk4NkMxNi4xOTkyIDIwIDE1LjA4NTQgMjAgMTIuODU4IDIwWk03IDcuMDU0MjNDNy40MTQyMSA3LjA1NDIzIDcuNzUgNy4zNzAyNiA3Ljc1IDcuNzYwMTFWMTYuMjM1M0M3Ljc1IDE2LjYyNTEgNy40MTQyMSAxNi45NDEyIDcgMTYuOTQxMkM2LjU4NTc5IDE2Ljk0MTIgNi4yNSAxNi42MjUxIDYuMjUgMTYuMjM1M1Y3Ljc2MDExQzYuMjUgNy4zNzAyNiA2LjU4NTc5IDcuMDU0MjMgNyA3LjA1NDIzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class TagHorizontalBoldIcon extends StatelessWidget {
  /// Creates the `tag-horizontal` icon in the bold style.
  const TagHorizontalBoldIcon({
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
    name: 'tag-horizontal',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.858 20H10.221C6.3456 20 4.40789 20 3.20394 18.8284C2 17.6569 2 15.7712 2 12C2 8.22876 2 6.34315 3.20394 5.17157C4.40789 4 6.34561 4 10.221 4H12.858C15.0854 4 16.1992 4 17.1289 4.50143C18.0586 5.00286 18.6488 5.92191 19.8294 7.76001L20.5102 8.82001C21.5034 10.3664 22 11.1396 22 12C22 12.8604 21.5034 13.6336 20.5102 15.18L19.8294 16.24C18.6488 18.0781 18.0586 18.9971 17.1289 19.4986C16.1992 20 15.0854 20 12.858 20ZM7 7.05423C7.41421 7.05423 7.75 7.37026 7.75 7.76011V16.2353C7.75 16.6251 7.41421 16.9412 7 16.9412C6.58579 16.9412 6.25 16.6251 6.25 16.2353V7.76011C6.25 7.37026 6.58579 7.05423 7 7.05423Z" fill="currentColor"/>''',
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
