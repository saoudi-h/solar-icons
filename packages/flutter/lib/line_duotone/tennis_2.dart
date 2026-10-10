// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tennis-2` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuMzM5NzEgMTYuOTk5N0M2LjEwMTEzIDIxLjc4MjYgMTIuMjE3IDIzLjQyMTQgMTcgMjAuNjZDMTguOTQ5NiAxOS41MzQ0IDIwLjM3NjggMTcuODUxNCAyMS4xOTY1IDE1LjkyODZDMjIuMzg3OCAxMy4xMzQxIDIyLjI5NiA5LjgzMzA0IDIwLjY2MDIgNi45OTk3MkMxOS4wMjQ0IDQuMTY2NCAxNi4yMTE0IDIuNDM2NDIgMTMuMTk1NyAyLjA3MDg4QzExLjEyMDcgMS44MTkzNSA4Ljk0OTU3IDIuMjEzODYgNi45OTk5NiAzLjMzOTQ2QzIuMjE3MDMgNi4xMDA4OSAwLjU3ODI4MyAxMi4yMTY4IDMuMzM5NzEgMTYuOTk5N1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMy4xOTU4IDIuMDcxMjlDMTMuMTk1OCAyLjA3MTI5IDEyLjA5ODEgNi4xNyAxNC41OTgxIDEwLjUwMDFDMTcuMDk4MSAxNC44MzAzIDIxLjE5NjUgMTUuOTI5IDIxLjE5NjUgMTUuOTI5TTIuODAzNDcgOC4wNzEyOUMyLjgwMzQ3IDguMDcxMjkgNi45MDE5MSA5LjE3IDkuNDAxOTEgMTMuNTAwMUMxMS45MDE5IDE3LjgzMDMgMTAuODA0MiAyMS45MjkgMTAuODA0MiAyMS45MjkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWRhc2hhcnJheT0iMS41IDIiLz4KPC9zdmc+Cg==)
class Tennis2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `tennis-2` icon in the lineDuotone style.
  const Tennis2LineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.33971 16.9997C6.10113 21.7826 12.217 23.4214 17 20.66C18.9496 19.5344 20.3768 17.8514 21.1965 15.9286C22.3878 13.1341 22.296 9.83304 20.6602 6.99972C19.0244 4.1664 16.2114 2.43642 13.1957 2.07088C11.1207 1.81935 8.94957 2.21386 6.99996 3.33946C2.21703 6.10089 0.578283 12.2168 3.33971 16.9997Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13.1958 2.07129C13.1958 2.07129 12.0981 6.17 14.5981 10.5001C17.0981 14.8303 21.1965 15.929 21.1965 15.929M2.80347 8.07129C2.80347 8.07129 6.90191 9.17 9.40191 13.5001C11.9019 17.8303 10.8042 21.929 10.8042 21.929" stroke="currentColor" stroke-linecap="round" stroke-dasharray="1.5 2"/>''',
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
