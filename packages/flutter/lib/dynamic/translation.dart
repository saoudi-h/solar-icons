// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `translation` icon in every style.
///
/// Prefer the static widgets (e.g. `TranslationLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class TranslationIcon extends StatelessWidget {
  /// Creates the `translation` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const TranslationIcon({
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
    name: 'translation',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.46689 4.39207C5.75949 4.68526 5.75902 5.16013 5.46583 5.45273C3.78722 7.128 2.75 9.44218 2.75 12C2.75 14.5878 3.81163 16.9262 5.52503 18.6059C5.82082 18.8959 5.82554 19.3707 5.53557 19.6665C5.24561 19.9623 4.77076 19.967 4.47497 19.677C2.48564 17.7269 1.25 15.0071 1.25 12C1.25 9.02783 2.45721 6.33616 4.40623 4.39102C4.69941 4.09842 5.17429 4.09889 5.46689 4.39207Z" fill="currentColor"/>
<path d="M18.6164 4.46446C18.9122 4.17449 19.387 4.17921 19.677 4.475C21.5771 6.41326 22.75 9.07043 22.75 12C22.75 14.9645 21.5491 17.6499 19.609 19.5938C19.3164 19.887 18.8415 19.8875 18.5484 19.5949C18.2552 19.3023 18.2547 18.8274 18.5473 18.5342C20.2182 16.86 21.25 14.5512 21.25 12C21.25 9.47873 20.2422 7.1943 18.6059 5.52507C18.3159 5.22928 18.3206 4.75443 18.6164 4.46446Z" fill="currentColor"/>
<path d="M8.30923 7.4876C8.59226 7.79004 8.57652 8.26465 8.27408 8.54768C7.32517 9.43567 6.75 10.6503 6.75 11.9823C6.75 13.3297 7.33869 14.5573 8.30756 15.4479C8.61251 15.7282 8.63248 16.2027 8.35216 16.5076C8.07185 16.8126 7.59739 16.8325 7.29244 16.5522C6.03967 15.4007 5.25 13.7824 5.25 11.9823C5.25 10.203 6.02148 8.60131 7.24916 7.45245C7.5516 7.16942 8.02621 7.18516 8.30923 7.4876Z" fill="currentColor"/>
<path d="M15.7429 7.52562C16.0292 7.22629 16.5039 7.21574 16.8033 7.50205C18.0005 8.64717 18.75 10.2286 18.75 11.9823C18.75 13.7568 17.9825 15.3549 16.7604 16.5031C16.4586 16.7867 15.9839 16.7719 15.7003 16.47C15.4167 16.1682 15.4315 15.6935 15.7333 15.4099C16.6778 14.5225 17.25 13.3108 17.25 11.9823C17.25 10.6692 16.6911 9.47049 15.7664 8.58602C15.4671 8.29971 15.4566 7.82495 15.7429 7.52562Z" fill="currentColor"/>
<path d="M12 14.0001C13.1046 14.0001 14 13.1046 14 12.0001C14 10.8955 13.1046 10.0001 12 10.0001C10.8954 10.0001 10 10.8955 10 12.0001C10 13.1046 10.8954 14.0001 12 14.0001Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'translation',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 14C13.1046 14 14 13.1046 14 12C14 10.8954 13.1046 10 12 10C10.8954 10 10 10.8954 10 12C10 13.1046 10.8954 14 12 14Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M4.40625 4.39081C4.69936 4.09851 5.17424 4.09895 5.4668 4.39179C5.7594 4.68497 5.75901 5.16071 5.46582 5.45331C3.78734 7.12855 2.75001 9.44245 2.75 12.0002C2.75 14.5879 3.81201 16.926 5.52539 18.6057C5.82117 18.8956 5.82509 19.3704 5.53516 19.6662C5.24519 19.962 4.7704 19.9669 4.47461 19.6769C2.48547 17.7268 1.25 15.0071 1.25 12.0002C1.25001 9.02799 2.45723 6.33595 4.40625 4.39081Z" fill="currentColor"/>
<path d="M18.6162 4.46503C18.9119 4.17517 19.3868 4.17933 19.6768 4.4748C21.5769 6.41305 22.75 9.0706 22.75 12.0002C22.75 14.9645 21.5493 17.65 19.6094 19.5939C19.3168 19.8871 18.842 19.8873 18.5488 19.5949C18.2557 19.3024 18.2545 18.8276 18.5469 18.5344C20.2178 16.8602 21.25 14.5514 21.25 12.0002C21.25 9.4789 20.2418 7.19481 18.6055 5.52558C18.3156 5.22988 18.3207 4.75502 18.6162 4.46503Z" fill="currentColor"/>
<path d="M7.24902 7.45234C7.55147 7.16936 8.02656 7.18507 8.30957 7.48749C8.59253 7.78991 8.57678 8.26502 8.27441 8.54804C7.32551 9.43603 6.75 10.6506 6.75 11.9826C6.75006 13.33 7.3388 14.5579 8.30762 15.4484C8.61233 15.7288 8.63274 16.2031 8.35254 16.508C8.07222 16.813 7.59694 16.8323 7.29199 16.5519C6.03953 15.4005 5.25006 13.7825 5.25 11.9826C5.25 10.2034 6.02135 8.6012 7.24902 7.45234Z" fill="currentColor"/>
<path d="M15.7432 7.52558C16.0295 7.22648 16.5045 7.21591 16.8037 7.50214C18.0008 8.64725 18.75 10.2291 18.75 11.9826C18.7499 13.757 17.9827 15.355 16.7607 16.5031C16.4589 16.7867 15.9838 16.7718 15.7002 16.4699C15.4168 16.1681 15.4317 15.6939 15.7334 15.4103C16.6778 14.523 17.2499 13.3111 17.25 11.9826C17.25 10.6696 16.6913 9.47059 15.7666 8.58613C15.4673 8.29981 15.4569 7.82491 15.7432 7.52558Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'translation',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 12C22 14.7578 20.8836 17.2549 19.0782 19.064M19.1414 5.00003C19.987 5.86255 20.6775 6.87759 21.1679 8.00006M5 19.1415C3.14864 17.3265 2 14.7974 2 12C2 9.235 3.12222 6.73208 4.93603 4.92188" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 11.9822C6 10.4266 6.67333 9.01843 7.76162 8M16.2849 8.04397C17.3458 9.05877 18 10.4488 18 11.9822C18 13.5338 17.3302 14.9386 16.2469 15.9564M7.8 16C7.47294 15.6994 7.18244 15.3639 6.93531 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'translation',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19.1414 5.00003C20.9097 6.80378 22 9.27458 22 12C22 14.7578 20.8836 17.2549 19.0782 19.064M5 19.1415C3.14864 17.3265 2 14.7974 2 12C2 9.235 3.12222 6.73208 4.93603 4.92188" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.2849 8.04397C17.3458 9.05877 18 10.4488 18 11.9822C18 13.5338 17.3302 14.9386 16.2469 15.9564M7.8 16C6.68918 14.9789 6 13.556 6 11.9822C6 10.4266 6.67333 9.01843 7.76162 8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'translation',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19.1414 5.00003C20.9097 6.80378 22 9.27458 22 12C22 14.7578 20.8836 17.2549 19.0782 19.064M5 19.1415C3.14864 17.3265 2 14.7974 2 12C2 9.235 3.12222 6.73208 4.93603 4.92188" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M16.2849 8.04397C17.3458 9.05877 18 10.4488 18 11.9822C18 13.5338 17.3302 14.9386 16.2469 15.9564M7.8 16C6.68918 14.9789 6 13.556 6 11.9822C6 10.4266 6.67333 9.01843 7.76162 8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'translation',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M5.46689 4.39207C5.75949 4.68526 5.75902 5.16013 5.46583 5.45273C3.78722 7.128 2.75 9.44218 2.75 12C2.75 14.5878 3.81163 16.9262 5.52503 18.6059C5.82082 18.8959 5.82554 19.3707 5.53557 19.6665C5.24561 19.9623 4.77076 19.967 4.47497 19.677C2.48564 17.7269 1.25 15.0071 1.25 12C1.25 9.02783 2.45721 6.33616 4.40623 4.39102C4.69941 4.09842 5.17429 4.09889 5.46689 4.39207Z" fill="currentColor"/>
<path d="M18.6164 4.46446C18.9122 4.17449 19.387 4.17921 19.677 4.475C21.5771 6.41326 22.75 9.07043 22.75 12C22.75 14.9645 21.5491 17.6499 19.609 19.5938C19.3164 19.887 18.8415 19.8875 18.5484 19.5949C18.2552 19.3023 18.2547 18.8274 18.5473 18.5342C20.2182 16.86 21.25 14.5512 21.25 12C21.25 9.47873 20.2422 7.1943 18.6059 5.52507C18.3159 5.22928 18.3206 4.75443 18.6164 4.46446Z" fill="currentColor"/>
<path d="M8.30923 7.4876C8.59226 7.79004 8.57652 8.26465 8.27408 8.54768C7.32517 9.43567 6.75 10.6503 6.75 11.9823C6.75 13.3297 7.33869 14.5573 8.30756 15.4479C8.61251 15.7282 8.63248 16.2027 8.35216 16.5076C8.07185 16.8126 7.59739 16.8325 7.29244 16.5522C6.03967 15.4007 5.25 13.7824 5.25 11.9823C5.25 10.203 6.02148 8.60131 7.24916 7.45245C7.5516 7.16942 8.02621 7.18516 8.30923 7.4876Z" fill="currentColor"/>
<path d="M15.7429 7.52562C16.0292 7.22629 16.5039 7.21574 16.8033 7.50205C18.0005 8.64717 18.75 10.2286 18.75 11.9823C18.75 13.7568 17.9825 15.3549 16.7604 16.5031C16.4586 16.7867 15.9839 16.7719 15.7003 16.47C15.4167 16.1682 15.4315 15.6935 15.7333 15.4099C16.6778 14.5225 17.25 13.3108 17.25 11.9823C17.25 10.6692 16.6911 9.47049 15.7664 8.58602C15.4671 8.29971 15.4566 7.82495 15.7429 7.52562Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 9.25006C10.4812 9.25006 9.25 10.4813 9.25 12.0001C9.25 13.5188 10.4812 14.7501 12 14.7501C13.5188 14.7501 14.75 13.5188 14.75 12.0001C14.75 10.4813 13.5188 9.25006 12 9.25006ZM10.75 12.0001C10.75 11.3097 11.3096 10.7501 12 10.7501C12.6904 10.7501 13.25 11.3097 13.25 12.0001C13.25 12.6904 12.6904 13.2501 12 13.2501C11.3096 13.2501 10.75 12.6904 10.75 12.0001Z" fill="currentColor"/>''',
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
