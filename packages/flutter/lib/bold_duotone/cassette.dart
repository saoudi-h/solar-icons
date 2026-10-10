// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cassette` icon in the boldDuotone style.
class CassetteBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `cassette` icon in the boldDuotone style.
  const CassetteBoldDuotoneIcon({
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
    name: 'cassette',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.17157 5.17138C2 6.34295 2 8.22857 2 11.9998C2 15.771 2 17.6567 3.17157 18.8282C4.34315 19.9998 6.22876 19.9998 10 19.9998H14C17.7712 19.9998 19.6569 19.9998 20.8284 18.8282C22 17.6567 22 15.771 22 11.9998C22 8.22857 22 6.34295 20.8284 5.17138C20.0914 4.43431 19.0717 4.16095 17.4776 4.05957L16.9733 5.4043C16.5025 6.65977 16.2671 7.28751 15.7532 7.64366C15.2393 7.99981 14.5688 7.99981 13.228 7.99981H10.772C9.43116 7.99981 8.76073 7.99981 8.24681 7.64366C7.73289 7.28751 7.49749 6.65978 7.02669 5.40431L6.52241 4.05957C4.92835 4.16095 3.90865 4.43431 3.17157 5.17138ZM8.25 11.5C7.00736 11.5 6 12.5074 6 13.75C6 14.9926 7.00736 16 8.25 16C9.49264 16 10.5 14.9926 10.5 13.75C10.5 12.5074 9.49264 11.5 8.25 11.5ZM15.75 11.5C14.5074 11.5 13.5 12.5074 13.5 13.75C13.5 14.9926 14.5074 16 15.75 16C16.9926 16 18 14.9926 18 13.75C18 12.5074 16.9926 11.5 15.75 11.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M17.5 4L16.9736 5.4043C16.5028 6.65977 16.2669 7.28741 15.7529 7.64355C15.239 7.99968 14.5684 8 13.2275 8H10.7725C9.43165 8 8.76099 7.99968 8.24707 7.64355C7.73315 7.28741 7.49717 6.65977 7.02637 5.4043L6.5 4H17.5Z" fill="currentColor"/>''',
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
