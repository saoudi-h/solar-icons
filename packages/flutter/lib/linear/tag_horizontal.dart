// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tag-horizontal` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwLjcyMSAyMUgxMy4zNThDMTUuNTg1NCAyMSAxNi42OTkyIDIxIDE3LjYyODkgMjAuNDY3MkMxOC41NTg2IDE5LjkzNDUgMTkuMTQ4OCAxOC45NTggMjAuMzI5NCAxNy4wMDVMMjEuMDEwMiAxNS44Nzg3QzIyLjAwMzQgMTQuMjM1NyAyMi41IDEzLjQxNDIgMjIuNSAxMi41QzIyLjUgMTEuNTg1OCAyMi4wMDM0IDEwLjc2NDMgMjEuMDEwMiA5LjEyMTI2TDIwLjMyOTQgNy45OTUwMUMxOS4xNDg4IDYuMDQyMDMgMTguNTU4NiA1LjA2NTU0IDE3LjYyODkgNC41MzI3N0MxNi42OTkyIDQgMTUuNTg1NCA0IDEzLjM1OCA0SDEwLjcyMUM2Ljg0NTYxIDQgNC45MDc4OSA0IDMuNzAzOTQgNS4yNDQ4QzIuNSA2LjQ4OTU5IDIuNSA4LjQ5MzA2IDIuNSAxMi41QzIuNSAxNi41MDY5IDIuNSAxOC41MTA0IDMuNzAzOTQgMTkuNzU1MkM0LjkwNzg5IDIxIDYuODQ1NiAyMSAxMC43MjEgMjFaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcuNSA3Ljk5NTEyVjE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class TagHorizontalLinearIcon extends StatelessWidget {
  /// Creates the `tag-horizontal` icon in the linear style.
  const TagHorizontalLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M10.721 21H13.358C15.5854 21 16.6992 21 17.6289 20.4672C18.5586 19.9345 19.1488 18.958 20.3294 17.005L21.0102 15.8787C22.0034 14.2357 22.5 13.4142 22.5 12.5C22.5 11.5858 22.0034 10.7643 21.0102 9.12126L20.3294 7.99501C19.1488 6.04203 18.5586 5.06554 17.6289 4.53277C16.6992 4 15.5854 4 13.358 4H10.721C6.84561 4 4.90789 4 3.70394 5.2448C2.5 6.48959 2.5 8.49306 2.5 12.5C2.5 16.5069 2.5 18.5104 3.70394 19.7552C4.90789 21 6.8456 21 10.721 21Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.5 7.99512V17" stroke="currentColor" stroke-linecap="round"/>''',
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
