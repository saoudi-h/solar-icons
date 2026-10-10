// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `table-minimalistic` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIxIDkuOTk5NzZWMTMuOTk5OEMyMSAxNy43NzEgMjAuOTk5NyAxOS42NTczIDE5LjgyODEgMjAuODI4OUMxOC42NTY1IDIyLjAwMDEgMTYuNzcwOCAyMS45OTk4IDEzIDIxLjk5OThIMTFDMTAuNTU4MSAyMS45OTk4IDEwLjE0MiAyMS45OTk3IDkuNzUgMjEuOTk3OFY5LjQxNjc1SDIwLjk5OUMyMC45OTkyIDkuNjA1OTIgMjEgOS44MDAyIDIxIDkuOTk5NzZaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik04LjI1IDkuNDE2NzVWMjEuOTcyNEM2LjIyOTE2IDIxLjkwNjMgNS4wMTUzOSAyMS42NzIxIDQuMTcxODggMjAuODI4OUMzLjAwMDMgMTkuNjU3MyAzIDE3Ljc3MSAzIDEzLjk5OThWOS45OTk3NkMzIDkuODAwMiAzLjAwMDggOS42MDU5MiAzLjAwMDk4IDkuNDE2NzVIOC4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEzIDEuOTk5NzZDMTYuNzcxMSAxLjk5OTc2IDE4LjY1NjUgMi4wMDAxNyAxOS44MjgxIDMuMTcxNjNDMjAuNzYwNiA0LjEwNDExIDIwLjk0ODUgNS40ODg4OCAyMC45ODczIDcuOTE2NzVIOS43NVYyLjAwMTcxQzEwLjE0MiAxLjk5OTgyIDEwLjU1ODEgMS45OTk3NiAxMSAxLjk5OTc2SDEzWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNOC4yNSA3LjkxNjc1SDMuMDEyN0MzLjA1MTUzIDUuNDg4ODggMy4yMzk0IDQuMTA0MTEgNC4xNzE4OCAzLjE3MTYzQzUuMDE1NDEgMi4zMjgxOCA2LjIyODkyIDIuMDkyMjUgOC4yNSAyLjAyNjEyVjcuOTE2NzVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class TableMinimalisticBoldIcon extends StatelessWidget {
  /// Creates the `table-minimalistic` icon in the bold style.
  const TableMinimalisticBoldIcon({
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
    name: 'table-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21 9.99976V13.9998C21 17.771 20.9997 19.6573 19.8281 20.8289C18.6565 22.0001 16.7708 21.9998 13 21.9998H11C10.5581 21.9998 10.142 21.9997 9.75 21.9978V9.41675H20.999C20.9992 9.60592 21 9.8002 21 9.99976Z" fill="currentColor"/>
<path d="M8.25 9.41675V21.9724C6.22916 21.9063 5.01539 21.6721 4.17188 20.8289C3.0003 19.6573 3 17.771 3 13.9998V9.99976C3 9.8002 3.0008 9.60592 3.00098 9.41675H8.25Z" fill="currentColor"/>
<path d="M13 1.99976C16.7711 1.99976 18.6565 2.00017 19.8281 3.17163C20.7606 4.10411 20.9485 5.48888 20.9873 7.91675H9.75V2.00171C10.142 1.99982 10.5581 1.99976 11 1.99976H13Z" fill="currentColor"/>
<path d="M8.25 7.91675H3.0127C3.05153 5.48888 3.2394 4.10411 4.17188 3.17163C5.01541 2.32818 6.22892 2.09225 8.25 2.02612V7.91675Z" fill="currentColor"/>''',
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
