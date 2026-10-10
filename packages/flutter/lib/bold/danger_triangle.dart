// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNS4zMTE3MSAxMC43NjE1QzguMjMwMDcgNS41ODcxNiA5LjY4OTI1IDMgMTIgM0MxNC4zMTA3IDMgMTUuNzY5OSA1LjU4NzE2IDE4LjY4ODMgMTAuNzYxNUwxOS4wNTE5IDExLjQwNjNDMjEuNDc3MSAxNS43MDYxIDIyLjY4OTcgMTcuODU2IDIxLjU5MzcgMTkuNDI4QzIwLjQ5NzggMjEgMTcuNzg2NCAyMSAxMi4zNjM3IDIxSDExLjYzNjNDNi4yMTM1NiAyMSAzLjUwMjE3IDIxIDIuNDA2MjYgMTkuNDI4QzEuMzEwMzQgMTcuODU2IDIuNTIyOTEgMTUuNzA2MSA0Ljk0ODA1IDExLjQwNjNMNS4zMTE3MSAxMC43NjE1Wk0xMiA3LjI1QzEyLjQxNDIgNy4yNSAxMi43NSA3LjU4NTc5IDEyLjc1IDhWMTNDMTIuNzUgMTMuNDE0MiAxMi40MTQyIDEzLjc1IDEyIDEzLjc1QzExLjU4NTggMTMuNzUgMTEuMjUgMTMuNDE0MiAxMS4yNSAxM1Y4QzExLjI1IDcuNTg1NzkgMTEuNTg1OCA3LjI1IDEyIDcuMjVaTTEyIDE3QzEyLjU1MjMgMTcgMTMgMTYuNTUyMyAxMyAxNkMxMyAxNS40NDc3IDEyLjU1MjMgMTUgMTIgMTVDMTEuNDQ3NyAxNSAxMSAxNS40NDc3IDExIDE2QzExIDE2LjU1MjMgMTEuNDQ3NyAxNyAxMiAxN1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class DangerTriangleBoldIcon extends StatelessWidget {
  /// Creates the `danger-triangle` icon in the bold style.
  const DangerTriangleBoldIcon({
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
    name: 'danger-triangle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M5.31171 10.7615C8.23007 5.58716 9.68925 3 12 3C14.3107 3 15.7699 5.58716 18.6883 10.7615L19.0519 11.4063C21.4771 15.7061 22.6897 17.856 21.5937 19.428C20.4978 21 17.7864 21 12.3637 21H11.6363C6.21356 21 3.50217 21 2.40626 19.428C1.31034 17.856 2.52291 15.7061 4.94805 11.4063L5.31171 10.7615ZM12 7.25C12.4142 7.25 12.75 7.58579 12.75 8V13C12.75 13.4142 12.4142 13.75 12 13.75C11.5858 13.75 11.25 13.4142 11.25 13V8C11.25 7.58579 11.5858 7.25 12 7.25ZM12 17C12.5523 17 13 16.5523 13 16C13 15.4477 12.5523 15 12 15C11.4477 15 11 15.4477 11 16C11 16.5523 11.4477 17 12 17Z" fill="currentColor"/>''',
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
