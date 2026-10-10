// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `brain` icon in the linear style.
class BrainLinearIcon extends StatelessWidget {
  /// Creates the `brain` icon in the linear style.
  const BrainLinearIcon({
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
    name: 'brain',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M7.99889 21.9998C11.5995 22.0306 11.7509 19.1375 11.7509 18.741V4.60204C11.7509 3.2091 10.1826 1.97248 8.74963 2.00088C6.71718 2.04115 4.42387 3.65296 4.46233 5.85814C1.1512 7.46073 1.82374 10.7123 2.5739 12.1378C0.122706 16.1828 3.49813 21.9614 7.99889 21.9998Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5031 21.9998C11.9025 22.0306 11.7511 19.1375 11.7511 18.741V4.60204C11.7511 3.2091 13.3194 1.97248 14.7523 2.00088C16.7848 2.04115 19.0781 3.65296 19.0396 5.85814C22.3507 7.46073 21.6782 10.7123 20.928 12.1378C23.3792 16.1828 20.0038 21.9614 15.5031 21.9998Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.3465 10.2001C7.98322 10.7056 6.5361 10.0277 6.11426 8.68604M8.45538 17.2587C7.09211 17.7642 5.64498 17.0863 5.22314 15.7446M14.1549 10.2001C15.5181 10.7056 16.9653 10.0277 17.3871 8.68604M15.046 17.2587C16.4093 17.7642 17.8564 17.0863 18.2782 15.7446" stroke="currentColor" stroke-linecap="round"/>''',
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
