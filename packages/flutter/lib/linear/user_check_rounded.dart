// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iNiIgcj0iNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMSAxOEMyMSAyMC4yMDkxIDE5LjIwOTEgMjIgMTcgMjJDMTUuODg2OSAyMiAxNC44Nzk5IDIxLjU0NTMgMTQuMTU0OCAyMC44MTE1QzEzLjQ0MDggMjAuMDg5IDEzIDE5LjA5NiAxMyAxOEMxMyAxNS44OTc2IDE0LjYyMjEgMTQuMTc0IDE2LjY4MyAxNC4wMTI0QzE2Ljc4NzYgMTQuMDA0MiAxNi44OTMzIDE0IDE3IDE0QzE5LjIwOTEgMTQgMjEgMTUuNzkwOSAyMSAxOFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUuNjY2NSAxOEwxNi41IDE5TDE4LjMzMzIgMTcuMTExMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi42ODMgMTQuMDEyNEMxNS40NDMxIDEzLjM4MzggMTMuODA5MyAxMy4wMDE5IDEyLjAxOSAxMy4wMDE5QzguMTQyNTMgMTMuMDAxOSA1IDE0Ljc5MjQgNSAxNy4wMDFDNSAxOS4yMDk2IDguMTQyNTMgMjEgMTIuMDE5IDIxQzEyLjc2MzcgMjEgMTMuNDgxMyAyMC45MzM5IDE0LjE1NDggMjAuODExNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class UserCheckRoundedLinearIcon extends StatelessWidget {
  /// Creates the `user-check-rounded` icon in the linear style.
  const UserCheckRoundedLinearIcon({
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
    name: 'user-check-rounded',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 18C21 20.2091 19.2091 22 17 22C15.8869 22 14.8799 21.5453 14.1548 20.8115C13.4408 20.089 13 19.096 13 18C13 15.8976 14.6221 14.174 16.683 14.0124C16.7876 14.0042 16.8933 14 17 14C19.2091 14 21 15.7909 21 18Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.6665 18L16.5 19L18.3332 17.1111" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.683 14.0124C15.4431 13.3838 13.8093 13.0019 12.019 13.0019C8.14253 13.0019 5 14.7924 5 17.001C5 19.2096 8.14253 21 12.019 21C12.7637 21 13.4813 20.9339 14.1548 20.8115" stroke="currentColor" stroke-linecap="round"/>''',
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
