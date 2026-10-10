// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `paperclip-rounded-2` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIuOTUwMiAxMS4wMDg3TDEwLjAxMDQgMTMuOTM1MUM4LjM4Njg3IDE1LjU1MTMgOC4zODY4NyAxOC4xNzE2IDEwLjAxMDQgMTkuNzg3OEMxMS42MzQgMjEuNDA0IDE0LjI2NjQgMjEuNDA0IDE1Ljg4OTkgMTkuNzg3OEwxOS41NjQ2IDE2LjEyOTlDMjIuODExOCAxMi44OTc1IDIyLjgxMTggNy42NTY3IDE5LjU2NDYgNC40MjQzQzE2LjMxNzUgMS4xOTE5IDExLjA1MjggMS4xOTE5IDcuODA1NjMgNC40MjQzTDQuMTMwOTUgOC4wODIyOUMxLjI4OTY4IDEwLjkxMDYgMS4yODk2OCAxNS40OTYzIDQuMTMwOTUgMTguMzI0NyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik00LjEzMDk1IDE4LjMyNDdDMS4yODk2OCAxNS40OTYzIDEuMjg5NjggMTAuOTEwNiA0LjEzMDk1IDguMDgyMjlMNy44MDU2MyA0LjQyNDNDMTEuMDUyOCAxLjE5MTkgMTYuMzE3NSAxLjE5MTkgMTkuNTY0NiA0LjQyNDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PaperclipRounded2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `paperclip-rounded-2` icon in the lineDuotone style.
  const PaperclipRounded2LineDuotoneIcon({
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
    name: 'paperclip-rounded-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4.13095 18.3247C1.28968 15.4963 1.28968 10.9106 4.13095 8.08229L7.80563 4.4243C11.0528 1.1919 16.3175 1.1919 19.5646 4.4243" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.9502 11.0087L10.0104 13.9351C8.38687 15.5513 8.38687 18.1716 10.0104 19.7878C11.634 21.404 14.2664 21.404 15.8899 19.7878L19.5646 16.1299C22.8118 12.8975 22.8118 7.6567 19.5646 4.4243C16.3175 1.1919 11.0528 1.1919 7.80563 4.4243L4.13095 8.08229C1.28968 10.9106 1.28968 15.4963 4.13095 18.3247" stroke="currentColor" stroke-linecap="round"/>''',
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
