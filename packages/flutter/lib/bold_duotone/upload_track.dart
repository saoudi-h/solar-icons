// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `upload-track` icon in the boldDuotone style.
class UploadTrackBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `upload-track` icon in the boldDuotone style.
  const UploadTrackBoldDuotoneIcon({
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
    name: 'upload-track',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17.4697 14.4699C17.7626 14.177 18.2374 14.177 18.5303 14.4699L21.0303 16.9699C21.3232 17.2628 21.3232 17.7375 21.0303 18.0304C20.7374 18.3233 20.2626 18.3233 19.9697 18.0304L18.75 16.8107V22.0001C18.75 22.4144 18.4142 22.7501 18 22.7501C17.5858 22.7501 17.25 22.4144 17.25 22.0001V16.8107L16.0303 18.0304C15.7374 18.3233 15.2626 18.3233 14.9697 18.0304C14.6768 17.7375 14.6768 17.2628 14.9697 16.9699L17.4697 14.4699Z" fill="currentColor"/>
<path d="M13.2031 6.88002C13.4014 6.90321 13.5807 6.97152 13.7314 7.03725C13.88 7.10203 14.0582 7.19084 14.2607 7.29213L15.6299 7.9767C15.7748 8.0489 15.9285 8.1262 16.0625 8.22866C16.404 8.48977 16.6379 8.86699 16.7188 9.2892C16.7505 9.45491 16.7502 9.6273 16.75 9.7892V9.8478C16.75 10.0745 16.7497 10.2738 16.7412 10.4357C16.7326 10.6 16.7135 10.7908 16.6455 10.9787C16.3689 11.7419 15.6032 12.2143 14.7969 12.1203C14.5986 12.0971 14.4193 12.0297 14.2686 11.964C14.12 11.8992 13.9419 11.8105 13.7393 11.7091L12.75 11.214V15.0001C12.75 16.5189 11.5188 17.7501 10 17.7501C8.48122 17.7501 7.25 16.5189 7.25 15.0001C7.25011 13.4815 8.48129 12.2501 10 12.2501C10.4501 12.2501 10.875 12.3583 11.25 12.5499V9.00014C11.2503 8.83594 11.2522 8.68919 11.2588 8.56459C11.2674 8.40038 11.2866 8.21023 11.3545 8.0226C11.631 7.25925 12.3967 6.78596 13.2031 6.88002Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C13.3261 22 14.592 21.7419 15.75 21.2731V19.7362C15.094 19.8091 14.412 19.594 13.909 19.091C13.0303 18.2123 13.0303 16.7877 13.909 15.909L16.409 13.409C17.2877 12.5303 18.7123 12.5303 19.591 13.409L21.4528 15.2709C21.8074 14.246 22 13.1455 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
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
