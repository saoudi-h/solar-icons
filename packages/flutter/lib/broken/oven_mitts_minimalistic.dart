// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `oven-mitts-minimalistic` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQuMDE4OCAxNi41MzY4QzIuNjcyOTMgMTUuMjIxIDIgMTQuNTYzIDIgMTMuNzQ1NEMyIDEzLjIwODkgMi4yODk3MiAxMi43NDEyIDIuODY5MTYgMTIuMTExMkMzLjQ2MDM2IDExLjQ2ODUgMy43NTU5NSAxMS4xNDcxIDMuODg5NjggMTAuODEwOUM0LjAyMzQxIDEwLjQ3NDggNC4wMjcwNSAxMC4wOTY3IDQuMDM0MzMgOS4zNDA1Nkw0LjA2NjQ4IDUuOTk5MjNDNC4wMzIxNyAzLjgxNzMyIDUuNDQwOTMgMi4wMjY5NCA3LjIxMzA1IDIuMDAwM0M4LjY2NzU5IDEuOTc4NDMgOS45MTQ4MiAzLjE1MTU5IDEwLjMzNDEgNC43NzkyOU05LjM3MTk3IDUuNzIwMDFMMTAuMzM0MSA0Ljc3OTI5TDEwLjc5OTUgNC4zMjQyOUMxMy4zNjE4IDEuODE5MDggMTcuNTE2IDEuODE5MDggMjAuMDc4MyA0LjMyNDI5QzIyLjY0MDYgNi44Mjk1MSAyMi42NDA2IDEwLjg5MTMgMjAuMDc4MyAxMy4zOTY1TTE3LjQxNTUgMTZMMTYuNjg4IDE2LjcxMTNMMTMuMjk3NiAyMC4wMjYyQzExLjk1MTggMjEuMzQyIDExLjI3ODggMjIgMTAuNDQyNiAyMkM5LjYwNjM4IDIyIDguOTMzNDUgMjEuMzQyMSA3LjU4NzU4IDIwLjAyNjJMNi41MTY5NSAxOC45Nzk0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwLjc5OTQgMTcuNTgzNkw2LjUxNjg1IDEzLjM5NjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class OvenMittsMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `oven-mitts-minimalistic` icon in the broken style.
  const OvenMittsMinimalisticBrokenIcon({
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
    name: 'oven-mitts-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4.0188 16.5368C2.67293 15.221 2 14.563 2 13.7454C2 13.2089 2.28972 12.7412 2.86916 12.1112C3.46036 11.4685 3.75595 11.1471 3.88968 10.8109C4.02341 10.4748 4.02705 10.0967 4.03433 9.34056L4.06648 5.99923C4.03217 3.81732 5.44093 2.02694 7.21305 2.0003C8.66759 1.97843 9.91482 3.15159 10.3341 4.77929M9.37197 5.72001L10.3341 4.77929L10.7995 4.32429C13.3618 1.81908 17.516 1.81908 20.0783 4.32429C22.6406 6.82951 22.6406 10.8913 20.0783 13.3965M17.4155 16L16.688 16.7113L13.2976 20.0262C11.9518 21.342 11.2788 22 10.4426 22C9.60638 22 8.93345 21.3421 7.58758 20.0262L6.51695 18.9794" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.7994 17.5836L6.51685 13.3965" stroke="currentColor" stroke-linecap="round"/>''',
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
