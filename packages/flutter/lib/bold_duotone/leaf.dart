// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `leaf` icon in the boldDuotone style.
class LeafBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `leaf` icon in the boldDuotone style.
  const LeafBoldDuotoneIcon({
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
    name: 'leaf',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 22C7.58172 22 4 18.3539 4 13.8564C4.0001 9.39433 6.55344 4.18719 10.5371 2.3252C11.0014 2.10821 11.5008 2 12 2V22Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2C12.4992 2 12.9986 2.10821 13.4629 2.3252C14.5712 2.84325 15.5689 3.62056 16.4316 4.56836C17.3062 5.52916 18.0422 6.66557 18.6143 7.88574C19.1839 9.10061 19.5906 10.399 19.8105 11.6895C19.935 12.4197 20 13.1474 20 13.8564C20 18.3539 16.4183 22 12 22V2Z" fill="currentColor"/>

<path opacity="0.5" d="M16.4316 4.56836C17.3062 5.52916 18.0422 6.66557 18.6143 7.88574C19.1839 9.10061 19.5906 10.399 19.8105 11.6895C19.935 12.4197 20 13.1474 20 13.8564C20 18.3539 16.4183 22 12 22V9L16.4316 4.56836Z" fill="currentColor"/>

<path opacity="0.5" d="M18.6143 7.88574C19.1839 9.10061 19.5906 10.399 19.8105 11.6895C19.935 12.4197 20 13.1474 20 13.8564C20 18.3539 16.4183 22 12 22V14.5L18.6143 7.88574Z" fill="currentColor"/>

<path opacity="0.5" d="M19.8105 11.6895C19.935 12.4197 20 13.1474 20 13.8564C20 18.3539 16.4183 22 12 22V19.5L19.8105 11.6895Z" fill="currentColor"/>''',
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
