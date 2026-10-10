// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `webcam` icon in the outline style.
class WebcamOutlineIcon extends StatelessWidget {
  /// Creates the `webcam` icon in the outline style.
  const WebcamOutlineIcon({
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
    name: 'webcam',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9998 6.25029C14.0709 6.25029 15.7498 7.92922 15.7498 10.0003C15.7496 12.0712 14.0707 13.7503 11.9998 13.7503C9.92891 13.7502 8.25002 12.0711 8.2498 10.0003C8.2498 7.92925 9.92877 6.25034 11.9998 6.25029ZM11.9998 7.75029C10.7572 7.75034 9.7498 8.75768 9.7498 10.0003C9.75002 11.2427 10.7573 12.2502 11.9998 12.2503C13.2423 12.2503 14.2496 11.2427 14.2498 10.0003C14.2498 8.75765 13.2424 7.75029 11.9998 7.75029Z" fill="currentColor"/>
<path d="M11.9998 3.75127C12.414 3.75127 12.7498 4.08705 12.7498 4.50127C12.7496 4.9153 12.4139 5.25127 11.9998 5.25127C11.5858 5.25122 11.25 4.91527 11.2498 4.50127C11.2498 4.08708 11.5856 3.75131 11.9998 3.75127Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9412 1.25029C16.7688 1.28925 20.7108 5.23127 20.7498 10.0589C20.7867 14.6629 17.2608 18.4093 12.7498 18.7259V21.2503H15.9998C16.414 21.2503 16.7498 21.5861 16.7498 22.0003C16.7496 22.4143 16.4139 22.7503 15.9998 22.7503H7.9998C7.58576 22.7502 7.25002 22.4143 7.2498 22.0003C7.2498 21.5861 7.58563 21.2503 7.9998 21.2503H11.2498V18.7044C6.79841 18.2608 3.28676 14.4965 3.2498 9.9417C3.21082 5.10473 7.10426 1.21135 11.9412 1.25029ZM11.9295 2.75029C7.93033 2.71806 4.71753 5.93081 4.7498 9.92998C4.78252 13.9382 8.06187 17.2177 12.0701 17.2503C16.0692 17.2826 19.2819 14.0696 19.2498 10.0706C19.2173 6.06218 15.9379 2.78279 11.9295 2.75029Z" fill="currentColor"/>''',
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
