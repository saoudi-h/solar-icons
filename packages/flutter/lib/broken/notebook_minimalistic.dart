// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `notebook-minimalistic` icon in the broken style.
class NotebookMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `notebook-minimalistic` icon in the broken style.
  const NotebookMinimalisticBrokenIcon({
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
    name: 'notebook-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 10.5385V16.1437C22 17.2547 21.094 18.1536 19.9851 18.2229C19.0157 18.2836 17.8767 18.4021 17 18.6335C15.9185 18.9189 14.6271 19.5366 13.6276 20.0694C12.6148 20.6092 11.3852 20.6092 10.3724 20.0694C9.37293 19.5366 8.08145 18.9189 7 18.6335C6.12329 18.4021 4.98428 18.2836 4.01486 18.2229C2.90605 18.1536 2 17.2547 2 16.1437V14.0001M22 7.00012V4.93332C22 3.86087 21.1538 2.98053 20.082 3.01787C18.9534 3.05718 17.5469 3.17415 16.5 3.48757C15.5924 3.75929 14.5353 4.30431 13.6738 4.80287C12.6355 5.40379 11.3428 5.43636 10.2823 4.87558C9.29611 4.35413 8.04921 3.76443 7 3.48757C6.11349 3.25363 4.95877 3.13502 3.9824 3.07501C2.8863 3.00764 2 3.89975 2 4.99792V10.5708" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 5.27454V20.4743" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
