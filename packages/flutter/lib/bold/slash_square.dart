// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `slash-square` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjQ2NDQ3IDMuNDY0NDdDMiA0LjkyODkzIDIgNy4yODU5NSAyIDEyQzIgMTYuNzE0IDIgMTkuMDcxMSAzLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyQzE2LjcxNCAyMiAxOS4wNzExIDIyIDIwLjUzNTUgMjAuNTM1NUMyMiAxOS4wNzExIDIyIDE2LjcxNCAyMiAxMkMyMiA3LjI4NTk1IDIyIDQuOTI4OTMgMjAuNTM1NSAzLjQ2NDQ3QzE5LjA3MTEgMiAxNi43MTQgMiAxMiAyQzcuMjg1OTUgMiA0LjkyODkzIDIgMy40NjQ0NyAzLjQ2NDQ3Wk0xNC4wMTg0IDcuMzY0NUMxNC4xMjU3IDYuOTY0NCAxMy44ODgyIDYuNTUzMTUgMTMuNDg4MSA2LjQ0NTk1QzEzLjA4OCA2LjMzODc0IDEyLjY3NjggNi41NzYxOCAxMi41Njk2IDYuOTc2MjhMOS45ODEzNyAxNi42MzU1QzkuODc0MTYgMTcuMDM1NiAxMC4xMTE2IDE3LjQ0NjkgMTAuNTExNyAxNy41NTQxQzEwLjkxMTggMTcuNjYxMyAxMS4zMjMgMTcuNDIzOSAxMS40MzAzIDE3LjAyMzhMMTQuMDE4NCA3LjM2NDVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class SlashSquareBoldIcon extends StatelessWidget {
  /// Creates the `slash-square` icon in the bold style.
  const SlashSquareBoldIcon({
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
    name: 'slash-square',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447ZM14.0184 7.3645C14.1257 6.9644 13.8882 6.55315 13.4881 6.44595C13.088 6.33874 12.6768 6.57618 12.5696 6.97628L9.98137 16.6355C9.87416 17.0356 10.1116 17.4469 10.5117 17.5541C10.9118 17.6613 11.323 17.4239 11.4303 17.0238L14.0184 7.3645Z" fill="currentColor"/>''',
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
