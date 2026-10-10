// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `users-group-two-rounded` icon in the boldDuotone style.
class UsersGroupTwoRoundedBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `users-group-two-rounded` icon in the boldDuotone style.
  const UsersGroupTwoRoundedBoldDuotoneIcon({
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
    name: 'users-group-two-rounded',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 13C15.3137 13 18 14.567 18 16.5C18 18.433 15.3137 20 12 20C8.68629 20 6 18.433 6 16.5C6 14.567 8.68629 13 12 13Z" fill="currentColor"/>
<path d="M12 4C13.933 4 15.5 5.567 15.5 7.5C15.5 9.433 13.933 11 12 11C10.067 11 8.5 9.433 8.5 7.5C8.5 5.567 10.067 4 12 4Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M6 14C8.20914 14 10 15.1193 10 16.5C10 17.8807 8.20914 19 6 19C3.79086 19 2 17.8807 2 16.5C2 15.1193 3.79086 14 6 14Z" fill="currentColor"/>
<path d="M18 14C20.2091 14 22 15.1193 22 16.5C22 17.8807 20.2091 19 18 19C15.7909 19 14 17.8807 14 16.5C14 15.1193 15.7909 14 18 14Z" fill="currentColor"/>
<path d="M7 5C8.38071 5 9.5 6.11929 9.5 7.5C9.5 8.88071 8.38071 10 7 10C5.61929 10 4.5 8.88071 4.5 7.5C4.5 6.11929 5.61929 5 7 5Z" fill="currentColor"/>
<path d="M17 5C18.3807 5 19.5 6.11929 19.5 7.5C19.5 8.88071 18.3807 10 17 10C15.6193 10 14.5 8.88071 14.5 7.5C14.5 6.11929 15.6193 5 17 5Z" fill="currentColor"/>
</g>''',
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
