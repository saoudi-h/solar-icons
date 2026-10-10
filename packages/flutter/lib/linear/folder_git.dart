// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `folder-git` icon in the linear style.
class FolderGitLinearIcon extends StatelessWidget {
  /// Creates the `folder-git` icon in the linear style.
  const FolderGitLinearIcon({
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
    name: 'folder-git',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 6.94975C2 6.06722 2 5.62595 2.06935 5.25839C2.37464 3.64031 3.64031 2.37464 5.25839 2.06935C5.62595 2 6.06722 2 6.94975 2C7.33642 2 7.52976 2 7.71557 2.01738C8.51665 2.09229 9.27652 2.40704 9.89594 2.92051C10.0396 3.03961 10.1763 3.17633 10.4497 3.44975L11 4C11.8158 4.81578 12.2237 5.22367 12.7121 5.49543C12.9804 5.64471 13.2651 5.7626 13.5604 5.84678C14.0979 6 14.6747 6 15.8284 6H16.2021C18.8345 6 20.1506 6 21.0062 6.76946C21.0849 6.84024 21.1598 6.91514 21.2305 6.99383C22 7.84935 22 9.16554 22 11.7979V14C22 17.7712 22 19.6569 20.8284 20.8284C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14V6.94975Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.8842 11.3039C10.8842 11.8024 10.4801 12.2065 9.98165 12.2065C9.48319 12.2065 9.0791 11.8024 9.0791 11.3039C9.0791 10.8055 9.48319 10.4014 9.98165 10.4014C10.4801 10.4014 10.8842 10.8055 10.8842 11.3039Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.9213 12.3869C14.9213 12.8854 14.5172 13.2895 14.0188 13.2895C13.5203 13.2895 13.1162 12.8854 13.1162 12.3869C13.1162 11.8885 13.5203 11.4844 14.0188 11.4844C14.5172 11.4844 14.9213 11.8885 14.9213 12.3869Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.8842 16.719C10.8842 17.2174 10.4801 17.6215 9.98165 17.6215C9.48319 17.6215 9.0791 17.2174 9.0791 16.719C9.0791 16.2205 9.48319 15.8164 9.98165 15.8164C10.4801 15.8164 10.8842 16.2205 10.8842 16.719Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.98193 15.8164L9.98193 12.2062" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.0189 13.29C14.0189 14.1342 13.2136 14.5866 11.9992 14.5866C10.7849 14.5866 9.98193 14.9777 9.98193 15.8172" stroke="currentColor" stroke-linecap="round"/>''',
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
