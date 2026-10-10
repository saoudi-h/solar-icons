// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yLjQ0ODUzIDExLjQxMTNMMy4xODk2MiAxMi42Mjk1QzUuMjIyNzUgMTUuOTcxNiA4LjAyODE5IDE4Ljc3NzEgMTEuMzcwMyAyMC44MTAzTDEyLjU4ODYgMjEuNTUxNEMxNC40ODcyIDIyLjUyMDYgMTYuOTQyNSAyMS44OTggMTguMDAyNyAxOS44OUMxOC41MDM3IDE4Ljk0MTEgMTguOTc5OCAxNy44Nzc3IDE5LjI4MTkgMTYuODIxQzIwLjE5MDMgMTMuNjQzMiAxOS44NTcyIDEwLjg1ODQgMTkuODU3MiAxMC44NTg0TDEzLjE0MTUgNC4xNDI2M0MxMy4xNDE1IDQuMTQyNjMgMTAuMzU2NyAzLjgwOTU0IDcuMTc4OTYgNC43MTc5OEM2LjEyMjI2IDUuMDIwMDcgNS4wNTg4MyA1LjQ5NjE3IDQuMTEwMDEgNS45OTcxNUMyLjEwMjAxIDcuMDU3MzcgMS40Nzk0MyA5LjUxMjcxIDIuNDQ4NTMgMTEuNDExM1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgMkwxOS42NDI2IDQuMzU3NDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTMuMzU2NCA0LjM1NzY3QzE1LjA5MjQgMi42MjE3MiAxNy45MDY5IDIuNjIxNjMgMTkuNjQyOCA0LjM1NzU5QzIxLjM3ODggNi4wOTM1NSAyMS4zNzg4IDguOTA4MTcgMTkuNjQyOSAxMC42NDQxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BroomLinearIcon extends StatelessWidget {
  /// Creates the `broom` icon in the linear style.
  const BroomLinearIcon({
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
    name: 'broom',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2.44853 11.4113L3.18962 12.6295C5.22275 15.9716 8.02819 18.7771 11.3703 20.8103L12.5886 21.5514C14.4872 22.5206 16.9425 21.898 18.0027 19.89C18.5037 18.9411 18.9798 17.8777 19.2819 16.821C20.1903 13.6432 19.8572 10.8584 19.8572 10.8584L13.1415 4.14263C13.1415 4.14263 10.3567 3.80954 7.17896 4.71798C6.12226 5.02007 5.05883 5.49617 4.11001 5.99715C2.10201 7.05737 1.47943 9.51271 2.44853 11.4113Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 2L19.6426 4.35742" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.3564 4.35767C15.0924 2.62172 17.9069 2.62163 19.6428 4.35759C21.3788 6.09355 21.3788 8.90817 19.6429 10.6441" stroke="currentColor" stroke-linecap="round"/>''',
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
