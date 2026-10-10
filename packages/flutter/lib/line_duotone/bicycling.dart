// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjE1IiBjeT0iNCIgcj0iMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iNiIgY3k9IjE4IiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxOCIgY3k9IjE4IiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE4LjUgOS45OTk1MUgxNi40NzQ0QzE1LjI1MzQgOS45OTk1MSAxNC42NDI5IDkuOTk5NTEgMTQuMDkzNCA5Ljc3MjkyQzEzLjU0NCA5LjU0NjMzIDEzLjExMSA5LjExNTk3IDEyLjI0NDkgOC4yNTUyNEwxMS42Njc2IDcuNjgxNDVDMTAuODgyOCA2LjkwMTUyIDEwLjQ5MDQgNi41MTE1NSAxMC4wMjU3IDYuNTUzOUM5LjU2MTAyIDYuNTk2MjQgOS4yNDU1OSA3LjA1MDcxIDguNjE0NzEgNy45NTk2NEw3LjM4ODA5IDkuNzI2ODlDNi43NDU3MyAxMC42NTI0IDYuNDI0NTQgMTEuMTE1MSA2LjU1MzQ4IDExLjU2OThDNi42ODI0MiAxMi4wMjQ2IDcuMTk4NyAxMi4yNDk4IDguMjMxMjUgMTIuNzAwNEw5LjcwNjk1IDEzLjM0NDNDMTEuMDcwOSAxMy45Mzk0IDExLjc1MjkgMTQuMjM3IDEyLjA4MSAxNC44MzY5QzEyLjQwOTEgMTUuNDM2OCAxMi4yOTE4IDE2LjE3MTUgMTIuMDU3MiAxNy42NDExTDEyIDE3Ljk5OTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BicyclingLineDuotoneIcon extends StatelessWidget {
  /// Creates the `bicycling` icon in the lineDuotone style.
  const BicyclingLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="15" cy="4" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.5 9.99951H16.4744C15.2534 9.99951 14.6429 9.99951 14.0934 9.77292C13.544 9.54633 13.111 9.11597 12.2449 8.25524L11.6676 7.68145C10.8828 6.90152 10.4904 6.51155 10.0257 6.5539C9.56102 6.59624 9.24559 7.05071 8.61471 7.95964L7.38809 9.72689C6.74573 10.6524 6.42454 11.1151 6.55348 11.5698C6.68242 12.0246 7.1987 12.2498 8.23125 12.7004L9.70695 13.3443C11.0709 13.9394 11.7529 14.237 12.081 14.8369C12.4091 15.4368 12.2918 16.1715 12.0572 17.6411L12 17.9995" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="6" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>

<circle opacity="0.5" cx="18" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>''',
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
