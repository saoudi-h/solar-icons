// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-back-circle` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDNi40NzcxNSAyMiAyIDE3LjUyMjggMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTAuNTYzNiA3LjQ2MTA1QzEwLjkwMDYgNy4yMjAyOSAxMS4zNjkgNy4yOTgzNiAxMS42MDk4IDcuNjM1NDJDMTEuODUwNiA3Ljk3MjQ4IDExLjc3MjUgOC40NDA4OSAxMS40MzU0IDguNjgxNjVMOC4yMTM4OCAxMC45ODI4QzcuNTE1OTQgMTEuNDgxMyA3LjUxNTk0IDEyLjUxODYgOC4yMTM4OCAxMy4wMTcxTDExLjQzNTQgMTUuMzE4MkMxMS43NzI1IDE1LjU1ODkgMTEuODUwNiAxNi4wMjc0IDExLjYwOTggMTYuMzY0NEMxMS4zNjkgMTYuNzAxNSAxMC45MDA2IDE2Ljc3OTUgMTAuNTYzNiAxNi41Mzg4TDcuMzQyMDIgMTQuMjM3N0M1LjgwNjU2IDEzLjE0MDkgNS44MDY1NiAxMC44NTg5IDcuMzQyMDIgOS43NjIxNUwxMC41NjM2IDcuNDYxMDVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNi40OTk2IDE1LjEzMThWOC44Njg4N0MxNi40OTk2IDguMDcwMTcgMTUuNjA5NCA3LjU5Mzc4IDE0Ljk0NDkgOC4wMzY4MkwxMC4yNDc2IDExLjE2ODNDOS42NTM5IDExLjU2NDEgOS42NTM5IDEyLjQzNjYgMTAuMjQ3NiAxMi44MzI0TDE0Ljk0NDkgMTUuOTYzOUMxNS42MDk0IDE2LjQwNjkgMTYuNDk5NiAxNS45MzA1IDE2LjQ5OTYgMTUuMTMxOFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class RewindBackCircleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `rewind-back-circle` icon in the boldDuotone style.
  const RewindBackCircleBoldDuotoneIcon({
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
    name: 'rewind-back-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.5636 7.46105C10.9006 7.22029 11.369 7.29836 11.6098 7.63542C11.8506 7.97248 11.7725 8.44089 11.4354 8.68165L8.21388 10.9828C7.51594 11.4813 7.51594 12.5186 8.21388 13.0171L11.4354 15.3182C11.7725 15.5589 11.8506 16.0274 11.6098 16.3644C11.369 16.7015 10.9006 16.7795 10.5636 16.5388L7.34202 14.2377C5.80656 13.1409 5.80656 10.8589 7.34202 9.76215L10.5636 7.46105Z" fill="currentColor"/>
<path d="M16.4996 15.1318V8.86887C16.4996 8.07017 15.6094 7.59378 14.9449 8.03682L10.2476 11.1683C9.6539 11.5641 9.6539 12.4366 10.2476 12.8324L14.9449 15.9639C15.6094 16.4069 16.4996 15.9305 16.4996 15.1318Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22Z" fill="currentColor"/>''',
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
