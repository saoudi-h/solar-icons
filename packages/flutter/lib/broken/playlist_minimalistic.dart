// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `playlist-minimalistic` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwIDE2SDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAgMTFIMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOS4xMjUgMTAuNjg1MkMyMC43NjcgMTEuNjMzMiAyMS41ODggMTIuMTA3MiAyMS44NDc4IDEyLjczNDRDMjIuMDUwNyAxMy4yMjQ1IDIyLjA1MDcgMTMuNzc1MSAyMS44NDc4IDE0LjI2NTFDMjEuNTg4IDE0Ljg5MjQgMjAuNzY3IDE1LjM2NjQgMTkuMTI1IDE2LjMxNDRDMTcuNDgzIDE3LjI2MjMgMTYuNjYyIDE3LjczNjMgMTUuOTg4OSAxNy42NDc3QzE1LjQ2MzEgMTcuNTc4NSAxNC45ODYyIDE3LjMwMzIgMTQuNjYzMyAxNi44ODI0QzE0LjI1IDE2LjM0MzcgMTQuMjUgMTUuMzk1OCAxNC4yNSAxMy40OTk4QzE0LjI1IDExLjYwMzggMTQuMjUgMTAuNjU1OCAxNC42NjMzIDEwLjExNzJDMTQuOTg2MiA5LjY5NjM3IDE1LjQ2MzEgOS40MjEwNiAxNS45ODg5IDkuMzUxODJDMTYuNjYyIDkuMjYzMjEgMTcuNDgzIDkuNzM3MiAxOS4xMjUgMTAuNjg1MloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjAgNkw5LjUgNk0zIDZMNS4yNSA2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PlaylistMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `playlist-minimalistic` icon in the broken style.
  const PlaylistMinimalisticBrokenIcon({
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
    name: 'playlist-minimalistic',
    style: SolarIconStyle.broken,
    body: r'''<path d="M10 16H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 11H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.125 10.6852C20.767 11.6332 21.588 12.1072 21.8478 12.7344C22.0507 13.2245 22.0507 13.7751 21.8478 14.2651C21.588 14.8924 20.767 15.3664 19.125 16.3144C17.483 17.2623 16.662 17.7363 15.9889 17.6477C15.4631 17.5785 14.9862 17.3032 14.6633 16.8824C14.25 16.3437 14.25 15.3958 14.25 13.4998C14.25 11.6038 14.25 10.6558 14.6633 10.1172C14.9862 9.69637 15.4631 9.42106 15.9889 9.35182C16.662 9.26321 17.483 9.7372 19.125 10.6852Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 6L9.5 6M3 6L5.25 6" stroke="currentColor" stroke-linecap="round"/>''',
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
