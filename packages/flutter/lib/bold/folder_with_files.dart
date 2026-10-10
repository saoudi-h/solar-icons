// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `folder-with-files` icon in the bold style.
class FolderWithFilesBoldIcon extends StatelessWidget {
  /// Creates the `folder-with-files` icon in the bold style.
  const FolderWithFilesBoldIcon({
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
    name: 'folder-with-files',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.9502 2C7.33657 2 7.53009 2.00021 7.71582 2.01758C8.51677 2.09253 9.27617 2.40751 9.89551 2.9209C10.0392 3.04 10.1768 3.17677 10.4502 3.4502L11 4C11.8156 4.81562 12.2236 5.22336 12.7119 5.49512C12.9802 5.6444 13.2653 5.76251 13.5605 5.84668C14.098 5.99985 14.6748 6 15.8281 6H16.2021C18.8343 6 20.1503 6.0002 21.0059 6.76953C21.0846 6.84031 21.1597 6.91545 21.2305 6.99414C21.9998 7.84966 22 9.16566 22 11.7979V14C22 17.7712 21.9997 19.6566 20.8281 20.8281C19.6566 21.9997 17.7712 22 14 22H10C6.22876 22 4.34345 21.9997 3.17188 20.8281C2.0003 19.6566 2 17.7712 2 14V6.9502C2 6.06798 2.00006 5.62628 2.06934 5.25879C2.37463 3.64071 3.64071 2.37463 5.25879 2.06934C5.62628 2.00006 6.06798 2 6.9502 2ZM13 9.25C12.5858 9.25 12.25 9.58579 12.25 10C12.25 10.4142 12.5858 10.75 13 10.75H18C18.4142 10.75 18.75 10.4142 18.75 10C18.75 9.58579 18.4142 9.25 18 9.25H13Z" fill="currentColor"/>
<path d="M16.2832 3C16.6487 3 16.8319 2.99961 16.9854 3.02051C18.004 3.15942 18.8144 3.96313 19 5C18.8521 4.96584 18.6985 4.93971 18.5391 4.91895C17.8997 4.83568 17.0913 4.83495 16.0889 4.83496H15.7549C14.8133 4.83496 14.4563 4.82942 14.1309 4.7334C13.942 4.67763 13.7595 4.59987 13.5879 4.50098C13.2921 4.33053 13.0361 4.07268 12.3701 3.38281L12 3H16.2832Z" fill="currentColor"/>''',
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
