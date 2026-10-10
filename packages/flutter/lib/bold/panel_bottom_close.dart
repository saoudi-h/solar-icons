// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMyAxNC4yNUwzIDEwQzMgNi4yMjg3NiAzLjAwMDMgNC4zNDM0NSA0LjE3MTg3IDMuMTcxODdDNS4zNDM0NSAyLjAwMDMgNy4yMjg3NiAyIDExIDJMMTMgMkMxNi43NzEyIDIgMTguNjU2NiAyLjAwMDMgMTkuODI4MSAzLjE3MTg3QzIwLjk5OTcgNC4zNDM0NSAyMSA2LjIyODc2IDIxIDEwTDIxIDE0LjI1TDMgMTQuMjVaTTE1LjQ4ODMgNy43ODcxMUMxNS44MDI1IDcuNTE3NiAxNS44Mzg2IDcuMDQzOTMgMTUuNTY5MyA2LjcyOTQ5QzE1LjI5OTcgNi40MTUxNSAxNC44MjYyIDYuMzc4OTIgMTQuNTExNyA2LjY0ODQ0TDEyIDguODAwNzhMOS40ODgyOCA2LjY0ODQ0QzkuMTczOTMgNi4zNzkgOC43MDAzIDYuNDE0NDMgOC40MzA2NiA2LjcyODUyQzguMTYxMjEgNy4wNDI4OCA4LjE5NzYgNy41MTY1MSA4LjUxMTcyIDcuNzg2MTNMMTEuNTExNyAxMC4zNTg0QzExLjc5MjUgMTAuNTk4OSAxMi4yMDc1IDEwLjU5ODkgMTIuNDg4MyAxMC4zNTg0TDE1LjQ4ODMgNy43ODcxMVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIwLjk5NDEgMTUuNzVDMjAuOTY2NSAxOC4zODU5IDIwLjgwMjUgMTkuODUzOCAxOS44MjgxIDIwLjgyODFDMTguNjU2NiAyMS45OTk3IDE2Ljc3MTIgMjIgMTMgMjJMMTEgMjJDNy4yMjg3NiAyMiA1LjM0MzQ1IDIxLjk5OTcgNC4xNzE4NyAyMC44MjgxQzMuMTk3NTQgMTkuODUzOCAzLjAzMzQ4IDE4LjM4NTkgMy4wMDU4NiAxNS43NUwyMC45OTQxIDE1Ljc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class PanelBottomCloseBoldIcon extends StatelessWidget {
  /// Creates the `panel-bottom-close` icon in the bold style.
  const PanelBottomCloseBoldIcon({
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
    name: 'panel-bottom-close',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3 14.25L3 10C3 6.22876 3.0003 4.34345 4.17187 3.17187C5.34345 2.0003 7.22876 2 11 2L13 2C16.7712 2 18.6566 2.0003 19.8281 3.17187C20.9997 4.34345 21 6.22876 21 10L21 14.25L3 14.25ZM15.4883 7.78711C15.8025 7.5176 15.8386 7.04393 15.5693 6.72949C15.2997 6.41515 14.8262 6.37892 14.5117 6.64844L12 8.80078L9.48828 6.64844C9.17393 6.379 8.7003 6.41443 8.43066 6.72852C8.16121 7.04288 8.1976 7.51651 8.51172 7.78613L11.5117 10.3584C11.7925 10.5989 12.2075 10.5989 12.4883 10.3584L15.4883 7.78711Z" fill="currentColor"/>
<path d="M20.9941 15.75C20.9665 18.3859 20.8025 19.8538 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22L11 22C7.22876 22 5.34345 21.9997 4.17187 20.8281C3.19754 19.8538 3.03348 18.3859 3.00586 15.75L20.9941 15.75Z" fill="currentColor"/>''',
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
