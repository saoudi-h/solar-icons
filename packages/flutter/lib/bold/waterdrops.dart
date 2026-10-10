// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `waterdrops` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwIDE3LjgzMzJDMTAgMjAuMTM0NCA4LjIwOTE0IDIxLjk5OTkgNiAyMS45OTk5QzMuNzkwODYgMjEuOTk5OSAyIDIwLjEzNDQgMiAxNy44MzMyQzIgMTYuMzkzNCAzLjU2NTkzIDE0LjQ3MTcgNC43MzgyMyAxMy4yMzQ3QzUuNDMyMjIgMTIuNTAyNSA2LjU2Nzc4IDEyLjUwMjUgNy4yNjE3NyAxMy4yMzQ3QzguNDM0MDcgMTQuNDcxNyAxMCAxNi4zOTM0IDEwIDE3LjgzMzJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMiAxNy44MzMyQzIyIDIwLjEzNDQgMjAuMjA5MSAyMS45OTk5IDE4IDIxLjk5OTlDMTUuNzkwOSAyMS45OTk5IDE0IDIwLjEzNDQgMTQgMTcuODMzMkMxNCAxNi4zOTM0IDE1LjU2NTkgMTQuNDcxNyAxNi43MzgyIDEzLjIzNDdDMTcuNDMyMiAxMi41MDI1IDE4LjU2NzggMTIuNTAyNSAxOS4yNjE4IDEzLjIzNDdDMjAuNDM0MSAxNC40NzE3IDIyIDE2LjM5MzQgMjIgMTcuODMzMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE2IDcuODMzMTlDMTYgMTAuMTM0NCAxNC4yMDkxIDExLjk5OTkgMTIgMTEuOTk5OUM5Ljc5MDg2IDExLjk5OTkgOCAxMC4xMzQ0IDggNy44MzMxOUM4IDYuMzkzMzcgOS41NjU5MyA0LjQ3MTY1IDEwLjczODIgMy4yMzQ3M0MxMS40MzIyIDIuNTAyNDkgMTIuNTY3OCAyLjUwMjQ5IDEzLjI2MTggMy4yMzQ3M0MxNC40MzQxIDQuNDcxNjUgMTYgNi4zOTMzNyAxNiA3LjgzMzE5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class WaterdropsBoldIcon extends StatelessWidget {
  /// Creates the `waterdrops` icon in the bold style.
  const WaterdropsBoldIcon({
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
    name: 'waterdrops',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M10 17.8332C10 20.1344 8.20914 21.9999 6 21.9999C3.79086 21.9999 2 20.1344 2 17.8332C2 16.3934 3.56593 14.4717 4.73823 13.2347C5.43222 12.5025 6.56778 12.5025 7.26177 13.2347C8.43407 14.4717 10 16.3934 10 17.8332Z" fill="currentColor"/>
<path d="M22 17.8332C22 20.1344 20.2091 21.9999 18 21.9999C15.7909 21.9999 14 20.1344 14 17.8332C14 16.3934 15.5659 14.4717 16.7382 13.2347C17.4322 12.5025 18.5678 12.5025 19.2618 13.2347C20.4341 14.4717 22 16.3934 22 17.8332Z" fill="currentColor"/>
<path d="M16 7.83319C16 10.1344 14.2091 11.9999 12 11.9999C9.79086 11.9999 8 10.1344 8 7.83319C8 6.39337 9.56593 4.47165 10.7382 3.23473C11.4322 2.50249 12.5678 2.50249 13.2618 3.23473C14.4341 4.47165 16 6.39337 16 7.83319Z" fill="currentColor"/>''',
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
