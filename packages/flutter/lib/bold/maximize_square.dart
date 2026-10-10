// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N0M0LjkyODkzIDIgNy4yODU5NSAyIDEyIDJDMTYuNzE0IDIgMTkuMDcxMSAyIDIwLjUzNTUgMy40NjQ0N0MyMiA0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuNTM1NSAyMC41MzU1QzE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyIDIyQzcuMjg1OTUgMjIgNC45Mjg5MyAyMiAzLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJaTTEyLjUgN0MxMi41IDYuNTg1NzkgMTIuODM1OCA2LjI1IDEzLjI1IDYuMjVIMTdDMTcuNDE0MiA2LjI1IDE3Ljc1IDYuNTg1NzkgMTcuNzUgN1YxMC43NUMxNy43NSAxMS4xNjQyIDE3LjQxNDIgMTEuNSAxNyAxMS41QzE2LjU4NTggMTEuNSAxNi4yNSAxMS4xNjQyIDE2LjI1IDEwLjc1VjguODEwNjZMOC44MTA2NiAxNi4yNUgxMC43NUMxMS4xNjQyIDE2LjI1IDExLjUgMTYuNTg1OCAxMS41IDE3QzExLjUgMTcuNDE0MiAxMS4xNjQyIDE3Ljc1IDEwLjc1IDE3Ljc1SDdDNi41ODU3OSAxNy43NSA2LjI1IDE3LjQxNDIgNi4yNSAxN1YxMy4yNUM2LjI1IDEyLjgzNTggNi41ODU3OSAxMi41IDcgMTIuNUM3LjQxNDIxIDEyLjUgNy43NSAxMi44MzU4IDcuNzUgMTMuMjVWMTUuMTg5M0wxNS4xODkzIDcuNzVIMTMuMjVDMTIuODM1OCA3Ljc1IDEyLjUgNy40MTQyMSAxMi41IDdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MaximizeSquareBoldIcon extends StatelessWidget {
  /// Creates the `maximize-square` icon in the bold style.
  const MaximizeSquareBoldIcon({
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
    name: 'maximize-square',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12ZM12.5 7C12.5 6.58579 12.8358 6.25 13.25 6.25H17C17.4142 6.25 17.75 6.58579 17.75 7V10.75C17.75 11.1642 17.4142 11.5 17 11.5C16.5858 11.5 16.25 11.1642 16.25 10.75V8.81066L8.81066 16.25H10.75C11.1642 16.25 11.5 16.5858 11.5 17C11.5 17.4142 11.1642 17.75 10.75 17.75H7C6.58579 17.75 6.25 17.4142 6.25 17V13.25C6.25 12.8358 6.58579 12.5 7 12.5C7.41421 12.5 7.75 12.8358 7.75 13.25V15.1893L15.1893 7.75H13.25C12.8358 7.75 12.5 7.41421 12.5 7Z" fill="currentColor"/>''',
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
