// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `target` icon in the bold style.
class TargetBoldIcon extends StatelessWidget {
  /// Creates the `target` icon in the bold style.
  const TargetBoldIcon({
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
    name: 'target',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.2479 2C6.30929 2.36618 2.36618 6.30929 2 11.2479H4.98056C5.39592 11.2479 5.73264 11.5846 5.73264 12C5.73264 12.4154 5.39592 12.7521 4.98056 12.7521H2C2.36618 17.6907 6.30929 21.6338 11.2479 22V19.0194C11.2479 18.6041 11.5846 18.2674 12 18.2674C12.4154 18.2674 12.7521 18.6041 12.7521 19.0194V22C17.6907 21.6338 21.6338 17.6907 22 12.7521H19.0194C18.6041 12.7521 18.2674 12.4154 18.2674 12C18.2674 11.5846 18.6041 11.2479 19.0194 11.2479H22C21.6338 6.30929 17.6907 2.36618 12.7521 2V4.98056C12.7521 5.39592 12.4154 5.73264 12 5.73264C11.5846 5.73264 11.2479 5.39592 11.2479 4.98056V2ZM9.24236 12C9.24236 11.5846 9.57908 11.2479 9.99444 11.2479H11.2479V9.99444C11.2479 9.57908 11.5846 9.24236 12 9.24236C12.4154 9.24236 12.7521 9.57908 12.7521 9.99444V11.2479H14.0056C14.4209 11.2479 14.7576 11.5846 14.7576 12C14.7576 12.4154 14.4209 12.7521 14.0056 12.7521H12.7521V14.0056C12.7521 14.4209 12.4154 14.7576 12 14.7576C11.5846 14.7576 11.2479 14.4209 11.2479 14.0056V12.7521H9.99444C9.57908 12.7521 9.24236 12.4154 9.24236 12Z" fill="currentColor"/>''',
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
