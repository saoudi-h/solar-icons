// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `danger-triangle` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgM0M5LjY4OTI1IDMgOC4yMzAwNyA1LjU4NzE2IDUuMzExNzEgMTAuNzYxNUw0Ljk0ODA1IDExLjQwNjNDMi41MjI5MSAxNS43MDYxIDEuMzEwMzQgMTcuODU2IDIuNDA2MjYgMTkuNDI4QzMuNTAyMTcgMjEgNi4yMTM1NiAyMSAxMS42MzYzIDIxSDEyLjM2MzdDMTcuNzg2NCAyMSAyMC40OTc4IDIxIDIxLjU5MzcgMTkuNDI4QzIyLjY4OTcgMTcuODU2IDIxLjQ3NzEgMTUuNzA2MSAxOS4wNTE5IDExLjQwNjNMMTguNjg4MyAxMC43NjE1QzE1Ljc2OTkgNS41ODcxNiAxNC4zMTA3IDMgMTIgM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDcuMjVDMTIuNDE0MiA3LjI1IDEyLjc1IDcuNTg1NzkgMTIuNzUgOFYxM0MxMi43NSAxMy40MTQyIDEyLjQxNDIgMTMuNzUgMTIgMTMuNzVDMTEuNTg1OCAxMy43NSAxMS4yNSAxMy40MTQyIDExLjI1IDEzVjhDMTEuMjUgNy41ODU3OSAxMS41ODU4IDcuMjUgMTIgNy4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDE3QzEyLjU1MjMgMTcgMTMgMTYuNTUyMyAxMyAxNkMxMyAxNS40NDc3IDEyLjU1MjMgMTUgMTIgMTVDMTEuNDQ3NyAxNSAxMSAxNS40NDc3IDExIDE2QzExIDE2LjU1MjMgMTEuNDQ3NyAxNyAxMiAxN1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class DangerTriangleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `danger-triangle` icon in the boldDuotone style.
  const DangerTriangleBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 7.25C12.4142 7.25 12.75 7.58579 12.75 8V13C12.75 13.4142 12.4142 13.75 12 13.75C11.5858 13.75 11.25 13.4142 11.25 13V8C11.25 7.58579 11.5858 7.25 12 7.25Z" fill="currentColor"/>
<path d="M12 17C12.5523 17 13 16.5523 13 16C13 15.4477 12.5523 15 12 15C11.4477 15 11 15.4477 11 16C11 16.5523 11.4477 17 12 17Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 3C9.68925 3 8.23007 5.58716 5.31171 10.7615L4.94805 11.4063C2.52291 15.7061 1.31034 17.856 2.40626 19.428C3.50217 21 6.21356 21 11.6363 21H12.3637C17.7864 21 20.4978 21 21.5937 19.428C22.6897 17.856 21.4771 15.7061 19.0519 11.4063L18.6883 10.7615C15.7699 5.58716 14.3107 3 12 3Z" fill="currentColor"/>''',
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
