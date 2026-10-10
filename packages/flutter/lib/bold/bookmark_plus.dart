// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bookmark-plus` icon in the bold style.
class BookmarkPlusBoldIcon extends StatelessWidget {
  /// Creates the `bookmark-plus` icon in the bold style.
  const BookmarkPlusBoldIcon({
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
    name: 'bookmark-plus',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C16.2423 2 18.3636 2.00004 19.6816 3.33203C20.9997 4.66433 21 6.80904 21 11.0977V16.0908C21 19.1874 20.9997 20.7356 20.2656 21.4121C19.9155 21.7347 19.4737 21.9373 19.0029 21.9912C18.0159 22.1041 16.8629 21.0849 14.5576 19.0459C13.5386 18.1446 13.029 17.6939 12.4395 17.5752C12.1493 17.5168 11.8507 17.5168 11.5605 17.5752C10.971 17.6939 10.4614 18.1446 9.44238 19.0459C7.13705 21.0849 5.98415 22.1041 4.99707 21.9912C4.52632 21.9373 4.08448 21.7347 3.73438 21.4121C3.00027 20.7356 3 19.1874 3 16.0908V11.0977C3 6.80904 3.00034 4.66433 4.31836 3.33203C5.6364 2.00004 7.75768 2 12 2ZM12 5.76367C11.5858 5.76367 11.25 6.09946 11.25 6.51367V9.01367H8.75C8.3358 9.01367 8.00001 9.34947 8 9.76367C8 10.1779 8.33579 10.5137 8.75 10.5137H11.25V13.0137C11.25 13.4279 11.5858 13.7637 12 13.7637C12.4142 13.7637 12.75 13.4279 12.75 13.0137V10.5137H15.25C15.6642 10.5137 16 10.1779 16 9.76367C16 9.34947 15.6642 9.01367 15.25 9.01367H12.75V6.51367C12.75 6.09946 12.4142 5.76367 12 5.76367Z" fill="currentColor"/>''',
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
