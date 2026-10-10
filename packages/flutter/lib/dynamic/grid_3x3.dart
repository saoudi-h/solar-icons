// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grid-3x3` icon in every style.
///
/// Prefer the static widgets (e.g. `Grid3x3LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Grid3x3Icon extends StatelessWidget {
  /// Creates the `grid-3x3` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Grid3x3Icon({
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
    name: 'grid-3x3',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M14.5723 16.0635V21.9844C13.8024 21.9963 12.949 22 12 22C11.0578 22 10.2099 21.9961 9.44434 21.9844C9.44441 21.9801 9.44531 21.9759 9.44531 21.9717V16.0635H14.5723ZM7.94531 16.0635V21.9395C5.78384 21.8274 4.43045 21.5008 3.46484 20.5352C2.50055 19.5709 2.17303 18.2198 2.06055 16.0635H7.94531ZM21.9395 16.0635C21.827 18.2198 21.4995 19.5709 20.5352 20.5352C19.5722 21.4981 18.2235 21.8256 16.0723 21.9385V16.0635H21.9395ZM2.03711 9.43652H7.94531V14.5635H2.03906C2.03105 14.5635 2.0226 14.5642 2.01465 14.5645C2.00282 13.7966 2 12.9458 2 12C2 11.0542 2.00282 10.2034 2.01465 9.43555C2.02212 9.43577 2.02958 9.43652 2.03711 9.43652ZM21.9844 9.43555C21.9962 10.2034 22 11.0542 22 12C22 12.9454 21.9962 13.7959 21.9844 14.5635H16.0723V9.43652L21.9502 9.4375C21.9617 9.43749 21.973 9.43606 21.9844 9.43555ZM14.5723 9.43652V14.5635H9.44531V9.43652H14.5723ZM16.0723 2.06055C18.2235 2.17347 19.5722 2.50186 20.5352 3.46484C21.4995 4.42914 21.827 5.78016 21.9395 7.93652H16.0723V2.06055ZM7.94531 7.93652H2.06055C2.17303 5.78016 2.50055 4.42914 3.46484 3.46484C4.43045 2.49923 5.78381 2.17162 7.94531 2.05957V7.93652ZM12 2C12.949 2 13.8024 2.0027 14.5723 2.01465V7.93652H9.44531L9.44629 2.05957C9.44629 2.04447 9.44424 2.02953 9.44336 2.01465C10.2092 2.00294 11.0574 2 12 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'grid-3x3',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M14.5713 2.01465C15.111 2.02302 15.6096 2.03633 16.0713 2.06055V7.93652H21.9395C21.9635 8.39826 21.9761 8.89685 21.9844 9.43652H16.0713V14.5635H21.9854C21.977 15.1032 21.9635 15.6017 21.9395 16.0635H16.0713V21.9385C15.6096 21.9627 15.111 21.976 14.5713 21.9844V16.0635H9.44531V21.9844C8.90568 21.9761 8.4071 21.9634 7.94531 21.9395V16.0635H2.06055C2.03646 15.6017 2.02295 15.1032 2.01465 14.5635H7.94531V9.43652H2.01465C2.02295 8.89685 2.03646 8.39826 2.06055 7.93652H7.94531V2.05957C8.40709 2.03563 8.9057 2.02288 9.44531 2.01465V7.93652H14.5713V2.01465ZM9.44531 14.5635H14.5713V9.43652H9.44531V14.5635Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'grid-3x3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21.9954 10.0731C21.9685 6.61368 21.7852 4.71412 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C21.7764 19.2947 21.9658 17.4131 21.9948 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.69579 2.05957L8.69531 18" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.3223 6.01318L15.3219 21.9715" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.9497 8.68701L2.03728 8.68701" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.981 15.3135L2.03811 15.313" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'grid-3x3',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8.69579 2.05957L8.6958 21.972" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.3223 2.02854L15.3218 21.9714" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.9497 8.68701L2.03728 8.68701" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.981 15.3135L2.03811 15.313" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'grid-3x3',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.69587 2.05959L8.69587 21.972M15.3223 2.02856L15.3219 21.9714M21.9498 8.68703L2.03735 8.68703M21.9811 15.3135L2.03818 15.3131" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'grid-3x3',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C13.24 1.25 14.3367 1.25018 15.3057 1.27832C15.3112 1.2782 15.3167 1.27832 15.3223 1.27832C15.3483 1.27832 15.3741 1.27964 15.3994 1.28223C16.2172 1.30779 16.9428 1.35301 17.5859 1.43945C19.0307 1.63369 20.1706 2.03976 21.0654 2.93457C21.9602 3.82938 22.3663 4.96933 22.5605 6.41406C22.7518 7.83717 22.75 9.66439 22.75 12C22.75 13.2006 22.7491 14.2668 22.7236 15.2129C22.7281 15.2458 22.7314 15.2793 22.7314 15.3135C22.7314 15.3653 22.7258 15.416 22.7158 15.4648C22.6898 16.2559 22.6447 16.96 22.5605 17.5859C22.3663 19.0307 21.9602 20.1706 21.0654 21.0654C20.1706 21.9602 19.0307 22.3663 17.5859 22.5605C16.9283 22.6489 16.1843 22.6936 15.3438 22.7188C15.3366 22.719 15.3295 22.7207 15.3223 22.7207L15.3174 22.7197C14.3455 22.7482 13.245 22.75 12 22.75C10.7646 22.75 9.67145 22.7485 8.70508 22.7207C8.70215 22.7207 8.69923 22.7217 8.69629 22.7217C8.68167 22.7217 8.66676 22.7196 8.65234 22.7188C7.81341 22.6936 7.07068 22.6488 6.41406 22.5605C4.96933 22.3663 3.82938 21.9602 2.93457 21.0654C2.03976 20.1706 1.63369 19.0307 1.43945 17.5859C1.24817 16.1628 1.25 14.3356 1.25 12C1.25 9.66439 1.24817 7.83717 1.43945 6.41406C1.63369 4.96933 2.03976 3.82938 2.93457 2.93457C3.82938 2.03976 4.96933 1.63369 6.41406 1.43945C7.83717 1.24817 9.66439 1.25 12 1.25ZM9.44629 16.0635V21.2344C10.2012 21.246 11.0468 21.25 12 21.25C12.9611 21.25 13.8127 21.2463 14.5723 21.2344V16.0635H9.44629ZM2.81152 16.0635C2.83756 16.5482 2.873 16.9869 2.92676 17.3867C3.09865 18.6649 3.42551 19.4353 3.99512 20.0049C4.56472 20.5745 5.33508 20.9014 6.61328 21.0732C7.01582 21.1274 7.45766 21.1624 7.94629 21.1885V16.0635H2.81152ZM16.0723 16.0635V21.1875C16.5535 21.1615 16.9893 21.1267 17.3867 21.0732C18.6649 20.9014 19.4353 20.5745 20.0049 20.0049C20.5745 19.4353 20.9014 18.6649 21.0732 17.3867C21.127 16.9869 21.1624 16.5482 21.1885 16.0635H16.0723ZM2.76465 9.43652C2.75286 10.1939 2.75 11.0427 2.75 12C2.75 12.9574 2.75384 13.8061 2.76563 14.5635H7.94629V9.43652H2.76465ZM9.44629 14.5635H14.5723V9.43652H9.44629V14.5635ZM16.0723 14.5635H21.2344C21.2462 13.8061 21.25 12.9574 21.25 12C21.25 11.0426 21.2462 10.1939 21.2344 9.43652H16.0723V14.5635ZM7.94629 2.81055C7.45764 2.8366 7.01583 2.87264 6.61328 2.92676C5.33508 3.09865 4.56472 3.42551 3.99512 3.99512C3.42551 4.56472 3.09865 5.33508 2.92676 6.61328C2.873 7.01316 2.83658 7.45174 2.81055 7.93652H7.94629V2.81055ZM12 2.75C11.0468 2.75 10.2012 2.75301 9.44629 2.76465V7.93652H14.5723V2.76465C13.8127 2.75273 12.9611 2.75 12 2.75ZM16.0723 7.93652H21.1885C21.1624 7.45176 21.127 7.01314 21.0732 6.61328C20.9014 5.33508 20.5745 4.56472 20.0049 3.99512C19.4353 3.42551 18.6649 3.09865 17.3867 2.92676C16.9893 2.87332 16.5536 2.83754 16.0723 2.81152V7.93652Z" fill="currentColor"/>''',
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
