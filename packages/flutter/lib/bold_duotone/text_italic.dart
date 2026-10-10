// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `text-italic` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik05IDEuMDAwMDJIMTQuOTc2OEMxNC45OTIgMC45OTk2NjkgMTUuMDA3MiAwLjk5OTY2NyAxNS4wMjI1IDEuMDAwMDJIMjFDMjEuNTUyMyAxLjAwMDAyIDIyIDEuNDQ3NzMgMjIgMi4wMDAwMkMyMiAyLjU1MjMgMjEuNTUyMyAzLjAwMDAyIDIxIDMuMDAwMDJIMTUuNzQ0SDEzLjY1Nkg5QzguNDQ3NzIgMy4wMDAwMiA4IDIuNTUyMyA4IDIuMDAwMDJDOCAxLjQ0NzczIDguNDQ3NzIgMS4wMDAwMiA5IDEuMDAwMDJaTTguMjU1OTcgMjFIM0MyLjQ0NzcyIDIxIDIgMjEuNDQ3NyAyIDIyQzIgMjIuNTUyMyAyLjQ0NzcyIDIzIDMgMjNIOC45Nzc1M0M4Ljk5MjgxIDIzLjAwMDQgOS4wMDgwNSAyMy4wMDA0IDkuMDIzMjUgMjNIMTVDMTUuNTUyMyAyMyAxNiAyMi41NTIzIDE2IDIyQzE2IDIxLjQ0NzcgMTUuNTUyMyAyMSAxNSAyMUgxMC4zNDRIOC4yNTU5N1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTMuNjU1OSAzTDguMjU1ODYgMjFIMTAuMzQzOUwxNS43NDM5IDNIMTMuNjU1OVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class TextItalicBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `text-italic` icon in the boldDuotone style.
  const TextItalicBoldDuotoneIcon({
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
    name: 'text-italic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9 1.00002H14.9768C14.992 0.999669 15.0072 0.999667 15.0225 1.00002H21C21.5523 1.00002 22 1.44773 22 2.00002C22 2.5523 21.5523 3.00002 21 3.00002H15.744H13.656H9C8.44772 3.00002 8 2.5523 8 2.00002C8 1.44773 8.44772 1.00002 9 1.00002ZM8.25597 21H3C2.44772 21 2 21.4477 2 22C2 22.5523 2.44772 23 3 23H8.97753C8.99281 23.0004 9.00805 23.0004 9.02325 23H15C15.5523 23 16 22.5523 16 22C16 21.4477 15.5523 21 15 21H10.344H8.25597Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M13.6559 3L8.25586 21H10.3439L15.7439 3H13.6559Z" fill="currentColor"/>''',
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
