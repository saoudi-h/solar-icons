// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE1LjAyIDEzLjMzMTdDMTQuMDg4MiAxMy4xMTc4IDEzLjA2ODUgMTMgMTIgMTNDNy41ODE3MiAxMyA0IDE1LjAxNDcgNCAxNy41QzQgMTkuOTg1MyA0IDIyIDEyIDIyQzE3LjU3OTQgMjIgMTkuMjY3NiAyMS4wMiAxOS43Nzg0IDE5LjU4MzkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSIxMiIgY3k9IjYiIHI9IjQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYuNjY2NSAxNC42NjY3TDE5LjMzMzIgMTcuMzMzM00xOS4zMzM1IDE0LjY2NjdMMTYuNjY2OCAxNy4zMzMzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIyIDE2QzIyIDE4LjIwOTEgMjAuMjA5MSAyMCAxOCAyMEMxNS43OTA5IDIwIDE0IDE4LjIwOTEgMTQgMTZDMTQgMTMuNzkwOSAxNS43OTA5IDEyIDE4IDEyQzIwLjIwOTEgMTIgMjIgMTMuNzkwOSAyMiAxNloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class UserCrossLineDuotoneIcon extends StatelessWidget {
  /// Creates the `user-cross` icon in the lineDuotone style.
  const UserCrossLineDuotoneIcon({
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
    name: 'user-cross',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.6665 14.6667L19.3332 17.3333M19.3335 14.6667L16.6668 17.3333" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 16C22 18.2091 20.2091 20 18 20C15.7909 20 14 18.2091 14 16C14 13.7909 15.7909 12 18 12C20.2091 12 22 13.7909 22 16Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.02 13.3317C14.0882 13.1178 13.0685 13 12 13C7.58172 13 4 15.0147 4 17.5C4 19.9853 4 22 12 22C17.5794 22 19.2676 21.02 19.7784 19.5839" stroke="currentColor" stroke-linecap="round"/>''',
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
