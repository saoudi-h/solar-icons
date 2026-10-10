// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `like` icon.
class LikeIcon extends StatelessWidget {
  /// Creates the `like` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const LikeIcon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

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

  /// When true, ignores [SolarTheme] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'like',
    style: SolarIconStyle.bold,
    body: r'''<path d="M2.96777 9.48511C3.369 9.46785 3.71247 9.76957 3.74707 10.1697L4.71875 21.406C4.78116 22.1278 4.21231 22.7498 3.48633 22.7498C2.80269 22.7496 2.25 22.1948 2.25 21.5125V10.2341C2.25001 9.8325 2.56651 9.50243 2.96777 9.48511Z" fill="currentColor"/>
<path d="M11.6748 2.13257C11.9834 1.98389 12.3406 1.95905 12.668 2.06421L12.8125 2.11109C13.3541 2.28508 13.7667 2.7131 13.9053 3.24683C14.0725 3.89131 14.1028 4.56437 13.9951 5.22144L13.332 9.26539C13.2489 9.77269 13.6408 10.2341 14.1543 10.2341H19.335C20.3679 10.2341 21.1518 11.1663 20.9756 12.1853L20.2695 16.2644C19.6972 19.5738 16.7264 21.9998 13.2451 21.9998H8.59668C7.73307 21.9998 7.01321 21.3386 6.93848 20.4773L6.12598 11.0837C6.07997 10.5501 6.29282 10.027 6.69824 9.67749L8.13672 8.43726C8.80421 7.86207 9.44695 7.24013 9.8623 6.46265C10.1465 5.93059 10.3672 5.36731 10.5186 4.78394L10.9941 2.94996C11.0863 2.5948 11.3351 2.29629 11.6748 2.13257Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'like',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M20.2694 16.265L20.9749 12.1852C21.1511 11.1662 20.3675 10.2342 19.3345 10.2342H14.1534C13.6399 10.2342 13.2489 9.77328 13.332 9.26598L13.9947 5.22142C14.1024 4.56435 14.0716 3.892 13.9044 3.24752C13.7659 2.71364 13.354 2.28495 12.8123 2.11093L12.6673 2.06435C12.3399 1.95918 11.9826 1.98365 11.6739 2.13239C11.3342 2.29611 11.0856 2.59473 10.9935 2.94989L10.5178 4.78374C10.3664 5.36723 10.146 5.93045 9.8617 6.46262C9.44634 7.24017 8.80416 7.86246 8.13663 8.43769L6.69789 9.67749C6.29223 10.0271 6.07919 10.5506 6.12535 11.0844L6.93752 20.4771C7.01201 21.3386 7.73231 22 8.59609 22H13.2447C16.726 22 19.697 19.5744 20.2694 16.265Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2.96767 9.48508C3.36893 9.46777 3.71261 9.76963 3.74721 10.1698L4.71881 21.4063C4.78122 22.1281 4.21268 22.7502 3.48671 22.7502C2.80289 22.7502 2.25 22.1954 2.25 21.5129V10.2344C2.25 9.83275 2.5664 9.5024 2.96767 9.48508Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'like',
    style: SolarIconStyle.broken,
    body: r'''<path d="M3 21.5127V10.2341" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 10.2342L3.9716 21.4707C3.99621 21.7553 3.77207 22 3.48671 22C3.21791 22 3 21.7818 3 21.5127" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9951 5.22145C14.1027 4.56438 14.072 3.89203 13.9048 3.24756" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.59634 22C7.73256 22 7.01226 21.3386 6.93776 20.4771L6.1256 11.0844C6.07944 10.5506 6.29247 10.027 6.69813 9.67749L8.13687 8.43769C8.8044 7.86246 9.44659 7.24017 9.86194 6.46261C10.1462 5.93045 10.3667 5.36723 10.518 4.78374L10.9938 2.94989C11.0859 2.59473 11.3344 2.29611 11.6742 2.13239C11.9829 1.98365 12.3402 1.95918 12.6676 2.06435L12.8126 2.11093C13.3543 2.28495 13.7662 2.71364 13.9047 3.24753" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9949 5.22135L13.3322 9.26591C13.2491 9.77321 13.6401 10.2341 14.1536 10.2341H19.3347" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.3349 10.2342C20.3678 10.2342 21.1515 11.1662 20.9752 12.1852L20.2697 16.265C19.6974 19.5744 16.7263 22 13.2451 22H8.59644" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'like',
    style: SolarIconStyle.linear,
    body: r'''<path d="M3 21.5127V10.2341" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 10.2342L3.9716 21.4707C3.99621 21.7553 3.77207 22 3.48671 22C3.21791 22 3 21.7818 3 21.5127" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9951 5.22145C14.1027 4.56438 14.072 3.89203 13.9048 3.24756" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.59609 22C7.73231 22 7.01201 21.3386 6.93752 20.4771L6.12535 11.0844C6.07919 10.5506 6.29223 10.027 6.69789 9.67749L8.13663 8.43769C8.80416 7.86246 9.44635 7.24017 9.8617 6.46261C10.146 5.93045 10.3664 5.36723 10.5178 4.78374L10.9935 2.94989C11.0856 2.59473 11.3342 2.29611 11.6739 2.13239C11.9826 1.98365 12.3399 1.95918 12.6673 2.06435L12.8123 2.11093C13.354 2.28495 13.7659 2.71364 13.9044 3.24753" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9951 5.22135L13.3325 9.26591C13.2493 9.77321 13.6404 10.2341 14.1539 10.2341H19.335" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.3351 10.2342C20.3681 10.2342 21.1517 11.1662 20.9755 12.1852L20.27 16.265C19.6976 19.5744 16.7266 22 13.2453 22H8.59668" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'like',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M13.9951 5.22145C14.1027 4.56438 14.072 3.89203 13.9048 3.24756" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.59634 22C7.73256 22 7.01226 21.3386 6.93776 20.4771L6.1256 11.0844C6.07944 10.5506 6.29247 10.027 6.69813 9.67749L8.13687 8.43769C8.8044 7.86246 9.44659 7.24017 9.86194 6.46261C10.1462 5.93045 10.3667 5.36723 10.518 4.78374L10.9938 2.94989C11.0859 2.59473 11.3344 2.29611 11.6742 2.13239C11.9829 1.98365 12.3402 1.95918 12.6676 2.06435L12.8126 2.11093C13.3543 2.28495 13.7662 2.71364 13.9047 3.24753" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9949 5.22135L13.3322 9.26591C13.2491 9.77321 13.6401 10.2341 14.1536 10.2341H19.3347" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.3349 10.2342C20.3678 10.2342 21.1515 11.1662 20.9752 12.1852L20.2697 16.265C19.6974 19.5744 16.7263 22 13.2451 22H8.59644" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<g opacity="0.5">
<path d="M3 21.5127V10.2341" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 10.2342L3.9716 21.4707C3.99621 21.7553 3.77207 22 3.48671 22C3.21791 22 3 21.7818 3 21.5127" stroke="currentColor" stroke-linecap="round"/>
</g>''',
  );

  static const outline = SolarIconData(
    name: 'like',
    style: SolarIconStyle.outline,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.4382 2.77841C12.2931 2.73181 12.1345 2.74311 11.9998 2.80804C11.8523 2.87913 11.7548 3.0032 11.7197 3.13821L11.244 4.97206C11.0777 5.61339 10.8354 6.23198 10.5235 6.81599C10.0392 7.72267 9.30632 8.42 8.62647 9.00585L7.18773 10.2456C6.96475 10.4378 6.8474 10.7258 6.87282 11.0198L7.68498 20.4125C7.72601 20.887 8.12244 21.25 8.59635 21.25H13.245C16.3813 21.25 19.0238 19.0677 19.5306 16.1371L20.2361 12.0574C20.3332 11.4959 19.9014 10.9842 19.3348 10.9842H14.1537C13.1766 10.9842 12.4344 10.1076 12.5921 9.14471L13.2548 5.10015C13.3456 4.54613 13.3197 3.97923 13.1787 3.43584C13.1072 3.16009 12.8896 2.92342 12.5832 2.82498L12.4382 2.77841L12.6676 2.06435L12.4382 2.77841ZM11.3486 1.45674C11.8312 1.2242 12.3873 1.18654 12.897 1.35029L13.042 1.39686L12.8126 2.11092L13.042 1.39686C13.819 1.64648 14.4252 2.26719 14.6307 3.0592C14.8241 3.80477 14.8596 4.58256 14.7351 5.34268L14.0724 9.38724C14.0639 9.439 14.1038 9.4842 14.1537 9.4842H19.3348C20.8341 9.4842 21.9695 10.8365 21.7142 12.313L21.0087 16.3928C20.3708 20.081 17.0712 22.75 13.245 22.75H8.59635C7.3427 22.75 6.29852 21.7902 6.19056 20.5417L5.3784 11.149C5.31149 10.3753 5.62022 9.61631 6.20855 9.10933L7.64729 7.86954C8.3025 7.30492 8.85404 6.75767 9.20042 6.10924C9.45699 5.62892 9.65573 5.12107 9.79208 4.59542L10.2678 2.76157C10.417 2.18627 10.8166 1.71309 11.3486 1.45674ZM2.96767 9.4849C3.36893 9.46758 3.71261 9.76945 3.74721 10.1696L4.71881 21.4061C4.78122 22.1279 4.21268 22.75 3.48671 22.75C2.80289 22.75 2.25 22.1953 2.25 21.5127V10.2342C2.25 9.83256 2.5664 9.50221 2.96767 9.4849Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

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
