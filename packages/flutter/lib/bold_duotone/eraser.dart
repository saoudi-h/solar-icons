// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxnIG9wYWNpdHk9IjAuNSI+CjxwYXRoIGQ9Ik0yMSAxOS41QzIxLjQxNDIgMTkuNSAyMS43NSAxOS44MzU4IDIxLjc1IDIwLjI1QzIxLjc1IDIwLjY2NDIgMjEuNDE0MiAyMSAyMSAyMUg5LjA2MjVDOS44NTg4OCAyMC45OTM4IDEwLjUzODcgMjAuNDkzNyAxMS41NzMyIDE5LjVIMjFaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNC45NTIxIDNDMTUuOTg5OCAzIDE2LjgyNTEgMy44MzQ4NCAxOC40OTUxIDUuNTA0ODhDMjAuMTY1MiA3LjE3NDkyIDIxIDguMDEwMjIgMjEgOS4wNDc4NUMyMC45OTk5IDEwLjA4NTQgMjAuMTY1MSAxMC45MjA4IDE4LjQ5NTEgMTIuNTkwOEwxMy41ODUgMTcuNUw2LjUgMTAuNDE1TDExLjQwOTIgNS41MDQ4OEMxMy4wNzkyIDMuODM0ODkgMTMuOTE0NiAzLjAwMDA1IDE0Ljk1MjEgM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9nPgo8cGF0aCBkPSJNMTMuNTg1NCAxNy41MDAxTDYuNSAxMC40MTQ3TDUuNTA1MDYgMTEuNDA5NkMzLjgzNTAyIDEzLjA3OTYgMyAxMy45MTQ3IDMgMTQuOTUyM0MzIDE1Ljk4OTkgMy44MzUwMiAxNi44MjUgNS41MDUwNiAxOC40OTVDNy4xNzUxIDIwLjE2NSA4LjAxMDEzIDIxLjAwMDEgOS4wNDc3NiAyMS4wMDAxQzEwLjA4NTQgMjEuMDAwMSAxMC45MjA0IDIwLjE2NSAxMi41OTA0IDE4LjQ5NUwxMy41ODU0IDE3LjUwMDFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class EraserBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `eraser` icon in the boldDuotone style.
  const EraserBoldDuotoneIcon({
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
    name: 'eraser',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.5854 17.5001L6.5 10.4147L5.50506 11.4096C3.83502 13.0796 3 13.9147 3 14.9523C3 15.9899 3.83502 16.825 5.50506 18.495C7.1751 20.165 8.01013 21.0001 9.04776 21.0001C10.0854 21.0001 10.9204 20.165 12.5904 18.495L13.5854 17.5001Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M21 19.5C21.4142 19.5 21.75 19.8358 21.75 20.25C21.75 20.6642 21.4142 21 21 21H9.0625C9.85888 20.9938 10.5387 20.4937 11.5732 19.5H21Z" fill="currentColor"/>
<path d="M14.9521 3C15.9898 3 16.8251 3.83484 18.4951 5.50488C20.1652 7.17492 21 8.01022 21 9.04785C20.9999 10.0854 20.1651 10.9208 18.4951 12.5908L13.585 17.5L6.5 10.415L11.4092 5.50488C13.0792 3.83489 13.9146 3.00005 14.9521 3Z" fill="currentColor"/>
</g>''',
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
