// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `playlist-minimalistic-2` icon in the outline style.
class PlaylistMinimalistic2OutlineIcon extends StatelessWidget {
  /// Creates the `playlist-minimalistic-2` icon in the outline style.
  const PlaylistMinimalistic2OutlineIcon({
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
    name: 'playlist-minimalistic-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H15C15.4142 5.25 15.75 5.58579 15.75 6C15.75 6.41421 15.4142 6.75 15 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM17 7.25C17.4142 7.25 17.75 7.58579 17.75 8C17.75 9.79493 19.2051 11.25 21 11.25C21.4142 11.25 21.75 11.5858 21.75 12C21.75 12.4142 21.4142 12.75 21 12.75C19.7428 12.75 18.5997 12.2616 17.75 11.4641V16.5C17.75 18.2949 16.2949 19.75 14.5 19.75C12.7051 19.75 11.25 18.2949 11.25 16.5C11.25 14.7051 12.7051 13.25 14.5 13.25C15.1443 13.25 15.7449 13.4375 16.25 13.7609V8C16.25 7.58579 16.5858 7.25 17 7.25ZM16.25 16.5C16.25 15.5335 15.4665 14.75 14.5 14.75C13.5335 14.75 12.75 15.5335 12.75 16.5C12.75 17.4665 13.5335 18.25 14.5 18.25C15.4665 18.25 16.25 17.4665 16.25 16.5ZM2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H13C13.4142 9.25 13.75 9.58579 13.75 10C13.75 10.4142 13.4142 10.75 13 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10ZM2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H9C9.41421 13.25 9.75 13.5858 9.75 14C9.75 14.4142 9.41421 14.75 9 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14ZM2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H8C8.41421 17.25 8.75 17.5858 8.75 18C8.75 18.4142 8.41421 18.75 8 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18Z" fill="currentColor"/>''',
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
