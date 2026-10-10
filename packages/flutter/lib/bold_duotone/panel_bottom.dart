// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-bottom` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTE5LjgyODQgMy4xNzE1N0MxOC42NTY4IDIgMTYuNzcxMiAyIDEzIDJMMTEgMkM3LjIyODczIDIgNS4zNDMxMiAyIDQuMTcxNTQgMy4xNzE1N0MyLjk5OTk3IDQuMzQzMTUgMi45OTk5NyA2LjIyODc2IDIuOTk5OTcgMTBMMi45OTk5NyAxNEMyLjk5OTk3IDE0LjA4NDMgMi45OTk5MyAxNC45MTc2IDIuOTk5OTQgMTVMMjAuOTk5OSAxNUMyMSAxNC45MTc2IDIxIDE0LjA4NDMgMjEgMTRMMjEgMTBDMjEgNi4yMjg3NiAyMSA0LjM0MzE1IDE5LjgyODQgMy4xNzE1N1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTExIDIyTDEzIDIyQzE2Ljc3MTIgMjIgMTguNjU2OSAyMiAxOS44Mjg0IDIwLjgyODRDMjAuODAyOCAxOS44NTQxIDIwLjk2NjggMTcuNjM1OSAyMC45OTQ0IDE1TDMuMDA1NTkgMTVDMy4wMzMyMSAxNy42MzU5IDMuMTk3MjQgMTkuODU0MSA0LjE3MTU3IDIwLjgyODRDNS4zNDMxNSAyMiA3LjIyODc2IDIyIDExIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class PanelBottomBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `panel-bottom` icon in the boldDuotone style.
  const PanelBottomBoldDuotoneIcon({
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
    name: 'panel-bottom',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11 22L13 22C16.7712 22 18.6569 22 19.8284 20.8284C20.8028 19.8541 20.9668 17.6359 20.9944 15L3.00559 15C3.03321 17.6359 3.19724 19.8541 4.17157 20.8284C5.34315 22 7.22876 22 11 22Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M19.8284 3.17157C18.6568 2 16.7712 2 13 2L11 2C7.22873 2 5.34312 2 4.17154 3.17157C2.99997 4.34315 2.99997 6.22876 2.99997 10L2.99997 14C2.99997 14.0843 2.99993 14.9176 2.99994 15L20.9999 15C21 14.9176 21 14.0843 21 14L21 10C21 6.22876 21 4.34315 19.8284 3.17157Z" fill="currentColor"/>''',
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
