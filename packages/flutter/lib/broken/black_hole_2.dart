// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `black-hole-2` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSIxMiIgcj0iMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMC4xNDE4IDEwLjM2MjhDMTMuNjg3NiA2LjgxNzA3IDIxLjkxMzcgMTUuNjEwNSAxNi41MjQyIDIxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1kYXNoYXJyYXk9IjIgMiIvPgo8cGF0aCBkPSJNMTMuODU4MiAxMy42MzcyQzEwLjMxMjQgMTcuMTgyOSAyLjA4NjM0IDguMzg5NTIgNy40NzU4NCAzLjAwMDAxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1kYXNoYXJyYXk9IjIgMiIvPgo8cGF0aCBkPSJNMTAuMzYyOCAxMy44NTc5QzYuODE3MDcgMTAuMzEyMiAxNS42MTA1IDIuMDg2MDkgMjEgNy40NzU2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1kYXNoYXJyYXk9IjIgMiIvPgo8cGF0aCBkPSJNMTMuNjM3MiAxMC4xNDIxQzE3LjE4MjkgMTMuNjg3OCA4LjM4OTUyIDIxLjkxMzkgMy4wMDAwMiAxNi41MjQ0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1kYXNoYXJyYXk9IjIgMiIvPgo8L3N2Zz4K)
class BlackHole2BrokenIcon extends StatelessWidget {
  /// Creates the `black-hole-2` icon in the broken style.
  const BlackHole2BrokenIcon({
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
    name: 'black-hole-2',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.1418 10.3628C13.6876 6.81707 21.9137 15.6105 16.5242 21" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M13.8582 13.6372C10.3124 17.1829 2.08634 8.38952 7.47584 3.00001" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M10.3628 13.8579C6.81707 10.3122 15.6105 2.08609 21 7.4756" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M13.6372 10.1421C17.1829 13.6878 8.38952 21.9139 3.00002 16.5244" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>''',
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
