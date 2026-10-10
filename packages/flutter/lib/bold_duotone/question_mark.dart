// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `question-mark` icon in the boldDuotone style.
class QuestionMarkBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `question-mark` icon in the boldDuotone style.
  const QuestionMarkBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 21.25C12.4142 21.25 12.75 21.5858 12.75 22C12.75 22.4142 12.4142 22.75 12 22.75C11.5858 22.75 11.25 22.4142 11.25 22C11.25 21.5858 11.5858 21.25 12 21.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.625 15.75V12.8857C11.625 12.0189 12.0097 11.2908 12.5039 10.7188C12.9952 10.1501 13.6277 9.69535 14.2227 9.34961C15.2924 8.72801 16 7.5898 16 6.29688C16 4.35067 14.3898 2.75 12.375 2.75C10.3602 2.75002 8.75002 4.35068 8.75 6.29688C8.75 6.71109 8.41421 7.04688 8 7.04688C7.58579 7.04688 7.25 6.71109 7.25 6.29688C7.25002 3.49689 9.55734 1.25002 12.375 1.25C15.1927 1.25 17.5 3.49688 17.5 6.29688C17.5 8.15476 16.4813 9.7721 14.9766 10.6465C14.4625 10.9452 13.9823 11.3015 13.6387 11.6992C13.2981 12.0935 13.125 12.4871 13.125 12.8857V15.75C13.125 16.1642 12.7892 16.5 12.375 16.5C11.9608 16.5 11.625 16.1642 11.625 15.75Z" fill="currentColor"/>''',
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
