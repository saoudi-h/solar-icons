// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `explicit` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjQ2NDQ3IDMuNDY0NDdDMiA0LjkyODkzIDIgNy4yODU5NSAyIDEyQzIgMTYuNzE0IDIgMTkuMDcxMSAzLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyQzE2LjcxNCAyMiAxOS4wNzExIDIyIDIwLjUzNTUgMjAuNTM1NUMyMiAxOS4wNzExIDIyIDE2LjcxNCAyMiAxMkMyMiA3LjI4NTk1IDIyIDQuOTI4OTMgMjAuNTM1NSAzLjQ2NDQ3QzE5LjA3MTEgMiAxNi43MTQgMiAxMiAyQzcuMjg1OTUgMiA0LjkyODkzIDIgMy40NjQ0NyAzLjQ2NDQ3Wk04LjI1IDhDOC4yNSA3LjAzMzUgOS4wMzM1IDYuMjUgMTAgNi4yNUgxNUMxNS40MTQyIDYuMjUgMTUuNzUgNi41ODU3OSAxNS43NSA3QzE1Ljc1IDcuNDE0MjEgMTUuNDE0MiA3Ljc1IDE1IDcuNzVIMTBDOS44NjE5MyA3Ljc1IDkuNzUgNy44NjE5MyA5Ljc1IDhWMTEuMjVIMTVDMTUuNDE0MiAxMS4yNSAxNS43NSAxMS41ODU4IDE1Ljc1IDEyQzE1Ljc1IDEyLjQxNDIgMTUuNDE0MiAxMi43NSAxNSAxMi43NUg5Ljc1VjE2QzkuNzUgMTYuMTM4MSA5Ljg2MTkzIDE2LjI1IDEwIDE2LjI1SDE1QzE1LjQxNDIgMTYuMjUgMTUuNzUgMTYuNTg1OCAxNS43NSAxN0MxNS43NSAxNy40MTQyIDE1LjQxNDIgMTcuNzUgMTUgMTcuNzVIMTBDOS4wMzM1IDE3Ljc1IDguMjUgMTYuOTY2NSA4LjI1IDE2VjhaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ExplicitBoldIcon extends StatelessWidget {
  /// Creates the `explicit` icon in the bold style.
  const ExplicitBoldIcon({
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
    name: 'explicit',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447ZM8.25 8C8.25 7.0335 9.0335 6.25 10 6.25H15C15.4142 6.25 15.75 6.58579 15.75 7C15.75 7.41421 15.4142 7.75 15 7.75H10C9.86193 7.75 9.75 7.86193 9.75 8V11.25H15C15.4142 11.25 15.75 11.5858 15.75 12C15.75 12.4142 15.4142 12.75 15 12.75H9.75V16C9.75 16.1381 9.86193 16.25 10 16.25H15C15.4142 16.25 15.75 16.5858 15.75 17C15.75 17.4142 15.4142 17.75 15 17.75H10C9.0335 17.75 8.25 16.9665 8.25 16V8Z" fill="currentColor"/>''',
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
