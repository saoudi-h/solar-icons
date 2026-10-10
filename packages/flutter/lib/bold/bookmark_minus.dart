// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bookmark-minus` icon in the bold style.
class BookmarkMinusBoldIcon extends StatelessWidget {
  /// Creates the `bookmark-minus` icon in the bold style.
  const BookmarkMinusBoldIcon({
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
    name: 'bookmark-minus',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C16.2423 2 18.3636 2.00004 19.6816 3.33203C20.9997 4.66433 21 6.80904 21 11.0977V16.0908C21 19.1874 20.9997 20.7356 20.2656 21.4121C19.9155 21.7347 19.4737 21.9373 19.0029 21.9912C18.0159 22.1041 16.8629 21.0849 14.5576 19.0459C13.5386 18.1446 13.029 17.6939 12.4395 17.5752C12.1493 17.5168 11.8507 17.5168 11.5605 17.5752C10.971 17.6939 10.4614 18.1446 9.44238 19.0459C7.13705 21.0849 5.98415 22.1041 4.99707 21.9912C4.52632 21.9373 4.08448 21.7347 3.73438 21.4121C3.00027 20.7356 3 19.1874 3 16.0908V11.0977C3 6.80904 3.00034 4.66433 4.31836 3.33203C5.6364 2.00004 7.75768 2 12 2ZM8.75 9.01367C8.33579 9.01367 8 9.34946 8 9.76367C8 10.1779 8.33579 10.5137 8.75 10.5137H15.25C15.6642 10.5137 16 10.1779 16 9.76367C16 9.34946 15.6642 9.01367 15.25 9.01367H8.75Z" fill="currentColor"/>''',
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
