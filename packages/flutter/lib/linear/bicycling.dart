// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjE1IiBjeT0iNCIgcj0iMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjYiIGN5PSIxOCIgcj0iMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjE4IiBjeT0iMTgiIHI9IjMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTguNSA5Ljk5OTUxSDE2LjQ3NDRDMTUuMjUzNCA5Ljk5OTUxIDE0LjY0MjkgOS45OTk1MSAxNC4wOTM0IDkuNzcyOTJDMTMuNTQ0IDkuNTQ2MzMgMTMuMTExIDkuMTE1OTcgMTIuMjQ0OSA4LjI1NTI0TDExLjY2NzYgNy42ODE0NUMxMC44ODI4IDYuOTAxNTIgMTAuNDkwNCA2LjUxMTU1IDEwLjAyNTcgNi41NTM5QzkuNTYxMDIgNi41OTYyNCA5LjI0NTU5IDcuMDUwNzEgOC42MTQ3MSA3Ljk1OTY0TDcuMzg4MDkgOS43MjY4OUM2Ljc0NTczIDEwLjY1MjQgNi40MjQ1NCAxMS4xMTUxIDYuNTUzNDggMTEuNTY5OEM2LjY4MjQyIDEyLjAyNDYgNy4xOTg3IDEyLjI0OTggOC4yMzEyNSAxMi43MDA0TDkuNzA2OTUgMTMuMzQ0M0MxMS4wNzA5IDEzLjkzOTQgMTEuNzUyOSAxNC4yMzcgMTIuMDgxIDE0LjgzNjlDMTIuNDA5MSAxNS40MzY4IDEyLjI5MTggMTYuMTcxNSAxMi4wNTcyIDE3LjY0MTFMMTIgMTcuOTk5NSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BicyclingLinearIcon extends StatelessWidget {
  /// Creates the `bicycling` icon in the linear style.
  const BicyclingLinearIcon({
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
    name: 'bicycling',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="15" cy="4" r="2" stroke="currentColor" stroke-linecap="round"/>
<circle cx="6" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>
<circle cx="18" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.5 9.99951H16.4744C15.2534 9.99951 14.6429 9.99951 14.0934 9.77292C13.544 9.54633 13.111 9.11597 12.2449 8.25524L11.6676 7.68145C10.8828 6.90152 10.4904 6.51155 10.0257 6.5539C9.56102 6.59624 9.24559 7.05071 8.61471 7.95964L7.38809 9.72689C6.74573 10.6524 6.42454 11.1151 6.55348 11.5698C6.68242 12.0246 7.1987 12.2498 8.23125 12.7004L9.70695 13.3443C11.0709 13.9394 11.7529 14.237 12.081 14.8369C12.4091 15.4368 12.2918 16.1715 12.0572 17.6411L12 17.9995" stroke="currentColor" stroke-linecap="round"/>''',
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
