// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `users-group-rounded` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iOSIgY3k9IjYiIHI9IjQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMi41ODM3IDQuMjIxNDRDMTMuMTMgMy40ODA1OSAxNC4wMDg4IDMgMTQuOTk5OSAzQzE2LjY1NjggMyAxNy45OTk5IDQuMzQzMTUgMTcuOTk5OSA2QzE3Ljk5OTkgNy42NTY4NSAxNi42NTY4IDkgMTQuOTk5OSA5QzE0LjAwODggOSAxMy4xMyA4LjUxOTQxIDEyLjU4MzcgNy43Nzg1NiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxlbGxpcHNlIGN4PSI5IiBjeT0iMTciIHJ4PSI3IiByeT0iNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE4IDE0QzE5Ljc1NDIgMTQuMzg0NyAyMSAxNS4zNTg5IDIxIDE2LjVDMjEgMTcuNTI5MyAxOS45ODYzIDE4LjQyMjkgMTguNSAxOC44NzA0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
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
