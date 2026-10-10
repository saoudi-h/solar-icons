// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `course-down` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0LjYyMDMgMTAuNjY1M0MxMy42MjI3IDkuNjczNzUgMTMuMTIzOCA5LjE3Nzk1IDEyLjUwNTEgOS4xNzgwMkMxMS44ODY0IDkuMTc4MDkgMTEuMzg3NiA5LjY3NCAxMC4zOTAyIDEwLjY2NThMMTAuMTUwOSAxMC45MDM4QzkuMTUyNTQgMTEuODk2NSA4LjY1MzM4IDEyLjM5MjkgOC4wMzQyMiAxMi4zOTI2QzcuNDE1MDYgMTIuMzkyNCA2LjkxNjI2IDExLjg5NTcgNS45MTg2NyAxMC45MDIzTDIgN00xNi40MTc5IDE4SDIyVjEyLjQ1NDJNMjIgMThMMTcuNSAxMy41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class CourseDownBrokenIcon extends StatelessWidget {
  /// Creates the `course-down` icon in the broken style.
  const CourseDownBrokenIcon({
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
    name: 'course-down',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14.6203 10.6653C13.6227 9.67375 13.1238 9.17795 12.5051 9.17802C11.8864 9.17809 11.3876 9.674 10.3902 10.6658L10.1509 10.9038C9.15254 11.8965 8.65338 12.3929 8.03422 12.3926C7.41506 12.3924 6.91626 11.8957 5.91867 10.9023L2 7M16.4179 18H22V12.4542M22 18L17.5 13.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
