// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zLjMzOTQ2IDE2Ljk5OTdDNi4xMDA4OSAyMS43ODI2IDEyLjIxNjggMjMuNDIxNCAxNi45OTk3IDIwLjY2QzE4Ljk0OTMgMTkuNTM0NCAyMC4zNzY1IDE3Ljg1MTQgMjEuMTk2MiAxNS45Mjg2QzIyLjM4NzUgMTMuMTM0MSAyMi4yOTU4IDkuODMzMDQgMjAuNjYgNi45OTk3MkMxOS4wMjQyIDQuMTY2NCAxNi4yMTEyIDIuNDM2NDIgMTMuMTk1NSAyLjA3MDg4QzExLjEyMDQgMS44MTkzNSA4Ljk0OTMyIDIuMjEzODYgNi45OTk3MiAzLjMzOTQ2QzIuMjE2NzkgNi4xMDA4OSAwLjU3ODAzOSAxMi4yMTY4IDMuMzM5NDYgMTYuOTk5N1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xNi45NDk3IDIwLjU3MzJDMTYuOTQ5NyAyMC41NzMyIDE2LjAxMDcgMTMuOTgyMSAxNC4wMDA0IDEwLjUwMDFDMTEuOTkgNy4wMTgwMyA3LjA1MDE4IDMuNDI2ODEgNy4wNTAxOCAzLjQyNjgxTTcuNTc3MTEgMjAuODE3NUM5LjA1ODc0IDE2LjM0NzcgMTYuNDUyNSAxMS4zOTMxIDIxLjg2MzUgMTIuNTgwMU0xNi40MTM5IDMuMjA4OThDMTQuOTI2IDcuNjMwMDQgNy42NzQyNCAxMi41MTIzIDIuMjg4NTcgMTEuNDUxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BasketballLineDuotoneIcon extends StatelessWidget {
  /// Creates the `basketball` icon in the lineDuotone style.
  const BasketballLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.33946 16.9997C6.10089 21.7826 12.2168 23.4214 16.9997 20.66C18.9493 19.5344 20.3765 17.8514 21.1962 15.9286C22.3875 13.1341 22.2958 9.83304 20.66 6.99972C19.0242 4.1664 16.2112 2.43642 13.1955 2.07088C11.1204 1.81935 8.94932 2.21386 6.99972 3.33946C2.21679 6.10089 0.578039 12.2168 3.33946 16.9997Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.9497 20.5732C16.9497 20.5732 16.0107 13.9821 14.0004 10.5001C11.99 7.01803 7.05018 3.42681 7.05018 3.42681M7.57711 20.8175C9.05874 16.3477 16.4525 11.3931 21.8635 12.5801M16.4139 3.20898C14.926 7.63004 7.67424 12.5123 2.28857 11.4516" stroke="currentColor" stroke-linecap="round"/>''',
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
