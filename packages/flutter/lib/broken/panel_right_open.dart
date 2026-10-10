// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-right-open` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuNzg4NTcgMTVMNy4yMTcxNSAxMkw5Ljc4ODU3IDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUgM0wxNSAxM00xNSAxN0wxNSAyMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDExVjEzQzIgMTYuNzcxMiAyIDE4LjY1NjkgMy4xNzE1NyAxOS44Mjg0QzQuMzQzMTUgMjEgNi4yMjg3NiAyMSAxMCAyMUgxNEMxNy43NzEyIDIxIDE5LjY1NjkgMjEgMjAuODI4NCAxOS44Mjg0QzIyIDE4LjY1NjkgMjIgMTYuNzcxMiAyMiAxM1YxMUMyMiA3LjIyODc2IDIyIDUuMzQzMTUgMjAuODI4NCA0LjE3MTU3QzE5LjY1NjkgMyAxNy43NzEyIDMgMTQgM0gxMEM2LjIyODc2IDMgNC4zNDMxNSAzIDMuMTcxNTcgNC4xNzE1N0MyLjUxODM5IDQuODI0NzUgMi4yMjkzNyA1LjY5OTg5IDIuMTAxNDkgNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class PanelRightOpenBrokenIcon extends StatelessWidget {
  /// Creates the `panel-right-open` icon in the broken style.
  const PanelRightOpenBrokenIcon({
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
    name: 'panel-right-open',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.78857 15L7.21715 12L9.78857 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15 3L15 13M15 17L15 21" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11V13C2 16.7712 2 18.6569 3.17157 19.8284C4.34315 21 6.22876 21 10 21H14C17.7712 21 19.6569 21 20.8284 19.8284C22 18.6569 22 16.7712 22 13V11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3H10C6.22876 3 4.34315 3 3.17157 4.17157C2.51839 4.82475 2.22937 5.69989 2.10149 7" stroke="currentColor" stroke-linecap="round"/>''',
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

@Deprecated(
  'The icon is the explicit open action for a right-side panel. Deprecated since 2026-09-21. Use PanelRightOpenBrokenIcon instead.',
)
typedef SidebarOpenBrokenIcon = PanelRightOpenBrokenIcon;
