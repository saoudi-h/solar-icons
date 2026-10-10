// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bug` icon in the boldDuotone style.
class BugBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bug` icon in the boldDuotone style.
  const BugBoldDuotoneIcon({
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
    name: 'bug',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 14.25C12.4142 14.25 12.75 14.5858 12.75 15V22H11.25V15C11.25 14.5858 11.5858 14.25 12 14.25Z" fill="currentColor"/>
<path d="M5.70215 18.0605C5.92373 18.5156 6.1941 18.9426 6.50488 19.3359L3.83496 20.6709C3.46466 20.8558 3.01439 20.7061 2.8291 20.3359C2.64384 19.9655 2.79456 19.5144 3.16504 19.3291L5.70215 18.0605Z" fill="currentColor"/>
<path d="M20.835 19.3291C21.2054 19.5144 21.3562 19.9655 21.1709 20.3359C20.9856 20.7061 20.5353 20.8558 20.165 20.6709L17.4951 19.3359C17.8059 18.9426 18.0763 18.5156 18.2979 18.0605L20.835 19.3291Z" fill="currentColor"/>
<path d="M5 14.75H2C1.58583 14.75 1.25007 14.4142 1.25 14C1.25 13.5858 1.58579 13.25 2 13.25H5V14.75Z" fill="currentColor"/>
<path d="M22 13.25C22.4142 13.25 22.75 13.5858 22.75 14C22.7499 14.4142 22.4142 14.75 22 14.75H19V13.25H22Z" fill="currentColor"/>
<path d="M2.8291 7.66406C3.01434 7.29376 3.46457 7.14408 3.83496 7.3291L6.64648 8.73438C6.21949 9.04035 5.85589 9.43014 5.58008 9.87891L3.16504 8.6709C2.79456 8.48564 2.64384 8.03454 2.8291 7.66406Z" fill="currentColor"/>
<path d="M20.165 7.3291C20.5354 7.14408 20.9857 7.29376 21.1709 7.66406C21.3562 8.03454 21.2054 8.48564 20.835 8.6709L18.4199 9.87891C18.1441 9.43014 17.7805 9.04035 17.3535 8.73438L20.165 7.3291Z" fill="currentColor"/>
<path d="M12 3C14.4853 3 16.5 5.01472 16.5 7.5V8.27051C16.0547 8.09581 15.5698 8 15.0625 8H8.9375C8.43023 8 7.94531 8.09581 7.5 8.27051V7.5C7.5 5.01472 9.51472 3 12 3Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M15.0625 8.00004C15.5698 8.00004 16.0547 8.09584 16.5 8.27055C17.9637 8.84479 19 10.2702 19 11.9375V15C19 18.6126 16.2633 21.5858 12.75 21.96V15C12.75 14.5858 12.4142 14.25 12 14.25C11.5858 14.25 11.25 14.5858 11.25 15V21.96C7.73669 21.5858 5 18.6126 5 15V11.9375C5 10.2702 6.03633 8.84479 7.5 8.27055C7.94531 8.09584 8.43023 8.00004 8.9375 8.00004H15.0625Z" fill="currentColor"/>
<path d="M6.37598 1.58402C6.60572 1.23942 7.07138 1.14633 7.41602 1.37601L10.3311 3.31937C9.81444 3.52579 9.34486 3.82559 8.94336 4.1973L6.58398 2.62406C6.23941 2.39428 6.14623 1.92864 6.37598 1.58402Z" fill="currentColor"/>
<path d="M16.584 1.37601C16.9286 1.14627 17.3942 1.23945 17.624 1.58402C17.8538 1.92867 17.7607 2.3943 17.416 2.62406L15.0566 4.1973C14.6551 3.82557 14.1856 3.5258 13.6689 3.31937L16.584 1.37601Z" fill="currentColor"/>
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
