// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDE4LjY2NjdWMTkuNUMyIDIwLjg4MDcgMy4xMTkyOSAyMiA0LjUgMjJDNS44ODA3MSAyMiA3IDIwLjg4MDcgNyAxOS41VjE4LjY2NjdNMiAxOC42NjY3VjcuNjI1TDIuMDAwMDcgNy41NTkzNkMyLjAxNTkxIDQuNDk1NjMgNC40OTU2MyAyLjAxNTkxIDcuNTU5MzYgMi4wMDAwN0w3LjYyNSAyTDcuNjY0MzggMi4wMDAwNEM5LjUwMjYyIDIuMDA5NTQgMTAuOTkwNSAzLjQ5NzM4IDExIDUuMzM1NjJMMTEgNS4zNzVWOEMxMSA5LjY1Njg1IDkuNjU2ODUgMTEgOCAxMUM3LjQ0NzcyIDExIDcgMTEuNDQ3NyA3IDEyVjE4LjY2NjdNMiAxOC42NjY3SDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCA1VjgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSI1LjUiIGN5PSI1LjUiIHI9IjUuNSIgdHJhbnNmb3JtPSJtYXRyaXgoLTEgMCAwIDEgMjEgMTEpIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0IDE0VjE5SDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE0LjAwMDkgNS4wOTk2MUMxNS45NiA1LjQ5NzI5IDE3LjUwMzIgNy4wNDA0NiAxNy45MDA5IDguOTk5NTkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
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
