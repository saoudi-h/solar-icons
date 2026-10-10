// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `incoming-call-rounded` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE5IDVMMTUgOU0xOCA5SDE1VjYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNNC4wMDY1NSA3LjkzMzA5QzMuOTM0MjEgOS44NDEyMiA0LjQxNzEzIDEzLjA4MTcgNy42Njc3IDE2LjMzMjNDOC40NTE5MSAxNy4xMTY1IDkuMjM1NTMgMTcuNzM5NiAxMCAxOC4yMzI3TTUuNTM3ODEgNC45MzcyM0M2LjkzMDc2IDMuNTQ0MjggOS4xNTMxNyAzLjczMTQ0IDEwLjAzNzYgNS4zMTYxN0wxMC42ODY2IDYuNDc5MUMxMS4yNzIzIDcuNTI4NTggMTEuMDM3MiA4LjkwNTMzIDEwLjExNDcgOS44Mjc4QzEwLjExNDcgOS44Mjc4IDguOTk1NzggMTAuOTQ2NyAxMS4wMjQ1IDEyLjk3NTVDMTMuMDUzMiAxNS4wMDQyIDE0LjE3MjIgMTMuODg1MyAxNC4xNzIyIDEzLjg4NTNDMTUuMDk0NyAxMi45NjI4IDE2LjQ3MTQgMTIuNzI3NyAxNy41MjA5IDEzLjMxMzRMMTguNjgzOCAxMy45NjI0QzIwLjI2ODYgMTQuODQ2OCAyMC40NTU3IDE3LjA2OTIgMTkuMDYyOCAxOC40NjIyQzE4LjIyNTggMTkuMjk5MiAxNy4yMDA0IDE5Ljk1MDUgMTYuMDY2OSAxOS45OTM0QzE1LjI1MjkgMjAuMDI0MyAxNC4xOTYzIDE5Ljk1NDEgMTMgMTkuNjExMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class IncomingCallRoundedBrokenIcon extends StatelessWidget {
  /// Creates the `incoming-call-rounded` icon in the broken style.
  const IncomingCallRoundedBrokenIcon({
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
    name: 'incoming-call-rounded',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19 5L15 9M18 9H15V6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.00655 7.93309C3.93421 9.84122 4.41713 13.0817 7.6677 16.3323C8.45191 17.1165 9.23553 17.7396 10 18.2327M5.53781 4.93723C6.93076 3.54428 9.15317 3.73144 10.0376 5.31617L10.6866 6.4791C11.2723 7.52858 11.0372 8.90533 10.1147 9.8278C10.1147 9.8278 8.99578 10.9467 11.0245 12.9755C13.0532 15.0042 14.1722 13.8853 14.1722 13.8853C15.0947 12.9628 16.4714 12.7277 17.5209 13.3134L18.6838 13.9624C20.2686 14.8468 20.4557 17.0692 19.0628 18.4622C18.2258 19.2992 17.2004 19.9505 16.0669 19.9934C15.2529 20.0243 14.1963 19.9541 13 19.6111" stroke="currentColor" stroke-linecap="round"/>''',
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
