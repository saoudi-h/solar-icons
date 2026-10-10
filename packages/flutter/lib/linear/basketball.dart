// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `basketball` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuMzM5NDYgMTYuOTk5N0M2LjEwMDg5IDIxLjc4MjYgMTIuMjE2OCAyMy40MjE0IDE2Ljk5OTcgMjAuNjZDMTguOTQ5MyAxOS41MzQ0IDIwLjM3NjUgMTcuODUxNCAyMS4xOTYyIDE1LjkyODZDMjIuMzg3NSAxMy4xMzQxIDIyLjI5NTggOS44MzMwNCAyMC42NiA2Ljk5OTcyQzE5LjAyNDIgNC4xNjY0IDE2LjIxMTIgMi40MzY0MiAxMy4xOTU1IDIuMDcwODhDMTEuMTIwNCAxLjgxOTM1IDguOTQ5MzIgMi4yMTM4NiA2Ljk5OTcyIDMuMzM5NDZDMi4yMTY3OSA2LjEwMDg5IDAuNTc4MDM5IDEyLjIxNjggMy4zMzk0NiAxNi45OTk3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi45NDk4IDIwLjU3MzJDMTYuOTQ5OCAyMC41NzMyIDE2LjAxMDggMTMuOTgyIDE0LjAwMDUgMTAuNUMxMS45OTAxIDcuMDE3OTggNy4wNTAyOSAzLjQyNjc2IDcuMDUwMjkgMy40MjY3NiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMS44NjM4IDEyLjU4MDNDMTYuNDUyOCAxMS4zOTMzIDkuMDU5MDMgMTYuMzQ4IDcuNTc3MzkgMjAuODE3NyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi40MTQxIDMuMjA4ODRDMTQuOTI2MiA3LjYyOTkgNy42NzQ0MyAxMi41MTIyIDIuMjg4NzcgMTEuNDUxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BasketballLinearIcon extends StatelessWidget {
  /// Creates the `basketball` icon in the linear style.
  const BasketballLinearIcon({
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
    name: 'basketball',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.33946 16.9997C6.10089 21.7826 12.2168 23.4214 16.9997 20.66C18.9493 19.5344 20.3765 17.8514 21.1962 15.9286C22.3875 13.1341 22.2958 9.83304 20.66 6.99972C19.0242 4.1664 16.2112 2.43642 13.1955 2.07088C11.1204 1.81935 8.94932 2.21386 6.99972 3.33946C2.21679 6.10089 0.578039 12.2168 3.33946 16.9997Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.9498 20.5732C16.9498 20.5732 16.0108 13.982 14.0005 10.5C11.9901 7.01798 7.05029 3.42676 7.05029 3.42676" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.8638 12.5803C16.4528 11.3933 9.05903 16.348 7.57739 20.8177" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.4141 3.20884C14.9262 7.6299 7.67443 12.5122 2.28877 11.4515" stroke="currentColor" stroke-linecap="round"/>''',
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
