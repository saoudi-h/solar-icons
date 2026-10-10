// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `file-remove` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTMgMi4yNjI3VjUuMDAwM0MxMyA3LjM1NzMyIDEzIDguNTM1ODMgMTMuNzMyMiA5LjI2ODA2QzE0LjQ2NDUgMTAuMDAwMyAxNS42NDMgMTAuMDAwMyAxOCAxMC4wMDAzSDIxLjU4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNiAxOEw5IDE1TTkgMThMNiAxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0zLjE3MTM5IDMuMTcxNTdDNC4zNDI5NiAyIDYuMjM4NTEgMiAxMC4wMjk2IDJDMTEuNTU0NiAyIDEyLjMxNzMgMi4wMDAxMSAxMy4wMDkzIDIuMjY1NjJDMTMuNzAxMiAyLjUzMTE0IDE0LjI2NTEgMy4wMzg1NyAxNS4zOTI5IDQuMDUzNjVMMTkuMzUxNiA3LjYxNjIxQzIwLjY1NTggOC43ODk5OCAyMS4zMDc4IDkuMzc3NCAyMS42NTM4IDEwLjE1NDNDMjEuOTk5OCAxMC45MzEyIDIyIDExLjgwNzkgMjIgMTMuNTYyNVYxNEMyMiAxNy43NzEyIDIyIDE5LjY1NjYgMjAuODI4NCAyMC44MjgxQzE5LjY1NjkgMjEuOTk5NyAxNy43NzEyIDIyIDE0IDIyTDkuOTk2OSAyMS45OTk3QzYuMjI3NjEgMjEuOTk5NyA0LjM0Mjg0IDIxLjk5OTcgMy4xNzE1NyAyMC44Mjg0QzIgMTkuNjU2OSAyIDE3Ljc3MTIgMiAxNFY5Ljk5ODJDMiA2LjIyODE3IDIgNC4zNDI5NiAzLjE3MTM5IDMuMTcxNTdaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class FileRemoveLineDuotoneIcon extends StatelessWidget {
  /// Creates the `file-remove` icon in the lineDuotone style.
  const FileRemoveLineDuotoneIcon({
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
    name: 'file-remove',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.17139 3.17157C4.34296 2 6.23851 2 10.0296 2C11.5546 2 12.3173 2.00011 13.0093 2.26562C13.7012 2.53114 14.2651 3.03857 15.3929 4.05365L19.3516 7.61621C20.6558 8.78998 21.3078 9.3774 21.6538 10.1543C21.9998 10.9312 22 11.8079 22 13.5625V14C22 17.7712 22 19.6566 20.8284 20.8281C19.6569 21.9997 17.7712 22 14 22L9.9969 21.9997C6.22761 21.9997 4.34284 21.9997 3.17157 20.8284C2 19.6569 2 17.7712 2 14V9.9982C2 6.22817 2 4.34296 3.17139 3.17157Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 2.2627V5.0003C13 7.35732 13 8.53583 13.7322 9.26806C14.4645 10.0003 15.643 10.0003 18 10.0003H21.58" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M6 18L9 15M9 18L6 15" stroke="currentColor" stroke-linecap="round"/>''',
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
