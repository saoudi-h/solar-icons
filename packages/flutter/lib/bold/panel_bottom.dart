// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-bottom` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xOS44Mjg0IDMuMTcxNTdDMTguNjU2OSAyIDE2Ljc3MTIgMiAxMyAyTDExIDJDNy4yMjg3NiAyIDUuMzQzMTUgMiA0LjE3MTU3IDMuMTcxNTdDMyA0LjM0MzE1IDMgNi4yMjg3NiAzIDEwTDMgMTRDMyAxNC4wODQzIDIuOTk5OTkgMTQuMTY3NiAzIDE0LjI1TDIxIDE0LjI1QzIxIDE0LjE2NzYgMjEgMTQuMDg0MyAyMSAxNEwyMSAxMEMyMSA2LjIyODc2IDIxIDQuMzQzMTUgMTkuODI4NCAzLjE3MTU3Wk0yMC45OTQ0IDE1Ljc1TDMuMDA1NTkgMTUuNzVDMy4wMzMyMSAxOC4zODU5IDMuMTk3MjQgMTkuODU0MSA0LjE3MTU3IDIwLjgyODRDNS4zNDMxNSAyMiA3LjIyODc2IDIyIDExIDIyTDEzIDIyQzE2Ljc3MTIgMjIgMTguNjU2OSAyMiAxOS44Mjg0IDIwLjgyODRDMjAuODAyOCAxOS44NTQxIDIwLjk2NjggMTguMzg1OSAyMC45OTQ0IDE1Ljc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class PanelBottomBoldIcon extends StatelessWidget {
  /// Creates the `panel-bottom` icon in the bold style.
  const PanelBottomBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M19.8284 3.17157C18.6569 2 16.7712 2 13 2L11 2C7.22876 2 5.34315 2 4.17157 3.17157C3 4.34315 3 6.22876 3 10L3 14C3 14.0843 2.99999 14.1676 3 14.25L21 14.25C21 14.1676 21 14.0843 21 14L21 10C21 6.22876 21 4.34315 19.8284 3.17157ZM20.9944 15.75L3.00559 15.75C3.03321 18.3859 3.19724 19.8541 4.17157 20.8284C5.34315 22 7.22876 22 11 22L13 22C16.7712 22 18.6569 22 19.8284 20.8284C20.8028 19.8541 20.9668 18.3859 20.9944 15.75Z" fill="currentColor"/>''',
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
