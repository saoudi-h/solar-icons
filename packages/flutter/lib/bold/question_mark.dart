// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `question-mark` icon in the bold style.
class QuestionMarkBoldIcon extends StatelessWidget {
  /// Creates the `question-mark` icon in the bold style.
  const QuestionMarkBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M13 22.25C13.4142 22.25 13.75 22.5858 13.75 23C13.75 23.4142 13.4142 23.75 13 23.75C12.5858 23.75 12.25 23.4142 12.25 23C12.25 22.5858 12.5858 22.25 13 22.25Z" fill="currentColor"/>
<path d="M13.375 2.25C16.1927 2.25 18.5 4.49688 18.5 7.29688C18.5 9.15476 17.4813 10.7721 15.9766 11.6465C15.4625 11.9452 14.9823 12.3015 14.6387 12.6992C14.2981 13.0935 14.125 13.4871 14.125 13.8857V16.75C14.125 17.1642 13.7892 17.5 13.375 17.5C12.9608 17.5 12.625 17.1642 12.625 16.75V13.8857C12.625 13.0189 13.0097 12.2908 13.5039 11.7188C13.9952 11.1501 14.6277 10.6954 15.2227 10.3496C16.2924 9.72801 17 8.5898 17 7.29688C17 5.35067 15.3898 3.75 13.375 3.75C11.3602 3.75002 9.75002 5.35068 9.75 7.29688C9.75 7.71109 9.41421 8.04688 9 8.04688C8.58579 8.04688 8.25 7.71109 8.25 7.29688C8.25002 4.49689 10.5573 2.25002 13.375 2.25Z" fill="currentColor"/>''',
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
