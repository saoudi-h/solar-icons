// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-hand-up` icon in every style.
///
/// Prefer the static widgets (e.g. `UserHandUpLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class UserHandUpIcon extends StatelessWidget {
  /// Creates the `user-hand-up` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const UserHandUpIcon({
    super.key,
    this.style,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].
  final SolarIconStyle? style;

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

  static const bold = SolarIconData(
    name: 'user-hand-up',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 10C14.2091 10 16 8.20914 16 6C16 3.79086 14.2091 2 12 2C9.79086 2 8 3.79086 8 6C8 8.20914 9.79086 10 12 10Z" fill="currentColor"/>
<path d="M2.72778 5.81803C2.62732 5.41619 2.22012 5.17186 1.81828 5.27233C1.41643 5.37279 1.17211 5.77999 1.27257 6.18184L1.65454 7.7097C2.3593 10.5287 4.49604 12.7495 7.25018 13.5787L7.25018 18.0519C7.25015 18.9504 7.25012 19.6996 7.33009 20.2944C7.41449 20.9222 7.60016 21.489 8.05563 21.9445C8.5111 22.3999 9.0779 22.5856 9.7057 22.67C10.3005 22.75 11.0497 22.75 11.9482 22.7499H12.0522C12.9507 22.75 13.6999 22.75 14.2947 22.67C14.9225 22.5856 15.4892 22.3999 15.9447 21.9445C16.4002 21.489 16.5859 20.9222 16.6703 20.2944C16.7502 19.6996 16.7502 18.9504 16.7502 18.052L16.7502 13.859C17.7313 14.1514 18.4808 15.0039 18.6058 16.067L19.2553 21.5876C19.3037 21.9989 19.6764 22.2932 20.0878 22.2448C20.4992 22.1964 20.7934 21.8237 20.745 21.4123L20.0956 15.8918C19.8512 13.815 18.0912 12.2499 16.0002 12.2499H8.0847C5.64125 11.6764 3.71957 9.78517 3.10975 7.3459L2.72778 5.81803Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'user-hand-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M1.81839 5.27246C2.22022 5.17204 2.62712 5.41653 2.72757 5.81836L3.10941 7.3457C3.71923 9.78497 5.64154 11.6764 8.085 12.25H16C18.091 12.25 19.8513 13.815 20.0957 15.8916L20.7452 21.4121C20.7935 21.8235 20.4993 22.1967 20.0879 22.2451C19.6766 22.2935 19.3034 21.9992 19.2549 21.5879L18.6055 16.0674C18.4501 14.7461 17.3304 13.75 16 13.75H7.918L7.83793 13.7324C4.80276 13.0579 2.40847 10.7263 1.65433 7.70996L1.2725 6.18164C1.17221 5.77988 1.41664 5.3729 1.81839 5.27246Z" fill="currentColor"/>
<path d="M12 2C14.2092 2 16 3.79086 16 6C16 8.20914 14.2092 10 12 10C9.7909 10 8.00004 8.20914 8.00004 6C8.00004 3.79086 9.7909 2 12 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M8 13.75V18C8 19.8856 8 20.8284 8.58579 21.4142C9.17157 22 10.1144 22 12 22C13.8856 22 14.8284 22 15.4142 21.4142C16 20.8284 16 19.8856 16 18V13.75H8Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'user-hand-up',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 13H16C17.7107 13 19.1506 14.2804 19.3505 15.9795L20 21.5M8 13C5.2421 12.3871 3.06717 10.2687 2.38197 7.52787L2 6M8 13V18C8 19.8856 8 20.8284 8.58579 21.4142C9.17157 22 10.1144 22 12 22C13.8856 22 14.8284 22 15.4142 21.4142C16 20.8284 16 19.8856 16 18V17" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'user-hand-up',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8 13H16M8 13V18C8 19.8856 8 20.8284 8.58579 21.4142C9.17157 22 10.1144 22 12 22C13.8856 22 14.8284 22 15.4142 21.4142C16 20.8284 16 19.8856 16 18V13M8 13C5.2421 12.3871 3.06717 10.2687 2.38197 7.52787L2 6M16 13C17.7107 13 19.1506 14.2804 19.3505 15.9795L20 21.5" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'user-hand-up',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M20 21.5L19.3505 15.9795C19.1506 14.2804 17.7107 13 16 13H8C5 13 3.06717 10.2687 2.38197 7.52787L2 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M8 13V18C8 19.8856 8 20.8284 8.58579 21.4142C9.17157 22 10.1144 22 12 22C13.8856 22 14.8284 22 15.4142 21.4142C16 20.8284 16 19.8856 16 18V13" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'user-hand-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.0002 1.25C9.37683 1.25 7.25018 3.37665 7.25018 6C7.25018 8.62335 9.37683 10.75 12.0002 10.75C14.6235 10.75 16.7502 8.62335 16.7502 6C16.7502 3.37665 14.6235 1.25 12.0002 1.25ZM8.75018 6C8.75018 4.20507 10.2053 2.75 12.0002 2.75C13.7951 2.75 15.2502 4.20507 15.2502 6C15.2502 7.79493 13.7951 9.25 12.0002 9.25C10.2053 9.25 8.75018 7.79493 8.75018 6Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M2.72778 5.8181C2.62732 5.41625 2.22012 5.17193 1.81828 5.27239C1.41643 5.37285 1.17211 5.78006 1.27257 6.1819L1.65454 7.70977C2.3593 10.5288 4.49604 12.7496 7.25018 13.5787L7.25018 18.052C7.25015 18.9505 7.25012 19.6997 7.33009 20.2945C7.41449 20.9223 7.60016 21.4891 8.05563 21.9445C8.5111 22.4 9.0779 22.5857 9.7057 22.6701C10.3005 22.7501 11.0497 22.75 11.9482 22.75H12.0522C12.9507 22.75 13.6999 22.7501 14.2947 22.6701C14.9225 22.5857 15.4892 22.4 15.9447 21.9445C16.4002 21.4891 16.5859 20.9223 16.6703 20.2945C16.7502 19.6997 16.7502 18.9505 16.7502 18.052L16.7502 13.859C17.7313 14.1515 18.4808 15.0039 18.6058 16.0671L19.2553 21.5876C19.3037 21.999 19.6764 22.2933 20.0878 22.2449C20.4992 22.1965 20.7934 21.8237 20.745 21.4124L20.0956 15.8918C19.8512 13.8151 18.0912 12.25 16.0002 12.25H8.0847C5.64125 11.6764 3.71957 9.78523 3.10975 7.34596L2.72778 5.8181ZM8.75018 18V13.75H15.2502V18C15.2502 18.964 15.2486 19.6116 15.1836 20.0946C15.1216 20.5561 15.0144 20.7536 14.8841 20.8839C14.7537 21.0142 14.5562 21.1214 14.0948 21.1835C13.6117 21.2484 12.9642 21.25 12.0002 21.25C11.0362 21.25 10.3886 21.2484 9.90557 21.1835C9.44411 21.1214 9.24661 21.0142 9.11629 20.8839C8.98598 20.7536 8.87875 20.5561 8.81671 20.0946C8.75177 19.6116 8.75018 18.964 8.75018 18Z" fill="currentColor"/>''',
  );

  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback = isolated
        ? SolarIconStyle.linear
        : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
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
