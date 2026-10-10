// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-check` icon in the bold style.
class UserCheckBoldIcon extends StatelessWidget {
  /// Creates the `user-check` icon in the bold style.
  const UserCheckBoldIcon({
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
    name: 'user-check',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 13C13.326 13 14.5766 13.1817 15.6777 13.5029C15.2048 13.5087 14.764 13.5255 14.3799 13.5771C13.737 13.6636 13.0336 13.8707 12.4521 14.4521C11.8707 15.0336 11.6636 15.737 11.5771 16.3799C11.4995 16.9576 11.4999 17.6635 11.5 18.4141V18.5859C11.4999 19.3365 11.4995 20.0424 11.5771 20.6201C11.6378 21.0712 11.7584 21.5523 12.0254 22C12.0171 22 12.0083 22 12 22C4 22 4 19.9853 4 17.5C4 15.0147 7.58172 13 12 13Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 15C18.1499 15 18.9747 15.0001 19.4873 15.5127C19.9999 16.0253 20 16.8501 20 18.5C20 20.1499 19.9999 20.9747 19.4873 21.4873C18.9747 21.9999 18.1499 22 16.5 22C14.8501 22 14.0253 21.9999 13.5127 21.4873C13.0001 20.9747 13 20.1499 13 18.5C13 16.8501 13.0001 16.0253 13.5127 15.5127C14.0253 15.0001 14.8501 15 16.5 15ZM18.4678 16.9209C18.24 16.6933 17.8713 16.6933 17.6436 16.9209L15.7227 18.8418L15.3564 18.4766C15.1286 18.2489 14.76 18.2489 14.5322 18.4766C14.3044 18.7044 14.3044 19.074 14.5322 19.3018L15.3096 20.0791C15.5374 20.3069 15.907 20.3069 16.1348 20.0791L18.4678 17.7461C18.6956 17.5183 18.6956 17.1487 18.4678 16.9209Z" fill="currentColor"/>
<path d="M12 2C14.2091 2 16 3.79086 16 6C16 8.20914 14.2091 10 12 10C9.79086 10 8 8.20914 8 6C8 3.79086 9.79086 2 12 2Z" fill="currentColor"/>''',
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
