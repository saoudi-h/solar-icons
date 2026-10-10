// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `command` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2IDguMDAwMDJMMTkgOC4wMDA0OUMyMC42NTY5IDguMDAwNzUgMjIuMDAwMiA2LjY1NzgxIDIyLjAwMDUgNS4wMDA5NkMyMi4wMDA3IDMuMzQ0MTEgMjAuNjU3OCAyLjAwMDc1IDE5LjAwMDkgMi4wMDA0OUMxNy4zNDQxIDIuMDAwMjMgMTYuMDAwNyAzLjM0MzE2IDE2LjAwMDUgNS4wMDAwMkwxNiA4LjAwMDAyTDguMDAwNDcgOEw4IDUuMDAwMDJDNy45OTk3NCAzLjM0MzE2IDYuNjU2MzggMi4wMDAyMyA0Ljk5OTUzIDIuMDAwNDlDMy4zNDI2NyAyLjAwMDc1IDEuOTk5NzQgMy4zNDQxMSAyIDUuMDAwOTZDMi4wMDAyNiA2LjY1NzgxIDMuMzQzNjIgOC4wMDA3NSA1LjAwMDQ3IDguMDAwNDlMOC4wMDA0NyA4TDggMTZIMTZWOC4wMDAwMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE2IDE2TDE5IDE2LjAwMDVDMjAuNjU2OSAxNi4wMDAyIDIyLjAwMDIgMTcuMzQzMiAyMi4wMDA1IDE5QzIyLjAwMDcgMjAuNjU2OSAyMC42NTc4IDIyLjAwMDIgMTkuMDAwOSAyMi4wMDA1QzE3LjM0NDEgMjIuMDAwNyAxNi4wMDA3IDIwLjY1NzggMTYuMDAwNSAxOS4wMDFMMTYgMTZaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik01LjAwMDQ3IDE2LjAwMDVMOC4wMDA0NyAxNi4wMDFMOCAxOS4wMDFDNy45OTk3NCAyMC42NTc4IDYuNjU2MzggMjIuMDAwNyA0Ljk5OTUzIDIyLjAwMDVDMy4zNDI2NyAyMi4wMDAyIDEuOTk5NzQgMjAuNjU2OSAyIDE5QzIuMDAwMjYgMTcuMzQzMiAzLjM0MzYyIDE2LjAwMDIgNS4wMDA0NyAxNi4wMDA1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class CommandBoldIcon extends StatelessWidget {
  /// Creates the `command` icon in the bold style.
  const CommandBoldIcon({
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
    name: 'command',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16 8.00002L19 8.00049C20.6569 8.00075 22.0002 6.65781 22.0005 5.00096C22.0007 3.34411 20.6578 2.00075 19.0009 2.00049C17.3441 2.00023 16.0007 3.34316 16.0005 5.00002L16 8.00002L8.00047 8L8 5.00002C7.99974 3.34316 6.65638 2.00023 4.99953 2.00049C3.34267 2.00075 1.99974 3.34411 2 5.00096C2.00026 6.65781 3.34362 8.00075 5.00047 8.00049L8.00047 8L8 16H16V8.00002Z" fill="currentColor"/>
<path d="M16 16L19 16.0005C20.6569 16.0002 22.0002 17.3432 22.0005 19C22.0007 20.6569 20.6578 22.0002 19.0009 22.0005C17.3441 22.0007 16.0007 20.6578 16.0005 19.001L16 16Z" fill="currentColor"/>
<path d="M5.00047 16.0005L8.00047 16.001L8 19.001C7.99974 20.6578 6.65638 22.0007 4.99953 22.0005C3.34267 22.0002 1.99974 20.6569 2 19C2.00026 17.3432 3.34362 16.0002 5.00047 16.0005Z" fill="currentColor"/>''',
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
