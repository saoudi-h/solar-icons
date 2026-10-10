// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjEgOS43NUwyMSAxNEMyMSAxNy43NzEyIDIwLjk5OTcgMTkuNjU2NiAxOS44MjgxIDIwLjgyODFDMTguNjU2NiAyMS45OTk3IDE2Ljc3MTIgMjIgMTMgMjJMMTEgMjJDNy4yMjg3NiAyMiA1LjM0MzQ1IDIxLjk5OTcgNC4xNzE4NyAyMC44MjgxQzMuMDAwMyAxOS42NTY2IDMgMTcuNzcxMiAzIDE0TDMgOS43NUwyMSA5Ljc1Wk04LjUxMTcyIDE2LjIxMjlDOC4xOTc0NyAxNi40ODI0IDguMTYxNDEgMTYuOTU2MSA4LjQzMDY2IDE3LjI3MDVDOC43MDAyNSAxNy41ODQ5IDkuMTczODQgMTcuNjIxMSA5LjQ4ODI4IDE3LjM1MTZMMTIgMTUuMTk5MkwxNC41MTE3IDE3LjM1MTZDMTQuODI2MSAxNy42MjEgMTUuMjk5NyAxNy41ODU2IDE1LjU2OTMgMTcuMjcxNUMxNS44Mzg4IDE2Ljk1NzEgMTUuODAyNCAxNi40ODM1IDE1LjQ4ODMgMTYuMjEzOUwxMi40ODgzIDEzLjY0MTZDMTIuMjA3NSAxMy40MDExIDExLjc5MjUgMTMuNDAxMSAxMS41MTE3IDEzLjY0MTZMOC41MTE3MiAxNi4yMTI5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMy4wMDU4NiA4LjI1QzMuMDMzNDggNS42MTQwOSAzLjE5NzU0IDQuMTQ2MjEgNC4xNzE4NyAzLjE3MTg3QzUuMzQzNDUgMi4wMDAzIDcuMjI4NzYgMiAxMSAyTDEzIDJDMTYuNzcxMiAyIDE4LjY1NjYgMi4wMDAzIDE5LjgyODEgMy4xNzE4N0MyMC44MDI1IDQuMTQ2MjEgMjAuOTY2NSA1LjYxNDA5IDIwLjk5NDEgOC4yNUwzLjAwNTg2IDguMjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class PanelTopCloseBoldIcon extends StatelessWidget {
  /// Creates the `panel-top-close` icon in the bold style.
  const PanelTopCloseBoldIcon({
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
    name: 'panel-top-close',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21 9.75L21 14C21 17.7712 20.9997 19.6566 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22L11 22C7.22876 22 5.34345 21.9997 4.17187 20.8281C3.0003 19.6566 3 17.7712 3 14L3 9.75L21 9.75ZM8.51172 16.2129C8.19747 16.4824 8.16141 16.9561 8.43066 17.2705C8.70025 17.5849 9.17384 17.6211 9.48828 17.3516L12 15.1992L14.5117 17.3516C14.8261 17.621 15.2997 17.5856 15.5693 17.2715C15.8388 16.9571 15.8024 16.4835 15.4883 16.2139L12.4883 13.6416C12.2075 13.4011 11.7925 13.4011 11.5117 13.6416L8.51172 16.2129Z" fill="currentColor"/>
<path d="M3.00586 8.25C3.03348 5.61409 3.19754 4.14621 4.17187 3.17187C5.34345 2.0003 7.22876 2 11 2L13 2C16.7712 2 18.6566 2.0003 19.8281 3.17187C20.8025 4.14621 20.9665 5.61409 20.9941 8.25L3.00586 8.25Z" fill="currentColor"/>''',
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
