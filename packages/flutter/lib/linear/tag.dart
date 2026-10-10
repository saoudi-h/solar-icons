// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tag` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQuNzI4NDggMTYuMTM2OUMzLjE4Mjk1IDE0LjU5MTQgMi40MTAxOCAxMy44MTg2IDIuMTIyNjQgMTIuODE2QzEuODM1MDkgMTEuODEzNCAyLjA4MDgzIDEwLjc0ODUgMi41NzIzMSA4LjYxODc1TDIuODU1NzQgNy4zOTA1N0MzLjI2OTIyIDUuNTk4ODEgMy40NzU5NyA0LjcwMjkyIDQuMDg5NDQgNC4wODk0NEM0LjcwMjkyIDMuNDc1OTcgNS41OTg4MSAzLjI2OTIyIDcuMzkwNTcgMi44NTU3NEw4LjYxODc1IDIuNTcyMzFDMTAuNzQ4NSAyLjA4MDgzIDExLjgxMzQgMS44MzUwOSAxMi44MTYgMi4xMjI2NEMxMy44MTg2IDIuNDEwMTggMTQuNTkxNCAzLjE4Mjk1IDE2LjEzNjkgNC43Mjg0OEwxNy45NjY1IDYuNTU4MTJDMjAuNjU1NSA5LjI0NzExIDIyIDEwLjU5MTYgMjIgMTIuMjYyM0MyMiAxMy45MzMgMjAuNjU1NSAxNS4yNzc1IDE3Ljk2NjUgMTcuOTY2NUMxNS4yNzc1IDIwLjY1NTUgMTMuOTMzIDIyIDEyLjI2MjMgMjJDMTAuNTkxNiAyMiA5LjI0NzExIDIwLjY1NTUgNi41NTgxMiAxNy45NjY1TDQuNzI4NDggMTYuMTM2OVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSI4LjYwNzI0IiBjeT0iOC44Nzg5MSIgcj0iMiIgdHJhbnNmb3JtPSJyb3RhdGUoLTQ1IDguNjA3MjQgOC44Nzg5MSkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTEuNTQxNyAxOC41TDE4LjUyMDggMTEuNTIwOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class TagLinearIcon extends StatelessWidget {
  /// Creates the `tag` icon in the linear style.
  const TagLinearIcon({
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
    name: 'tag',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4.72848 16.1369C3.18295 14.5914 2.41018 13.8186 2.12264 12.816C1.83509 11.8134 2.08083 10.7485 2.57231 8.61875L2.85574 7.39057C3.26922 5.59881 3.47597 4.70292 4.08944 4.08944C4.70292 3.47597 5.59881 3.26922 7.39057 2.85574L8.61875 2.57231C10.7485 2.08083 11.8134 1.83509 12.816 2.12264C13.8186 2.41018 14.5914 3.18295 16.1369 4.72848L17.9665 6.55812C20.6555 9.24711 22 10.5916 22 12.2623C22 13.933 20.6555 15.2775 17.9665 17.9665C15.2775 20.6555 13.933 22 12.2623 22C10.5916 22 9.24711 20.6555 6.55812 17.9665L4.72848 16.1369Z" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.60724" cy="8.87891" r="2" transform="rotate(-45 8.60724 8.87891)" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5417 18.5L18.5208 11.5208" stroke="currentColor" stroke-linecap="round"/>''',
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
