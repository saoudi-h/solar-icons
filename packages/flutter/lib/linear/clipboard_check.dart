// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clipboard-check` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2IDRDMTguMTc1IDQuMDEyMTEgMTkuMzUyOSA0LjEwODU2IDIwLjEyMTMgNC44NzY5NEMyMSA1Ljc1NTYyIDIxIDcuMTY5ODMgMjEgOS45OTgyNlYxNS45OTgzQzIxIDE4LjgyNjcgMjEgMjAuMjQwOSAyMC4xMjEzIDIxLjExOTZDMTkuMjQyNiAyMS45OTgzIDE3LjgyODQgMjEuOTk4MyAxNSAyMS45OTgzSDlDNi4xNzE1NyAyMS45OTgzIDQuNzU3MzYgMjEuOTk4MyAzLjg3ODY4IDIxLjExOTZDMyAyMC4yNDA5IDMgMTguODI2NyAzIDE1Ljk5ODNWOS45OTgyNkMzIDcuMTY5ODMgMyA1Ljc1NTYyIDMuODc4NjggNC44NzY5NEM0LjY0NzA2IDQuMTA4NTYgNS44MjQ5NyA0LjAxMjExIDggNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDEzLjRMMTAuNzE0MyAxNUwxNSAxMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDMuNUM4IDIuNjcxNTcgOC42NzE1NyAyIDkuNSAySDE0LjVDMTUuMzI4NCAyIDE2IDIuNjcxNTcgMTYgMy41VjQuNUMxNiA1LjMyODQzIDE1LjMyODQgNiAxNC41IDZIOS41QzguNjcxNTcgNiA4IDUuMzI4NDMgOCA0LjVWMy41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ClipboardCheckLinearIcon extends StatelessWidget {
  /// Creates the `clipboard-check` icon in the linear style.
  const ClipboardCheckLinearIcon({
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
    name: 'clipboard-check',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16 4C18.175 4.01211 19.3529 4.10856 20.1213 4.87694C21 5.75562 21 7.16983 21 9.99826V15.9983C21 18.8267 21 20.2409 20.1213 21.1196C19.2426 21.9983 17.8284 21.9983 15 21.9983H9C6.17157 21.9983 4.75736 21.9983 3.87868 21.1196C3 20.2409 3 18.8267 3 15.9983V9.99826C3 7.16983 3 5.75562 3.87868 4.87694C4.64706 4.10856 5.82497 4.01211 8 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 13.4L10.7143 15L15 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>''',
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
