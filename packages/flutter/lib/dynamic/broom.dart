// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `broom` icon in every style.
///
/// Prefer the static widgets (e.g. `BroomLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class BroomIcon extends StatelessWidget {
  /// Creates the `broom` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const BroomIcon({
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
    name: 'broom',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M18.2211 19.6431C18.6981 18.7396 19.1627 17.7065 19.4613 16.6623C19.8722 15.2247 20.0207 13.8751 20.0629 12.8451L18.5105 11.2926L12.7073 5.48944L11.1549 3.93701C10.1248 3.97917 8.77531 4.12767 7.33767 4.53865C6.29348 4.83716 5.26037 5.30183 4.35693 5.77885C2.10098 6.96998 1.42721 9.71071 2.49716 11.8068L2.51021 11.8324L3.20923 12.9815C5.15002 16.1718 7.82804 18.8499 11.0184 20.7907L12.1675 21.4898L12.1931 21.5028C14.2892 22.5728 17.0299 21.899 18.2211 19.6431Z" fill="currentColor"/>
<path d="M21.7747 3.31343C22.0751 3.01296 22.0751 2.52581 21.7747 2.22535C21.4742 1.92488 20.987 1.92488 20.6866 2.22535L19.0118 3.90018C17.3118 2.66569 14.9941 2.66575 13.2942 3.9002L14.4027 5.00866L18.9915 9.59749L20.0999 10.7059C21.3344 9.00597 21.3343 6.68821 20.0998 4.98826L21.7747 3.31343Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'broom',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M19.6426 4.35756C17.9067 2.62162 15.0922 2.62175 13.3562 4.35764L13.3184 4.39549C13.5498 4.55102 13.774 4.77521 14.1201 5.12119L18.9454 9.9457C19.2472 10.2475 19.4628 10.463 19.6205 10.6662L19.6427 10.644C21.3786 8.90807 21.3785 6.09349 19.6426 4.35756Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M11.7598 4.08286C12.349 4.0805 12.644 4.07904 13.0138 4.2313C13.3833 4.38356 13.6289 4.6297 14.1202 5.12095L18.9454 9.94517C19.4735 10.4732 19.7383 10.738 19.8907 11.1336C20.0429 11.529 20.0263 11.8492 19.9942 12.4891C19.9405 13.5608 19.7703 15.1141 19.2823 16.8211C18.9802 17.8777 18.5039 18.9408 18.003 19.8895C16.9429 21.8974 14.4875 22.5205 12.5889 21.5516L11.3702 20.8104C8.02817 18.7773 5.22265 15.9718 3.18953 12.6297L2.44832 11.411C1.47933 9.51245 2.10249 7.05711 4.11043 5.99693C5.05913 5.49603 6.12226 5.01969 7.17879 4.71763C8.9754 4.20402 10.6467 4.08733 11.7598 4.08286Z" fill="currentColor"/>
<path d="M21.4698 1.46958C21.7627 1.17686 22.2375 1.17675 22.5304 1.46958C22.823 1.76243 22.823 2.23728 22.5304 2.53013L20.128 4.93247C19.9849 4.73086 19.8233 4.53796 19.6427 4.35728C19.4619 4.17654 19.2692 4.01503 19.0675 3.87193L21.4698 1.46958Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'broom',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.728 5.53587C14.2901 3.97377 16.8227 3.9737 18.3848 5.53579" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.3848 5.53564C19.9469 7.09774 19.9469 9.63048 18.3848 11.1926" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.5061 3.41406L18.3848 5.53538" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.2523 15.9999C18.1964 16.2464 18.1327 16.4972 18.0602 16.7508C17.7884 17.7017 17.3599 18.6586 16.9091 19.5124C15.9551 21.3193 13.7457 21.8796 12.0373 21.0075L10.9409 20.3406C7.93352 18.511 5.40903 15.9865 3.57952 12.9791L2.91264 11.8829C2.04059 10.1745 2.60083 7.96504 4.40773 7.01101C5.26153 6.5602 6.21846 6.13178 7.16933 5.85995C10.0288 5.04249 12.5347 5.34222 12.5347 5.34222L18.3848 11.1924" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'broom',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2.44853 11.4113L3.18962 12.6295C5.22275 15.9716 8.02819 18.7771 11.3703 20.8103L12.5886 21.5514C14.4872 22.5206 16.9425 21.898 18.0027 19.89C18.5037 18.9411 18.9798 17.8777 19.2819 16.821C20.1903 13.6432 19.8572 10.8584 19.8572 10.8584L13.1415 4.14263C13.1415 4.14263 10.3567 3.80954 7.17896 4.71798C6.12226 5.02007 5.05883 5.49617 4.11001 5.99715C2.10201 7.05737 1.47943 9.51271 2.44853 11.4113Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 2L19.6426 4.35742" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.3564 4.35767C15.0924 2.62172 17.9069 2.62163 19.6428 4.35759C21.3788 6.09355 21.3788 8.90817 19.6429 10.6441" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'broom',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12.728 5.53587C14.2901 3.97377 16.8227 3.9737 18.3848 5.53579C19.9469 7.09789 19.9469 9.63063 18.3848 11.1927M3.57952 12.9794L2.91264 11.8832C2.04059 10.1748 2.60083 7.96535 4.40773 7.01132C5.26153 6.56051 6.21846 6.13209 7.16933 5.86026C10.0288 5.0428 12.5347 5.34253 12.5347 5.34253L18.5779 11.3857C18.5779 11.3857 18.8777 13.8916 18.0602 16.7511C17.7884 17.702 17.3599 18.6589 16.9091 19.5127C15.9551 21.3196 13.7457 21.8799 12.0373 21.0078L10.9409 20.3409C7.93352 18.5113 5.40903 15.9868 3.57952 12.9794Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.5061 3.41406L18.3848 5.53538" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'broom',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21.0367 2.88373C21.3296 3.17663 21.3296 3.6515 21.0367 3.94439L19.404 5.57701C20.6352 7.27231 20.6068 9.59792 19.319 11.2642L19.3229 11.2962L19.291 11.3C19.291 11.3001 19.2911 11.3 19.291 11.3C19.3231 11.2963 19.3229 11.2962 19.3229 11.2962L19.3234 11.3007L19.3243 11.3089L19.3273 11.336C19.3296 11.3588 19.3328 11.391 19.3365 11.432C19.3438 11.5141 19.353 11.6317 19.3611 11.7805C19.3774 12.0779 19.3898 12.5013 19.3756 13.0165C19.3471 14.0442 19.2121 15.4509 18.7816 16.9569C18.4906 17.9747 18.0376 18.9818 17.5726 19.8625C16.4115 22.0616 13.7398 22.7184 11.6965 21.6754L11.6716 21.6627L10.5514 20.9812C7.44145 19.0893 4.8309 16.4788 2.93902 13.3688L2.25761 12.2487L2.24489 12.2238C1.20189 10.1805 1.85869 7.50879 4.0578 6.34768C4.93847 5.88268 5.94556 5.42972 6.96344 5.13874C8.46937 4.70823 9.8761 4.57319 10.9038 4.54473C11.419 4.53046 11.8424 4.54288 12.1398 4.55919C12.2886 4.56734 12.4062 4.57649 12.4882 4.5838C12.5293 4.58745 12.5615 4.59065 12.5843 4.59304L12.6114 4.59597L12.6196 4.5969L12.6223 4.59722L12.6233 4.59734C12.6233 4.59735 12.6238 4.5974 12.62 4.62984C12.6199 4.62989 12.6201 4.62978 12.62 4.62984L12.6233 4.59734L12.6565 4.60132C14.3228 3.31367 16.6482 3.2853 18.3434 4.51635L19.976 2.88373C20.2689 2.59084 20.7438 2.59084 21.0367 2.88373ZM12.1978 6.06557C12.1559 6.06269 12.1092 6.05976 12.0577 6.05694C11.7959 6.04259 11.4141 6.03117 10.9454 6.04415C10.0053 6.07019 8.72929 6.19401 7.37573 6.58096C6.49186 6.83364 5.58509 7.23752 4.75816 7.67414C3.35154 8.41682 2.88512 10.1484 3.56901 11.5182L4.22052 12.5892C5.98767 15.4941 8.42609 17.9325 11.331 19.6997L12.402 20.3513C13.7719 21.0352 15.5035 20.5688 16.2462 19.1621C16.6828 18.3352 17.0867 17.4284 17.3393 16.5446C17.7263 15.191 17.8501 13.915 17.8761 12.9749C17.8891 12.5062 17.8777 12.1244 17.8634 11.8626C17.8605 11.8111 17.8576 11.7644 17.8547 11.7225L12.1978 6.06557ZM18.3236 10.0701L13.8504 5.5969C15.1034 4.82281 16.768 4.97907 17.8547 6.06571C18.9413 7.15238 19.0977 8.81714 18.3236 10.0701Z" fill="currentColor"/>''',
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
