// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05Ljc5MjM3IDJDNi4wNTQ0IDIgNS40NDg5OSA1LjE2MTIyIDUuNDM1ODIgNi43NTM1N0M1LjQzNTgyIDguOTQ5MjkgMy44OTUxIDEwLjMyOTMgMi40NDUyNSAxMS4yNTA1QzEuODM5NTYgMTEuNjM1MyAxLjg0NzY1IDEyLjM3MjEgMi40OTUxMyAxMi43MDg5QzMuOTQ1NDMgMTMuNjI5NCA1LjQ4NjY0IDE1LjAwODUgNS40ODY2NCAxNy4yMDI3QzUuNDk5ODEgMTguNzk0IDYuMTA1NTEgMjIgOS44NDQ2NSAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNC4yMDc2IDJDMTcuOTQ1NiAyIDE4LjU1MSA1LjE2MTIyIDE4LjU2NDIgNi43NTM1N0MxOC41NjQyIDguOTQ5MjkgMjAuMTA0OSAxMC4zMjkzIDIxLjU1NDcgMTEuMjUwNUMyMi4xNjA0IDExLjYzNTMgMjIuMTUyNCAxMi4zNzIxIDIxLjUwNDkgMTIuNzA4OUMyMC4wNTQ2IDEzLjYyOTQgMTguNTEzNCAxNS4wMDg1IDE4LjUxMzQgMTcuMjAyN0MxOC41MDAyIDE4Ljc5NCAxNy44OTQ1IDIyIDE0LjE1NTMgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class BracesLinearIcon extends StatelessWidget {
  /// Creates the `braces` icon in the linear style.
  const BracesLinearIcon({
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
    name: 'braces',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9.79237 2C6.0544 2 5.44899 5.16122 5.43582 6.75357C5.43582 8.94929 3.8951 10.3293 2.44525 11.2505C1.83956 11.6353 1.84765 12.3721 2.49513 12.7089C3.94543 13.6294 5.48664 15.0085 5.48664 17.2027C5.49981 18.794 6.10551 22 9.84465 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.2076 2C17.9456 2 18.551 5.16122 18.5642 6.75357C18.5642 8.94929 20.1049 10.3293 21.5547 11.2505C22.1604 11.6353 22.1524 12.3721 21.5049 12.7089C20.0546 13.6294 18.5134 15.0085 18.5134 17.2027C18.5002 18.794 17.8945 22 14.1553 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
