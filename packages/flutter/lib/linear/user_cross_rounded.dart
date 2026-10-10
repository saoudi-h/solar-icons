// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-cross-rounded` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSI2IiByPSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1LjY2NjUgMTYuNjY2N0wxOC4zMzMyIDE5LjMzMzNNMTguMzMzNSAxNi42NjY3TDE1LjY2NjggMTkuMzMzMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMSAxOEMyMSAyMC4yMDkxIDE5LjIwOTEgMjIgMTcgMjJDMTUuODg2OSAyMiAxNC44Nzk5IDIxLjU0NTMgMTQuMTU0OCAyMC44MTE1QzEzLjQ0MDggMjAuMDg5IDEzIDE5LjA5NiAxMyAxOEMxMyAxNS44OTc2IDE0LjYyMjEgMTQuMTc0IDE2LjY4MyAxNC4wMTI0QzE2Ljc4NzYgMTQuMDA0MiAxNi44OTMzIDE0IDE3IDE0QzE5LjIwOTEgMTQgMjEgMTUuNzkwOSAyMSAxOFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYuNjgzIDE0LjAxMjRDMTUuNDQzMSAxMy4zODM4IDEzLjgwOTMgMTMuMDAxOSAxMi4wMTkgMTMuMDAxOUM4LjE0MjUzIDEzLjAwMTkgNSAxNC43OTI0IDUgMTcuMDAxQzUgMTkuMjA5NiA4LjE0MjUzIDIxIDEyLjAxOSAyMUMxMi43NjM3IDIxIDEzLjQ4MTMgMjAuOTMzOSAxNC4xNTQ4IDIwLjgxMTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class UserCrossRoundedLinearIcon extends StatelessWidget {
  /// Creates the `user-cross-rounded` icon in the linear style.
  const UserCrossRoundedLinearIcon({
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
    name: 'user-cross-rounded',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.6665 16.6667L18.3332 19.3333M18.3335 16.6667L15.6668 19.3333" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M21 18C21 20.2091 19.2091 22 17 22C15.8869 22 14.8799 21.5453 14.1548 20.8115C13.4408 20.089 13 19.096 13 18C13 15.8976 14.6221 14.174 16.683 14.0124C16.7876 14.0042 16.8933 14 17 14C19.2091 14 21 15.7909 21 18Z" stroke="currentColor" stroke-linecap="round"/>
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
