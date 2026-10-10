// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-top` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuMTcxNiAyMC44Mjg0QzUuMzQzMTggMjIgNy4yMjg4IDIyIDExIDIyTDEzIDIyQzE2Ljc3MTMgMjIgMTguNjU2OSAyMiAxOS44Mjg1IDIwLjgyODRDMjEgMTkuNjU2OSAyMSAxNy43NzEyIDIxIDE0TDIxIDEwQzIxIDkuOTE1NzMgMjEuMDAwMSA5LjA4MjQgMjEuMDAwMSA5TDMuMDAwMDYgOUMzLjAwMDA1IDkuMDgyNCAzLjAwMDAzIDkuOTE1NzMgMy4wMDAwMyAxMEwzLjAwMDAzIDE0QzMuMDAwMDMgMTcuNzcxMiAzLjAwMDAzIDE5LjY1NjkgNC4xNzE2IDIwLjgyODRaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMyAyTDExIDJDNy4yMjg3NiAyIDUuMzQzMTUgMiA0LjE3MTU3IDMuMTcxNTdDMy4xOTcyNCA0LjE0NTkgMy4wMzMyMSA2LjM2NDA5IDMuMDA1NTkgOUwyMC45OTQ0IDlDMjAuOTY2OCA2LjM2NDA5IDIwLjgwMjggNC4xNDU5IDE5LjgyODQgMy4xNzE1N0MxOC42NTY5IDIgMTYuNzcxMiAyIDEzIDJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class PanelTopBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `panel-top` icon in the boldDuotone style.
  const PanelTopBoldDuotoneIcon({
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
    name: 'panel-top',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13 2L11 2C7.22876 2 5.34315 2 4.17157 3.17157C3.19724 4.1459 3.03321 6.36409 3.00559 9L20.9944 9C20.9668 6.36409 20.8028 4.1459 19.8284 3.17157C18.6569 2 16.7712 2 13 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M4.1716 20.8284C5.34318 22 7.2288 22 11 22L13 22C16.7713 22 18.6569 22 19.8285 20.8284C21 19.6569 21 17.7712 21 14L21 10C21 9.91573 21.0001 9.0824 21.0001 9L3.00006 9C3.00005 9.0824 3.00003 9.91573 3.00003 10L3.00003 14C3.00003 17.7712 3.00003 19.6569 4.1716 20.8284Z" fill="currentColor"/>''',
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
