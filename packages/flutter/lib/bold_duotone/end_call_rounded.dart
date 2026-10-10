// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `end-call-rounded` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik02Ljk0NjkgMTYuNTE3M0w1LjYwNzIgMTYuODk3MkMzLjc4MTU4IDE3LjQxNSAyIDE1LjkxMDIgMiAxMy44NTA0QzIgMTIuNjEyNyAyLjI3NjU5IDExLjM3MyAzLjA4Mjg5IDEwLjUwMzJDNC4xMjc5IDkuMzc1NzkgNi4wMDAxNSA3LjkwNzg2IDkgNy4yOTE5OVYxMy42MTg1QzkgMTQuOTgyNiA4LjE1NTkxIDE2LjE3NDMgNi45NDY5IDE2LjUxNzNaTTE1IDEzLjYxODVDMTUgMTQuOTgyNiAxNS44NDQxIDE2LjE3NDMgMTcuMDUzMSAxNi41MTczTDE4LjM5MjggMTYuODk3MkMyMC4yMTg0IDE3LjQxNSAyMiAxNS45MTAyIDIyIDEzLjg1MDRDMjIgMTIuNjEyNyAyMS43MjM0IDExLjM3MyAyMC45MTcxIDEwLjUwMzJDMTkuODcyMSA5LjM3NTggMTcuOTk5OCA3LjkwNzg2IDE1IDcuMjkxOTlWMTMuNjE4NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNOSAxMy42MTg1QzkgMTMuNjE4NSA5IDExLjk2MzkgMTIgMTEuOTYzOUMxNSAxMS45NjM5IDE1IDEzLjYxODUgMTUgMTMuNjE4NVY3LjI5MjAzQzE0LjEwMzQgNy4xMDc5NiAxMy4xMDYxIDcgMTIgN0MxMC44OTM5IDcgOS44OTY2IDcuMTA3OTYgOSA3LjI5MjAzVjEzLjYxODVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class EndCallRoundedBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `end-call-rounded` icon in the boldDuotone style.
  const EndCallRoundedBoldDuotoneIcon({
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
    name: 'end-call-rounded',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.9469 16.5173L5.6072 16.8972C3.78158 17.415 2 15.9102 2 13.8504C2 12.6127 2.27659 11.373 3.08289 10.5032C4.1279 9.37579 6.00015 7.90786 9 7.29199V13.6185C9 14.9826 8.15591 16.1743 6.9469 16.5173ZM15 13.6185C15 14.9826 15.8441 16.1743 17.0531 16.5173L18.3928 16.8972C20.2184 17.415 22 15.9102 22 13.8504C22 12.6127 21.7234 11.373 20.9171 10.5032C19.8721 9.3758 17.9998 7.90786 15 7.29199V13.6185Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 13.6185C9 13.6185 9 11.9639 12 11.9639C15 11.9639 15 13.6185 15 13.6185V7.29203C14.1034 7.10796 13.1061 7 12 7C10.8939 7 9.8966 7.10796 9 7.29203V13.6185Z" fill="currentColor"/>''',
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
