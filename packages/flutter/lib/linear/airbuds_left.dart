// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `airbuds-left` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTguNjY2N1YxOS41QzIgMjAuODgwNyAzLjExOTI5IDIyIDQuNSAyMkM1Ljg4MDcxIDIyIDcgMjAuODgwNyA3IDE5LjVWMTguNjY2N00yIDE4LjY2NjdWNy42MjVMMi4wMDAwNyA3LjU1OTM2QzIuMDE1OTEgNC40OTU2MyA0LjQ5NTYzIDIuMDE1OTEgNy41NTkzNiAyLjAwMDA3TDcuNjI1IDJMNy42NjQzOCAyLjAwMDA0QzkuNTAyNjIgMi4wMDk1NCAxMC45OTA1IDMuNDk3MzggMTEgNS4zMzU2MkwxMSA1LjM3NVY4QzExIDkuNjU2ODUgOS42NTY4NSAxMSA4IDExQzcuNDQ3NzIgMTEgNyAxMS40NDc3IDcgMTJWMTguNjY2N00yIDE4LjY2NjdINyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDVWOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjUuNSIgY3k9IjUuNSIgcj0iNS41IiB0cmFuc2Zvcm09Im1hdHJpeCgtMSAwIDAgMSAyMSAxMSkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTQgMTRWMTlIMTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTQuMDAwOSA1LjA5OTYxQzE1Ljk2IDUuNDk3MjkgMTcuNTAzMiA3LjA0MDQ2IDE3LjkwMDkgOC45OTk1OSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class AirbudsLeftLinearIcon extends StatelessWidget {
  /// Creates the `airbuds-left` icon in the linear style.
  const AirbudsLeftLinearIcon({
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
    name: 'airbuds-left',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 18.6667V19.5C2 20.8807 3.11929 22 4.5 22C5.88071 22 7 20.8807 7 19.5V18.6667M2 18.6667V7.625L2.00007 7.55936C2.01591 4.49563 4.49563 2.01591 7.55936 2.00007L7.625 2L7.66438 2.00004C9.50262 2.00954 10.9905 3.49738 11 5.33562L11 5.375V8C11 9.65685 9.65685 11 8 11C7.44772 11 7 11.4477 7 12V18.6667M2 18.6667H7" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 5V8" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5.5" cy="5.5" r="5.5" transform="matrix(-1 0 0 1 21 11)" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 14V19H17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.0009 5.09961C15.96 5.49729 17.5032 7.04046 17.9009 8.99959" stroke="currentColor" stroke-linecap="round"/>''',
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
