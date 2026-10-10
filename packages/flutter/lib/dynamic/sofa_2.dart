// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sofa-2` icon in every style.
///
/// Prefer the static widgets (e.g. `Sofa2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Sofa2Icon extends StatelessWidget {
  /// Creates the `sofa-2` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Sofa2Icon({
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
    name: 'sofa-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M20 10C21.1046 10 22 10.8954 22 12V14.4443C22 15.5283 21.5149 16.4992 20.75 17.1514V19C20.75 19.4142 20.4142 19.75 20 19.75C19.5858 19.75 19.25 19.4142 19.25 19V17.9082C18.9912 17.9682 18.7214 18 18.4443 18H5.55566C5.2786 18 5.00883 17.9682 4.75 17.9082V19C4.75 19.4142 4.41421 19.75 4 19.75C3.58579 19.75 3.25 19.4142 3.25 19V17.1514C2.48508 16.4992 2 15.5283 2 14.4443V12C2 10.8954 2.89543 10 4 10C5.10457 10 6 10.8954 6 12V13.2002C6.00011 13.6419 6.35813 13.9999 6.7998 14H17.2002C17.6419 13.9999 17.9999 13.6419 18 13.2002V12C18 10.8954 18.8954 10 20 10Z" fill="currentColor"/>
<path d="M11.25 13H7V12C7 10.3454 5.66056 9.00367 4.00684 9C4.0153 8.672 4.03456 8.43387 4.07715 8.21973C4.39278 6.63296 5.63296 5.39278 7.21973 5.07715C7.60612 5.00029 8.07071 5 9 5H11.25V13Z" fill="currentColor"/>
<path d="M15 5C15.9293 5 16.3939 5.0003 16.7803 5.07715C18.367 5.39278 19.6072 6.63296 19.9229 8.21973C19.9654 8.43387 19.9847 8.672 19.9932 9C18.3395 9.0037 17 10.3454 17 12V13H12.75V5H15Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'sofa-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 14H17.2C17.6418 14 18 13.6418 18 13.2V12C18 10.8954 18.8954 10 20 10C21.1046 10 22 10.8954 22 12V14.4444C22 15.5284 21.5149 16.4991 20.75 17.1513V19C20.75 19.4142 20.4142 19.75 20 19.75C19.5858 19.75 19.25 19.4142 19.25 19V17.9084C18.9912 17.9683 18.7215 18 18.4444 18H5.55556C5.27849 18 5.00883 17.9683 4.75 17.9084V19C4.75 19.4142 4.41421 19.75 4 19.75C3.58579 19.75 3.25 19.4142 3.25 19V17.1513C2.48508 16.4991 2 15.5284 2 14.4444V12C2 10.8954 2.89543 10 4 10C5.10457 10 6 10.8954 6 12V13.2C6 13.6418 6.35817 14 6.8 14H11.25V5H12.75V14Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M17.2 14H12.75V5H15C15.9293 5 16.394 5 16.7804 5.07686C18.3671 5.39249 19.6075 6.63288 19.9231 8.21964C19.9657 8.43379 19.9847 8.67199 19.9932 9.00001L20 9V10C18.8954 10 18 10.8954 18 12V13.2C18 13.6418 17.6418 14 17.2 14Z" fill="currentColor"/>
<path d="M11.25 14H6.8C6.35817 14 6 13.6418 6 13.2V12C6 10.8977 5.10825 10.0037 4.00681 10V9.00001C4.01527 8.67199 4.03426 8.43379 4.07686 8.21964C4.39249 6.63288 5.63288 5.39249 7.21964 5.07686C7.60603 5 8.07069 5 9 5H11.25V14Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'sofa-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 18H5.55556C3.59188 18 2 16.4081 2 14.4444V12C2 10.8954 2.89543 10 4 10C5.10457 10 6 10.8954 6 12V13.2C6 13.6418 6.35817 14 6.8 14H12H17.2C17.6418 14 18 13.6418 18 13.2V12C18 10.8954 18.8954 10 20 10C21.1046 10 22 10.8954 22 12V14.4444C22 16.4081 20.4081 18 18.4444 18H12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19.9999 10C19.9999 9.07069 19.9999 8.60603 19.923 8.21964C19.6074 6.63288 18.367 5.39249 16.7802 5.07686C16.3938 5 15.9292 5 14.9999 5H11.9999H8.99988C8.07057 5 7.60591 5 7.21952 5.07686C5.63276 5.39249 4.39236 6.63288 4.07674 8.21964C3.99988 8.60603 4 9.07069 4 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 5V7M12 14V11" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 19V18M4 19V18" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'sofa-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M5.55556 18H18.4444C20.4081 18 22 16.4081 22 14.4444V12C22 10.8954 21.1046 10 20 10C18.8954 10 18 10.8954 18 12V13.2C18 13.6418 17.6418 14 17.2 14H12H6.8C6.35817 14 6 13.6418 6 13.2V12C6 10.8954 5.10457 10 4 10C2.89543 10 2 10.8954 2 12V14.4444C2 16.4081 3.59188 18 5.55556 18Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.9999 10C19.9999 9.07069 19.9999 8.60603 19.923 8.21964C19.6074 6.63288 18.367 5.39249 16.7802 5.07686C16.3938 5 15.9292 5 14.9999 5H11.9999H8.99988C8.07057 5 7.60591 5 7.21952 5.07686C5.63276 5.39249 4.39236 6.63288 4.07674 8.21964C3.99988 8.60603 4 9.07069 4 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 5V14" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 19V18M4 19V18" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'sofa-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5.55556 18H18.4444C20.4081 18 22 16.4081 22 14.4444V12C22 10.8954 21.1046 10 20 10C18.8954 10 18 10.8954 18 12V13.2C18 13.6418 17.6418 14 17.2 14H12H6.8C6.35817 14 6 13.6418 6 13.2V12C6 10.8954 5.10457 10 4 10C2.89543 10 2 10.8954 2 12V14.4444C2 16.4081 3.59188 18 5.55556 18Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19.9999 10C19.9999 9.07069 19.9999 8.60603 19.923 8.21964C19.6074 6.63288 18.367 5.39249 16.7802 5.07686C16.3938 5 15.9292 5 14.9999 5H11.9999M11.9999 5H8.99988C8.07057 5 7.60591 5 7.21952 5.07686C5.63276 5.39249 4.39236 6.63288 4.07674 8.21964C4 8.60543 4 9.06923 4 9.99562V10M11.9999 5L12 14M20 19V18M4 19V18" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'sofa-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.90473 4.25001C8.93606 4.25001 8.96781 4.25002 9 4.25002H15C15.0322 4.25002 15.0639 4.25001 15.0953 4.25001C15.9333 4.24988 16.4668 4.24981 16.9267 4.34129C18.811 4.71609 20.2839 6.18906 20.6587 8.07334L19.9231 8.21966L20.6587 8.07334C20.7284 8.4234 20.7449 8.81605 20.7488 9.35321C21.9037 9.67929 22.75 10.7408 22.75 12V14.4445C22.75 15.9742 21.9522 17.3176 20.75 18.0813V19C20.75 19.4142 20.4142 19.75 20 19.75C19.5858 19.75 19.25 19.4142 19.25 19V18.6748C18.989 18.7242 18.7198 18.75 18.4444 18.75H5.55556C5.28024 18.75 5.01095 18.7242 4.75 18.6748V19C4.75 19.4142 4.41421 19.75 4 19.75C3.58579 19.75 3.25 19.4142 3.25 19V18.0813C2.04779 17.3176 1.25 15.9742 1.25 14.4445V12C1.25 10.7408 2.09631 9.67929 3.25116 9.35321C3.25505 8.81605 3.27164 8.4234 3.34127 8.07334C3.71608 6.18906 5.18904 4.71609 7.07332 4.34129C7.53324 4.24981 8.06666 4.24988 8.90473 4.25001ZM4.75168 9.35401C5.90507 9.68103 6.75 10.7419 6.75 12V13.2C6.75 13.2276 6.77239 13.25 6.8 13.25H11.25V5.75002H9C8.03474 5.75002 7.66164 5.75365 7.36596 5.81247C6.07671 6.06891 5.06889 7.07673 4.81245 8.36597C4.76904 8.58419 4.75569 8.84457 4.75168 9.35401ZM12.75 5.75002V13.25H17.2C17.2276 13.25 17.25 13.2276 17.25 13.2V12C17.25 10.7419 18.0949 9.68103 19.2483 9.35401C19.2443 8.84457 19.231 8.58419 19.1876 8.36598C18.9311 7.07673 17.9233 6.06891 16.634 5.81247C16.3384 5.75365 15.9653 5.75002 15 5.75002H12.75ZM4 10.75C3.30964 10.75 2.75 11.3097 2.75 12V14.4445C2.75 15.9939 4.00609 17.25 5.55556 17.25H18.4444C19.9939 17.25 21.25 15.9939 21.25 14.4445V12C21.25 11.3097 20.6904 10.75 20 10.75C19.3096 10.75 18.75 11.3097 18.75 12V13.2C18.75 14.0561 18.056 14.75 17.2 14.75H6.8C5.94396 14.75 5.25 14.0561 5.25 13.2V12C5.25 11.3097 4.69036 10.75 4 10.75Z" fill="currentColor"/>''',
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
