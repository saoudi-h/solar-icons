// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `magnifier-check` icon in the outline style.
class MagnifierCheckOutlineIcon extends StatelessWidget {
  /// Creates the `magnifier-check` icon in the outline style.
  const MagnifierCheckOutlineIcon({
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
    name: 'magnifier-check',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M13.9082 8.53906C14.1629 8.21259 14.6343 8.15382 14.9609 8.4082C15.2874 8.66285 15.3462 9.13435 15.0918 9.46094L11.1914 14.4609C11.0522 14.6394 10.8396 14.7459 10.6133 14.75C10.4153 14.7535 10.2249 14.6788 10.083 14.5439L10.0254 14.4824L7.92578 11.9824C7.65938 11.6653 7.70045 11.1922 8.01758 10.9258C8.33473 10.6594 8.80779 10.7005 9.07422 11.0176L10.5781 12.8096L13.9082 8.53906Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 1.25C17.1609 1.25 21.75 5.83908 21.75 11.5C21.75 14.0604 20.808 16.3989 19.2559 18.1953L22.5303 21.4697C22.8228 21.7626 22.8228 22.2384 22.5303 22.5312C22.2375 22.8236 21.7625 22.8237 21.4697 22.5312L18.1953 19.2559C16.3989 20.808 14.0604 21.75 11.5 21.75C5.83908 21.75 1.25 17.1609 1.25 11.5C1.25 5.83908 5.83908 1.25 11.5 1.25ZM11.5 2.75C6.66751 2.75 2.75 6.66751 2.75 11.5C2.75 16.3325 6.66751 20.25 11.5 20.25C16.3325 20.25 20.25 16.3325 20.25 11.5C20.25 6.66751 16.3325 2.75 11.5 2.75Z" fill="currentColor"/>''',
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
