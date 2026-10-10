// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `jar-of-pills` icon in the bold style.
class JarOfPillsBoldIcon extends StatelessWidget {
  /// Creates the `jar-of-pills` icon in the bold style.
  const JarOfPillsBoldIcon({
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
    name: 'jar-of-pills',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M19.8203 18.75C19.6676 19.2421 19.4202 19.7038 19.0879 20.1074L18.7295 20.543C17.9697 21.4656 16.8368 22 15.6416 22H8.95703C8.38592 22 8.0998 22 7.8291 21.9629C7.02647 21.8526 6.27627 21.5011 5.67773 20.9551C5.4759 20.7709 5.29237 20.551 4.92676 20.1123C4.58997 19.7081 4.33889 19.2446 4.18359 18.75H19.8203Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M20 10.9082V17.25H4V10.9229C4 10.8652 4.00144 10.8073 4.00391 10.75H19.9971C19.9991 10.8026 20 10.8553 20 10.9082ZM12 11.25C11.5858 11.25 11.25 11.5858 11.25 12V13.25H10C9.58579 13.25 9.25 13.5858 9.25 14C9.25003 14.4142 9.58581 14.75 10 14.75H11.25V16C11.25 16.4142 11.5858 16.75 12 16.75C12.4142 16.75 12.75 16.4142 12.75 16V14.75H14C14.4142 14.75 14.75 14.4142 14.75 14C14.75 13.5858 14.4142 13.25 14 13.25H12.75V12C12.75 11.5858 12.4142 11.25 12 11.25Z" fill="currentColor"/>
<path d="M18.5166 7.79883C19.0044 8.19372 19.3858 8.69276 19.6396 9.25H4.36621C4.62326 8.69156 5.00882 8.19258 5.50098 7.79883L7.75 6H16.2939L18.5166 7.79883Z" fill="currentColor"/>
<path d="M16.5 2C16.9659 2 17.199 2.00005 17.3828 2.07617C17.6277 2.17766 17.8223 2.37226 17.9238 2.61719C17.9999 2.80096 18 3.03406 18 3.5C18 3.96594 17.9999 4.19904 17.9238 4.38281C17.8223 4.62774 17.6277 4.82234 17.3828 4.92383C17.199 4.99995 16.9659 5 16.5 5H7.5C7.03406 5 6.80096 4.99995 6.61719 4.92383C6.37226 4.82234 6.17766 4.62774 6.07617 4.38281C6.00005 4.19904 6 3.96594 6 3.5C6 3.03406 6.00005 2.80096 6.07617 2.61719C6.17766 2.37226 6.37226 2.17766 6.61719 2.07617C6.80096 2.00005 7.03406 2 7.5 2H16.5Z" fill="currentColor"/>''',
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
