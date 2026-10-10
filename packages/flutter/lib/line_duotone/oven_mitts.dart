// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `oven-mitts` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTMuMjk3NSAyMC4wMjYzQzEwLjE1OTkgMTYuOTU4NiA3LjAyMjMzIDEzLjg5MDkgMy44ODQ3NyAxMC44MjMyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwLjMzNDEgNC43NzkyOUM5LjkxNDgyIDMuMTUxNTkgOC42Njc1OSAxLjk3ODQzIDcuMjEzMDUgMi4wMDAzQzUuNDQwOTMgMi4wMjY5NCA0LjAzMjE3IDMuODE3MzIgNC4wNjY0OCA1Ljk5OTIzTDQuMDM0MzMgOS4zNDA1NkM0LjAyNzA1IDEwLjA5NjcgNC4wMjM0MSAxMC40NzQ4IDMuODg5NjggMTAuODEwOUMzLjc1NTk1IDExLjE0NzEgMy40NjAzNiAxMS40Njg1IDIuODY5MTYgMTIuMTExMkMyLjI4OTcyIDEyLjc0MTIgMiAxMy4yMDg5IDIgMTMuNzQ1NEMyIDE0LjU2MyAyLjY3MjkzIDE1LjIyMSA0LjAxODggMTYuNTM2OEw3LjU4NzU4IDIwLjAyNjJDOC45MzM0NSAyMS4zNDIxIDkuNjA2MzggMjIgMTAuNDQyNiAyMkMxMS4yNzg4IDIyIDExLjk1MTggMjEuMzQyIDEzLjI5NzYgMjAuMDI2MkwyMC4wNzgzIDEzLjM5NjVDMjIuNjQwNiAxMC44OTEzIDIyLjY0MDYgNi44Mjk1MSAyMC4wNzgzIDQuMzI0MjlDMTcuNTE2IDEuODE5MDggMTMuMzYxOCAxLjgxOTA4IDEwLjc5OTUgNC4zMjQyOUwxMC4zMzQxIDQuNzc5MjlaTTEwLjMzNDEgNC43NzkyOUw5LjM3MTk3IDUuNzIwMDEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class OvenMittsLineDuotoneIcon extends StatelessWidget {
  /// Creates the `oven-mitts` icon in the lineDuotone style.
  const OvenMittsLineDuotoneIcon({
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
    name: 'oven-mitts',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M10.3341 4.77929C9.91482 3.15159 8.66759 1.97843 7.21305 2.0003C5.44093 2.02694 4.03217 3.81732 4.06648 5.99923L4.03433 9.34056C4.02705 10.0967 4.02341 10.4748 3.88968 10.8109C3.75595 11.1471 3.46036 11.4685 2.86916 12.1112C2.28972 12.7412 2 13.2089 2 13.7454C2 14.563 2.67293 15.221 4.0188 16.5368L7.58758 20.0262C8.93345 21.3421 9.60638 22 10.4426 22C11.2788 22 11.9518 21.342 13.2976 20.0262L20.0783 13.3965C22.6406 10.8913 22.6406 6.82951 20.0783 4.32429C17.516 1.81908 13.3618 1.81908 10.7995 4.32429L10.3341 4.77929ZM10.3341 4.77929L9.37197 5.72001" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13.2975 20.0263C10.1599 16.9586 7.02233 13.8909 3.88477 10.8232" stroke="currentColor" stroke-linecap="round"/>''',
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
