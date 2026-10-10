// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-heart` icon in the boldDuotone style.
class UserHeartBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `user-heart` icon in the boldDuotone style.
  const UserHeartBoldDuotoneIcon({
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
    name: 'user-heart',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5 15C19.1499 15 19.9747 15.0001 20.4873 15.5127C20.9999 16.0253 21 16.8501 21 18.5C21 20.1499 20.9999 20.9747 20.4873 21.4873C19.9747 21.9999 19.1499 22 17.5 22C15.8501 22 15.0253 21.9999 14.5127 21.4873C14.0001 20.9747 14 20.1499 14 18.5C14 16.8501 14.0001 16.0253 14.5127 15.5127C15.0253 15.0001 15.8501 15 17.5 15ZM20 17.8594C19.9997 16.7297 18.6248 15.9286 17.5 17.0146C16.3752 15.9286 15.0003 16.7297 15 17.8594C15 18.8829 15.8244 19.4739 16.5264 19.9766C16.5993 20.0288 16.671 20.0801 16.7402 20.1309C16.9998 20.321 17.25 20.5 17.5 20.5C17.75 20.5 18.0002 20.321 18.2598 20.1309C18.329 20.0801 18.4007 20.0288 18.4736 19.9766C19.1756 19.4739 20 18.8829 20 17.8594Z" fill="currentColor"/>
<path d="M11 2C13.2091 2 15 3.79086 15 6C15 8.20914 13.2091 10 11 10C8.79086 10 7 8.20914 7 6C7 3.79086 8.79086 2 11 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.5942 21.5625C14.5661 21.5388 14.5389 21.5138 14.5126 21.4874C14 20.9749 14 20.1499 14 18.5C14 16.8501 14 16.0251 14.5126 15.5126C15.0251 15 15.8501 15 17.5 15C17.6501 15 17.7933 15 17.9301 15.0004C16.547 13.6551 13.9614 12.75 11 12.75C6.58172 12.75 3 14.7647 3 17.25C3 19.7353 3 21.75 11 21.75C12.4426 21.75 13.625 21.6845 14.5942 21.5625Z" fill="currentColor"/>''',
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
