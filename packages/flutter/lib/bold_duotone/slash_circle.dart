// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `slash-circle` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJDMiA2LjQ3NzE1IDYuNDc3MTUgMiAxMiAyQzE3LjUyMjggMiAyMiA2LjQ3NzE1IDIyIDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTQuMDE4OSA3LjM2NDQ3QzE0LjEyNjEgNi45NjQzNyAxMy44ODg2IDYuNTUzMTEgMTMuNDg4NSA2LjQ0NTkxQzEzLjA4ODQgNi4zMzg3IDEyLjY3NzIgNi41NzYxNCAxMi41NyA2Ljk3NjI0TDkuOTgxOCAxNi42MzU1QzkuODc0NTkgMTcuMDM1NiAxMC4xMTIgMTcuNDQ2OCAxMC41MTIxIDE3LjU1NDFDMTAuOTEyMiAxNy42NjEzIDExLjMyMzUgMTcuNDIzOCAxMS40MzA3IDE3LjAyMzdMMTQuMDE4OSA3LjM2NDQ3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class SlashCircleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `slash-circle` icon in the boldDuotone style.
  const SlashCircleBoldDuotoneIcon({
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
    name: 'slash-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.0189 7.36447C14.1261 6.96437 13.8886 6.55311 13.4885 6.44591C13.0884 6.3387 12.6772 6.57614 12.57 6.97624L9.9818 16.6355C9.87459 17.0356 10.112 17.4468 10.5121 17.5541C10.9122 17.6613 11.3235 17.4238 11.4307 17.0237L14.0189 7.36447Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" fill="currentColor"/>''',
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
