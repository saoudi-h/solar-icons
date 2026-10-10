// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zLjMzOTk1IDE2Ljk5OTdDNi4xMDEzNyAyMS43ODI2IDEyLjIxNzMgMjMuNDIxNCAxNy4wMDAyIDIwLjY2QzE4Ljk0OTggMTkuNTM0NCAyMC4zNzcgMTcuODUxNCAyMS4xOTY3IDE1LjkyODZDMjIuMzg4IDEzLjEzNDEgMjIuMjk2MyA5LjgzMzA0IDIwLjY2MDUgNi45OTk3MkMxOS4wMjQ2IDQuMTY2NCAxNi4yMTE3IDIuNDM2NDIgMTMuMTk2IDIuMDcwODhDMTEuMTIwOSAxLjgxOTM1IDguOTQ5ODEgMi4yMTM4NiA3LjAwMDIxIDMuMzM5NDZDMi4yMTcyOCA2LjEwMDg5IDAuNTc4NTI3IDEyLjIxNjggMy4zMzk5NSAxNi45OTk3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMy4xOTYgMi4wNzEyOUMxMy4xOTYgMi4wNzEyOSAxMi4wOTgzIDYuMTcgMTQuNTk4MyAxMC41MDAxQzE3LjA5ODMgMTQuODMwMyAyMS4xOTY3IDE1LjkyOSAyMS4xOTY3IDE1LjkyOU0yLjgwMzcxIDguMDcxMjlDMi44MDM3MSA4LjA3MTI5IDYuOTAyMTUgOS4xNyA5LjQwMjE1IDEzLjUwMDFDMTEuOTAyMiAxNy44MzAzIDEwLjgwNDQgMjEuOTI5IDEwLjgwNDQgMjEuOTI5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1kYXNoYXJyYXk9IjEuNSAyIi8+Cjwvc3ZnPgo=)
class Tennis2LinearIcon extends StatelessWidget {
  /// Creates the `tennis-2` icon in the linear style.
  const Tennis2LinearIcon({
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
    name: 'tennis-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.33995 16.9997C6.10137 21.7826 12.2173 23.4214 17.0002 20.66C18.9498 19.5344 20.377 17.8514 21.1967 15.9286C22.388 13.1341 22.2963 9.83304 20.6605 6.99972C19.0246 4.1664 16.2117 2.43642 13.196 2.07088C11.1209 1.81935 8.94981 2.21386 7.00021 3.33946C2.21728 6.10089 0.578527 12.2168 3.33995 16.9997Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.196 2.07129C13.196 2.07129 12.0983 6.17 14.5983 10.5001C17.0983 14.8303 21.1967 15.929 21.1967 15.929M2.80371 8.07129C2.80371 8.07129 6.90215 9.17 9.40215 13.5001C11.9022 17.8303 10.8044 21.929 10.8044 21.929" stroke="currentColor" stroke-linecap="round" stroke-dasharray="1.5 2"/>''',
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
