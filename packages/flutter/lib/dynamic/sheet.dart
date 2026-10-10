// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sheet` icon in every style.
///
/// Prefer the static widgets (e.g. `SheetLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class SheetIcon extends StatelessWidget {
  /// Creates the `sheet` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const SheetIcon({
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
    name: 'sheet',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M14.583 21.9844C13.8103 21.9965 12.9534 22 12 22C11.0466 22 10.1897 21.9965 9.41699 21.9844V16.083H14.583V21.9844Z" fill="currentColor"/>
<path d="M7.91699 21.9385C5.77199 21.825 4.42622 21.4965 3.46484 20.5352C2.50346 19.5738 2.17498 18.228 2.06152 16.083H7.91699V21.9385Z" fill="currentColor"/>
<path d="M21.9385 16.083C21.825 18.228 21.4965 19.5738 20.5352 20.5352C19.5738 21.4965 18.228 21.825 16.083 21.9385V16.083H21.9385Z" fill="currentColor"/>
<path d="M7.91699 14.583H2.01562C2.00351 13.8103 2 12.9534 2 12C2 11.0462 2.00349 10.189 2.01562 9.41602H7.91699V14.583Z" fill="currentColor"/>
<path d="M14.584 14.583H9.41699V9.41602H14.584V14.583Z" fill="currentColor"/>
<path d="M21.9844 9.41602C21.9965 10.189 22 11.0462 22 12C22 12.9534 21.9965 13.8103 21.9844 14.583H16.084V9.41602H21.9844Z" fill="currentColor"/>
<path d="M12 2C16.714 2 19.0707 2.00038 20.5352 3.46484C21.4964 4.42608 21.825 5.77158 21.9385 7.91602H2.06152C2.17503 5.77158 2.50361 4.42608 3.46484 3.46484C4.92931 2.00038 7.28595 2 12 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'sheet',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21.9385 7.91602C21.9629 8.37765 21.9759 8.87623 21.9844 9.41602H16.084V14.583H21.9844C21.9759 15.1228 21.9629 15.6214 21.9385 16.083H16.083V21.9385C15.6214 21.9629 15.1228 21.9759 14.583 21.9844V16.083H9.41699V21.9844C8.87721 21.9759 8.37863 21.9629 7.91699 21.9385V16.083H2.06152C2.03711 15.6214 2.02409 15.1228 2.01562 14.583H7.91699V9.41602H2.01562C2.0241 8.87623 2.03709 8.37765 2.06152 7.91602H21.9385ZM9.41699 14.583H14.584V9.41602H9.41699V14.583Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'sheet',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2.02886 15.333L21.9713 15.333" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.02881 8.66602L21.9711 8.66602" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.333 8.66602L15.333 21.9711" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.6665 8.66602L8.6665 21.9711" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.9946 9.98076C21.9651 6.5798 21.774 4.70296 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C21.774 19.297 21.9651 17.4202 21.9946 14.0191" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'sheet',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2.02886 15.333L21.9713 15.333" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.02881 8.66602L21.9711 8.66602" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.333 8.66602L15.333 21.9711" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.6665 8.66602L8.6665 21.9711" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'sheet',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.02886 15.333H21.9713M2.02881 8.66602L21.9711 8.66602M15.333 8.66602L15.333 21.9711M8.6665 8.66602L8.6665 21.9711" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'sheet',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C14.3356 1.25 16.1628 1.24817 17.5859 1.43945C19.0307 1.63369 20.1706 2.03976 21.0654 2.93457C21.9602 3.82938 22.3663 4.96933 22.5605 6.41406C22.6464 7.05305 22.6911 7.77359 22.7168 8.58496C22.7197 8.61159 22.7217 8.63863 22.7217 8.66602C22.7217 8.67288 22.7199 8.6797 22.7197 8.68652C22.7481 9.65746 22.75 10.7567 22.75 12C22.75 13.2425 22.748 14.3411 22.7197 15.3115C22.7199 15.3187 22.7217 15.3258 22.7217 15.333C22.7217 15.359 22.7204 15.3848 22.7178 15.4102C22.6921 16.2235 22.6466 16.9457 22.5605 17.5859C22.3663 19.0307 21.9602 20.1706 21.0654 21.0654C20.1706 21.9602 19.0307 22.3663 17.5859 22.5605C16.9367 22.6478 16.2033 22.6924 15.376 22.7178C15.3617 22.7186 15.3475 22.7207 15.333 22.7207C15.3297 22.7207 15.3265 22.7198 15.3232 22.7197C14.3499 22.7484 13.2475 22.75 12 22.75C10.7521 22.75 9.64934 22.7484 8.67578 22.7197C8.67285 22.7198 8.66993 22.7207 8.66699 22.7207C8.65237 22.7207 8.63746 22.7186 8.62305 22.7178C7.79611 22.6924 7.06303 22.6478 6.41406 22.5605C4.96933 22.3663 3.82938 21.9602 2.93457 21.0654C2.03976 20.1706 1.63369 19.0307 1.43945 17.5859C1.35339 16.9457 1.30786 16.2235 1.28223 15.4102C1.27964 15.3848 1.2793 15.359 1.2793 15.333C1.2793 15.3294 1.27925 15.3258 1.2793 15.3223C1.25067 14.3492 1.25 13.2471 1.25 12C1.25 10.7525 1.25064 9.65007 1.2793 8.67676C1.27925 8.67318 1.2793 8.6696 1.2793 8.66602C1.2793 8.63866 1.27937 8.61156 1.28223 8.58496C1.30789 7.77357 1.35356 7.05306 1.43945 6.41406C1.63369 4.96933 2.03976 3.82938 2.93457 2.93457C3.82938 2.03976 4.96933 1.63369 6.41406 1.43945C7.83717 1.24817 9.66439 1.25 12 1.25ZM9.41699 21.2344C10.1793 21.2465 11.0344 21.25 12 21.25C12.9656 21.25 13.8207 21.2465 14.583 21.2344V16.083H9.41699V21.2344ZM2.8125 16.083C2.83849 16.56 2.87372 16.9922 2.92676 17.3867C3.09865 18.6649 3.42551 19.4353 3.99512 20.0049C4.56472 20.5745 5.33508 20.9014 6.61328 21.0732C7.00776 21.1263 7.43997 21.1615 7.91699 21.1875V16.083H2.8125ZM16.083 16.083V21.1875C16.56 21.1615 16.9922 21.1263 17.3867 21.0732C18.6649 20.9014 19.4353 20.5745 20.0049 20.0049C20.5745 19.4353 20.9014 18.6649 21.0732 17.3867C21.1263 16.9922 21.1615 16.56 21.1875 16.083H16.083ZM16.083 9.41602V14.583H21.2344C21.2465 13.8207 21.25 12.9656 21.25 12C21.25 11.034 21.2465 10.1785 21.2344 9.41602H16.083ZM2.76562 9.41602C2.75352 10.1785 2.75 11.034 2.75 12C2.75 12.9656 2.75354 13.8207 2.76562 14.583H7.91699V9.41602H2.76562ZM9.41699 14.583H14.583V9.41602H9.41699V14.583ZM12 2.75C9.62178 2.75 7.91326 2.75198 6.61328 2.92676C5.33508 3.09865 4.56472 3.42551 3.99512 3.99512C3.42551 4.56472 3.09865 5.33508 2.92676 6.61328C2.87376 7.0075 2.83848 7.43938 2.8125 7.91602H21.1875C21.1615 7.43938 21.1262 7.0075 21.0732 6.61328C20.9014 5.33508 20.5745 4.56472 20.0049 3.99512C19.4353 3.42551 18.6649 3.09865 17.3867 2.92676C16.0867 2.75198 14.3782 2.75 12 2.75Z" fill="currentColor"/>''',
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
