// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMSA5Ljk5OTc2VjEzLjk5OThDMjEgMTcuNzcxIDIwLjk5OTcgMTkuNjU3MyAxOS44MjgxIDIwLjgyODlDMTguNjU2NSAyMi4wMDAxIDE2Ljc3MDggMjEuOTk5OCAxMyAyMS45OTk4SDExQzEwLjU1ODEgMjEuOTk5OCAxMC4xNDIgMjEuOTk5NyA5Ljc1IDIxLjk5NzhWOS40MTY3NUgyMC45OTlDMjAuOTk5MiA5LjYwNTkyIDIxIDkuODAwMiAyMSA5Ljk5OTc2WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNOC4yNSA5LjQxNjc1VjIxLjk3MjRDNi4yMjkxNiAyMS45MDYzIDUuMDE1MzkgMjEuNjcyMSA0LjE3MTg4IDIwLjgyODlDMy4wMDAzIDE5LjY1NzMgMyAxNy43NzEgMyAxMy45OTk4VjkuOTk5NzZDMyA5LjgwMDIgMy4wMDA4IDkuNjA1OTIgMy4wMDA5OCA5LjQxNjc1SDguMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMyAxLjk5OTc2QzE2Ljc3MTEgMS45OTk3NiAxOC42NTY1IDIuMDAwMTcgMTkuODI4MSAzLjE3MTYzQzIwLjc2MDYgNC4xMDQxMSAyMC45NDg1IDUuNDg4ODggMjAuOTg3MyA3LjkxNjc1SDkuNzVWMi4wMDE3MUMxMC4xNDIgMS45OTk4MiAxMC41NTgxIDEuOTk5NzYgMTEgMS45OTk3NkgxM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTguMjUgNy45MTY3NUgzLjAxMjdDMy4wNTE1MyA1LjQ4ODg4IDMuMjM5NCA0LjEwNDExIDQuMTcxODggMy4xNzE2M0M1LjAxNTQxIDIuMzI4MTggNi4yMjg5MiAyLjA5MjI1IDguMjUgMi4wMjYxMlY3LjkxNjc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
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
