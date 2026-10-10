// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `question-mark` icon in the broken style.
class QuestionMarkBrokenIcon extends StatelessWidget {
  /// Creates the `question-mark` icon in the broken style.
  const QuestionMarkBrokenIcon({
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
    name: 'question-mark',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 6.2969C8 3.92379 9.95877 2 12.375 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.375 15.7501V12.8855C12.375 11.6198 13.4904 10.6422 14.5995 9.99769C15.8868 9.2497 16.75 7.87231 16.75 6.2969C16.75 5.22875 16.3532 4.25163 15.6964 3.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.9998 22H12.9999" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
