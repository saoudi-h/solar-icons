// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjkiIGN5PSI2IiByPSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIuNTgzNyA0LjIyMTQ0QzEzLjEzIDMuNDgwNTkgMTQuMDA4OCAzIDE0Ljk5OTkgM0MxNi42NTY4IDMgMTcuOTk5OSA0LjM0MzE1IDE3Ljk5OTkgNkMxNy45OTk5IDcuNjU2ODUgMTYuNjU2OCA5IDE0Ljk5OTkgOUMxNC4wMDg4IDkgMTMuMTMgOC41MTk0MSAxMi41ODM3IDcuNzc4NTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8ZWxsaXBzZSBjeD0iOSIgY3k9IjE3IiByeD0iNyIgcnk9IjQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xOCAxNEMxOS43NTQyIDE0LjM4NDcgMjEgMTUuMzU4OSAyMSAxNi41QzIxIDE3LjUyOTMgMTkuOTg2MyAxOC40MjI5IDE4LjUgMTguODcwNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class UsersGroupRoundedLineDuotoneIcon extends StatelessWidget {
  /// Creates the `users-group-rounded` icon in the lineDuotone style.
  const UsersGroupRoundedLineDuotoneIcon({
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
    name: 'users-group-rounded',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="9" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="17" rx="7" ry="4" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.5837 4.22144C13.13 3.48059 14.0088 3 14.9999 3C16.6568 3 17.9999 4.34315 17.9999 6C17.9999 7.65685 16.6568 9 14.9999 9C14.0088 9 13.13 8.51941 12.5837 7.77856" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M18 14C19.7542 14.3847 21 15.3589 21 16.5C21 17.5293 19.9863 18.4229 18.5 18.8704" stroke="currentColor" stroke-linecap="round"/>''',
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
