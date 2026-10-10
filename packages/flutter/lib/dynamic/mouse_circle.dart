// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `mouse-circle` icon in every style.
///
/// Prefer the static widgets (e.g. `MouseCircleLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MouseCircleIcon extends StatelessWidget {
  /// Creates the `mouse-circle` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const MouseCircleIcon({
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
    name: 'mouse-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 21.4534C6.77256 21.4534 2.53488 17.1834 2.53488 11.9161C2.53488 7.29856 5.79222 3.44593 10.1182 2.56704C10.6454 2.45995 11.2326 2.90228 11.2326 3.66754V5.72967H12.7674V3.66754C12.7674 2.15503 11.5037 0.707845 9.81487 1.05095C4.78661 2.07251 1 6.54784 1 11.9161C1 18.0375 5.92487 23 12 23C18.0751 23 23 18.0375 23 11.9161C23 7.52765 20.4689 3.73641 16.801 1.94091C16.4197 1.75429 15.9605 1.91442 15.7753 2.29856C15.5901 2.68271 15.749 3.14542 16.1303 3.33204C19.2898 4.87867 21.4651 8.14213 21.4651 11.9161C21.4651 17.1834 17.2274 21.4534 12 21.4534Z" fill="currentColor"/>
<path d="M7.90698 13.9539C7.90698 16.2451 9.73949 18.1024 12 18.1024C14.2605 18.1024 16.093 16.2451 16.093 13.9539V10.5832H7.90698V13.9539Z" fill="currentColor"/>
<path d="M12.7674 9.33839H16.0212C15.7091 7.67099 14.4125 6.04596 12.7674 5.72967V9.33839Z" fill="currentColor"/>
<path d="M11.2326 9.33839V5.72967C9.58746 6.04596 8.29087 7.67099 7.97881 9.33839H11.2326Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'mouse-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7.90723 13.9537C7.90723 16.2449 9.73974 18.1023 12.0002 18.1023C14.2608 18.1023 16.0933 16.2449 16.0933 13.9537V10.5831H7.90723V13.9537Z" fill="currentColor"/>
<path d="M12.7677 9.33822H16.0214C15.7094 7.67081 14.4128 6.04579 12.7677 5.72949V9.33822Z" fill="currentColor"/>
<path d="M11.2328 9.33822V5.72949C9.58771 6.04579 8.29112 7.67081 7.97906 9.33822H11.2328Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.53488 11.9161C2.53488 17.1834 6.77256 21.4534 12 21.4534C17.2274 21.4534 21.4651 17.1834 21.4651 11.9161C21.4651 8.14213 19.2898 4.87867 16.1303 3.33204C15.749 3.14542 15.5901 2.68271 15.7753 2.29856C15.9605 1.91442 16.4197 1.75429 16.801 1.94091C20.4689 3.73641 23 7.52765 23 11.9161C23 18.0375 18.0751 23 12 23C5.92487 23 1 18.0375 1 11.9161C1 6.54784 4.78661 2.07251 9.81487 1.05095C11.5037 0.707845 12.7674 2.15503 12.7674 3.66754V5.80249C14.6612 6.16648 16.0933 7.85287 16.0933 9.87826V13.9999C16.0933 16.2911 14.2608 18.1484 12.0002 18.1484C9.73974 18.1484 7.90723 16.2911 7.90723 13.9999V9.87826C7.90723 7.85305 9.339 6.16678 11.2326 5.80259V3.66754C11.2326 2.90228 10.6454 2.45995 10.1182 2.56704C5.79222 3.44593 2.53488 7.29856 2.53488 11.9161Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'mouse-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16 14C16 16.2091 14.2091 18 12 18C9.79086 18 8 16.2091 8 14V10C8 7.79086 9.79086 6 12 6C14.2091 6 16 7.79086 16 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 10H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 10V6" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 8.89182V3.85022C12 2.73646 11.0955 1.81254 10.0128 2.03267C5.44193 2.96194 2 7.03407 2 11.9168C2 13.7706 2.49614 15.5075 3.36182 17M16.3641 2.8419C19.7003 4.4761 22 7.92565 22 11.9168C22 17.4856 17.5228 22 12 22C10.1786 22 8.47087 21.509 7 20.651" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'mouse-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8 10C8 7.79086 9.79086 6 12 6C14.2091 6 16 7.79086 16 10V14C16 16.2091 14.2091 18 12 18C9.79086 18 8 16.2091 8 14V10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 10H15.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 10V6" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 8.89182V3.85022C12 2.73646 11.0955 1.81254 10.0128 2.03267C5.44193 2.96194 2 7.03407 2 11.9168C2 17.4856 6.47715 22 12 22C17.5228 22 22 17.4856 22 11.9168C22 7.92565 19.7003 4.4761 16.3641 2.8419" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'mouse-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 10C8 7.79086 9.79086 6 12 6C14.2091 6 16 7.79086 16 10V14C16 16.2091 14.2091 18 12 18C9.79086 18 8 16.2091 8 14V10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 10H15.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 10V6" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 8.89182V3.85022C12 2.73646 11.0955 1.81254 10.0128 2.03267C5.44193 2.96194 2 7.03407 2 11.9168C2 17.4856 6.47715 22 12 22C17.5228 22 22 17.4856 22 11.9168C22 7.92565 19.7003 4.4761 16.3641 2.8419" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'mouse-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.25 3.85064C11.25 3.09139 10.6697 2.66488 10.1622 2.76806C5.93808 3.62684 2.75 7.39389 2.75 11.9172C2.75 17.0777 6.89721 21.2504 12 21.2504C17.1028 21.2504 21.25 17.0777 21.25 11.9172C21.25 8.22069 19.1208 5.02783 16.0342 3.51586C15.6622 3.33364 15.5084 2.88438 15.6906 2.5124C15.8728 2.14041 16.3221 1.98658 16.6941 2.16879C20.2798 3.92522 22.75 7.63146 22.75 11.9172C22.75 17.8944 17.9429 22.7504 12 22.7504C6.05709 22.7504 1.25 17.8944 1.25 11.9172C1.25 6.67509 4.94577 2.29789 9.86335 1.29813C11.5214 0.961054 12.75 2.38238 12.75 3.85064V5.3093C15.017 5.66889 16.75 7.63227 16.75 10.0004V14.0004C16.75 16.6238 14.6234 18.7504 12 18.7504C9.37665 18.7504 7.25 16.6238 7.25 14.0004V10.0004C7.25 7.63227 8.98301 5.66889 11.25 5.3093V3.85064ZM11.25 6.83739C10.0574 7.1191 9.11868 8.05784 8.83697 9.25043H11.25V6.83739ZM12.75 9.25043H15.163C14.8813 8.05784 13.9426 7.1191 12.75 6.83739V9.25043ZM15.25 10.7504H8.75V14.0004C8.75 15.7954 10.2051 17.2504 12 17.2504C13.7949 17.2504 15.25 15.7954 15.25 14.0004V10.7504Z" fill="currentColor"/>''',
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
