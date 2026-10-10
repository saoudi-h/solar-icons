// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `microphone-large` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4IDhWMTNDMTggMTYuMzEzNyAxNS4zMTM3IDE5IDEyIDE5QzguNjg2MjkgMTkgNiAxNi4zMTM3IDYgMTNWOEM2IDQuNjg2MjkgOC42ODYyOSAyIDEyIDJDMTMuNzc3IDIgMTUuMzczNiAyLjc3MjUgMTYuNDcyMiA0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwIDYuNUMxMCA2LjUgMTAuNDcyNyA2IDEyIDZDMTMuNTI3MyA2IDE0IDYuNSAxNCA2LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAgOS41QzEwIDkuNSAxMC40NzI3IDkgMTIgOUMxMy41MjczIDkgMTQgOS41IDE0IDkuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMSAxMVYxM0MyMSAxNi41MzM3IDE4Ljk2MzQgMTkuNTkxOCAxNiAyMS4wNjQ1TTMgMTFWMTNDMyAxNy45NzA2IDcuMDI5NDQgMjIgMTIgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class MicrophoneLargeBrokenIcon extends StatelessWidget {
  /// Creates the `microphone-large` icon in the broken style.
  const MicrophoneLargeBrokenIcon({
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
    name: 'microphone-large',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M18 8V13C18 16.3137 15.3137 19 12 19C8.68629 19 6 16.3137 6 13V8C6 4.68629 8.68629 2 12 2C13.777 2 15.3736 2.7725 16.4722 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 6.5C10 6.5 10.4727 6 12 6C13.5273 6 14 6.5 14 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 9.5C10 9.5 10.4727 9 12 9C13.5273 9 14 9.5 14 9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 11V13C21 16.5337 18.9634 19.5918 16 21.0645M3 11V13C3 17.9706 7.02944 22 12 22" stroke="currentColor" stroke-linecap="round"/>''',
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
