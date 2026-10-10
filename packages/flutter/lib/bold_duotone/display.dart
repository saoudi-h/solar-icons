// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMi44Nzg2OCAzLjg0MzUyQzIgNC42ODcwNSAyIDYuMDQ0NjggMiA4Ljc1OTk0VjkuNzE5OTNDMiAxMi40MzUyIDIgMTMuNzkyOCAyLjg3ODY4IDE0LjYzNjNDMy43NTczNiAxNS40Nzk5IDUuMTcxNTcgMTUuNDc5OSA4IDE1LjQ3OTlIMTEuMjVIMTIuNzVIMTZDMTguODI4NCAxNS40Nzk5IDIwLjI0MjYgMTUuNDc5OSAyMS4xMjEzIDE0LjYzNjNDMjIgMTMuNzkyOCAyMiAxMi40MzUyIDIyIDkuNzE5OTNWOC43NTk5NEMyMiA2LjA0NDY4IDIyIDQuNjg3MDUgMjEuMTIxMyAzLjg0MzUyQzIwLjI0MjYgMyAxOC44Mjg0IDMgMTYgM0g4QzUuMTcxNTcgMyAzLjc1NzM2IDMgMi44Nzg2OCAzLjg0MzUyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xOC4yMzc0IDE5LjU5NjRMMTIuNzUwMiAxNy44NDA1VjE1LjQ3OTVIMTEuMjUwMlYxNy44NDA1TDUuNzYzMDMgMTkuNTk2NEM1LjM3MDA4IDE5LjcyMjEgNS4xNTc3MSAyMC4xMjk5IDUuMjg4NjkgMjAuNTA3MUM1LjQxOTY4IDIwLjg4NDQgNS44NDQ0MiAyMS4wODgyIDYuMjM3MzcgMjAuOTYyNUwxMi4wMDAyIDE5LjExODRMMTcuNzYzIDIwLjk2MjVDMTguMTU2IDIxLjA4ODIgMTguNTgwNyAyMC44ODQ0IDE4LjcxMTcgMjAuNTA3MUMxOC44NDI3IDIwLjEyOTkgMTguNjMwMyAxOS43MjIxIDE4LjIzNzQgMTkuNTk2NFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class DisplayBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `display` icon in the boldDuotone style.
  const DisplayBoldDuotoneIcon({
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
    name: 'display',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.87868 3.84352C2 4.68705 2 6.04468 2 8.75994V9.71993C2 12.4352 2 13.7928 2.87868 14.6363C3.75736 15.4799 5.17157 15.4799 8 15.4799H11.25H12.75H16C18.8284 15.4799 20.2426 15.4799 21.1213 14.6363C22 13.7928 22 12.4352 22 9.71993V8.75994C22 6.04468 22 4.68705 21.1213 3.84352C20.2426 3 18.8284 3 16 3H8C5.17157 3 3.75736 3 2.87868 3.84352Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.2374 19.5964L12.7502 17.8405V15.4795H11.2502V17.8405L5.76303 19.5964C5.37008 19.7221 5.15771 20.1299 5.28869 20.5071C5.41968 20.8844 5.84442 21.0882 6.23737 20.9625L12.0002 19.1184L17.763 20.9625C18.156 21.0882 18.5807 20.8844 18.7117 20.5071C18.8427 20.1299 18.6303 19.7221 18.2374 19.5964Z" fill="currentColor"/>''',
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
