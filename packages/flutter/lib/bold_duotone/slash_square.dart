// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `slash-square` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N0M0LjkyODkzIDIgNy4yODU5NSAyIDEyIDJDMTYuNzE0IDIgMTkuMDcxMSAyIDIwLjUzNTUgMy40NjQ0N0MyMiA0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuNTM1NSAyMC41MzU1QzE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyIDIyQzcuMjg1OTUgMjIgNC45Mjg5MyAyMiAzLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNC4wMTc5IDcuMzY0NDdDMTQuMTI1MSA2Ljk2NDM3IDEzLjg4NzcgNi41NTMxMSAxMy40ODc2IDYuNDQ1OTFDMTMuMDg3NSA2LjMzODcgMTIuNjc2MiA2LjU3NjE0IDEyLjU2OSA2Ljk3NjI0TDkuOTgwODIgMTYuNjM1NUM5Ljg3MzYxIDE3LjAzNTYgMTAuMTExMSAxNy40NDY4IDEwLjUxMTEgMTcuNTU0MUMxMC45MTEyIDE3LjY2MTMgMTEuMzIyNSAxNy40MjM4IDExLjQyOTcgMTcuMDIzN0wxNC4wMTc5IDcuMzY0NDdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class SlashSquareBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `slash-square` icon in the boldDuotone style.
  const SlashSquareBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.0179 7.36447C14.1251 6.96437 13.8877 6.55311 13.4876 6.44591C13.0875 6.3387 12.6762 6.57614 12.569 6.97624L9.98082 16.6355C9.87361 17.0356 10.1111 17.4468 10.5111 17.5541C10.9112 17.6613 11.3225 17.4238 11.4297 17.0237L14.0179 7.36447Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" fill="currentColor"/>''',
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
