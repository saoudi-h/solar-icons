// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `history` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDhWMTJMMTQuNSAxNC41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTQuMzM3NzYgNi44NzA1Mkw1LjYwNDE0IDUuNjA0MTRDOS4xMDExNSAyLjEwNzEzIDE0Ljc5OTYgMi4xMzU3NiAxOC4zMzE5IDUuNjY4MUMyMS44NjQyIDkuMjAwNDQgMjEuODkyOSAxNC44OTg4IDE4LjM5NTkgMTguMzk1OUMxNC44OTg4IDIxLjg5MjkgOS4yMDA0NCAyMS44NjQyIDUuNjY4MSAxOC4zMzE5QzMuNTc1ODkgMTYuMjM5NyAyLjcxMjg1IDEzLjM4NzYgMy4wODM1NSAxMC42ODMxTTQuMzI0OTcgNC4zMjQ5N0w0LjMzNzc2IDYuODcwNTJMNi44ODMzMSA2Ljg4MzMxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class HistoryLinearIcon extends StatelessWidget {
  /// Creates the `history` icon in the linear style.
  const HistoryLinearIcon({
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
    name: 'history',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 8V12L14.5 14.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.33776 6.87052L5.60414 5.60414C9.10115 2.10713 14.7996 2.13576 18.3319 5.6681C21.8642 9.20044 21.8929 14.8988 18.3959 18.3959C14.8988 21.8929 9.20044 21.8642 5.6681 18.3319C3.57589 16.2397 2.71285 13.3876 3.08355 10.6831M4.32497 4.32497L4.33776 6.87052L6.88331 6.88331" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
