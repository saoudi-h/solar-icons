// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `kanban-square` icon.
class KanbanSquareIcon extends StatelessWidget {
  /// Creates the `kanban-square` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const KanbanSquareIcon({
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
    name: 'kanban-square',
    style: SolarIconStyle.bold,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C16.714 2 19.0707 2.00038 20.5352 3.46484C21.9996 4.92931 22 7.28595 22 12C22 16.714 21.9996 19.0707 20.5352 20.5352C19.0707 21.9996 16.714 22 12 22C7.28595 22 4.92931 21.9996 3.46484 20.5352C2.00038 19.0707 2 16.714 2 12C2 7.28595 2.00038 4.92931 3.46484 3.46484C4.92931 2.00038 7.28595 2 12 2ZM17 5.25C16.5858 5.25 16.25 5.58579 16.25 6V18C16.25 18.4142 16.5858 18.75 17 18.75C17.4142 18.75 17.75 18.4142 17.75 18V6C17.75 5.58579 17.4142 5.25 17 5.25ZM7 5.25C6.58579 5.25 6.25 5.58579 6.25 6V15C6.25 15.4142 6.58579 15.75 7 15.75C7.41421 15.75 7.75 15.4142 7.75 15V6C7.75 5.58579 7.41421 5.25 7 5.25ZM12 5.25C11.5858 5.25 11.25 5.58579 11.25 6V11C11.25 11.4142 11.5858 11.75 12 11.75C12.4142 11.75 12.75 11.4142 12.75 11V6C12.75 5.58579 12.4142 5.25 12 5.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'kanban-square',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M17 5.25C17.4142 5.25 17.75 5.58579 17.75 6V18C17.75 18.4142 17.4142 18.75 17 18.75C16.5858 18.75 16.25 18.4142 16.25 18V6C16.25 5.58579 16.5858 5.25 17 5.25Z" fill="currentColor"/>
<path d="M7 5.25C7.41421 5.25 7.75 5.58579 7.75 6V15C7.75 15.4142 7.41421 15.75 7 15.75C6.58579 15.75 6.25 15.4142 6.25 15V6C6.25 5.58579 6.58579 5.25 7 5.25Z" fill="currentColor"/>
<path d="M12 5.25C12.4142 5.25 12.75 5.58579 12.75 6V11C12.75 11.4142 12.4142 11.75 12 11.75C11.5858 11.75 11.25 11.4142 11.25 11V6C11.25 5.58579 11.5858 5.25 12 5.25Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28596 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46446C4.92893 2 7.28596 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28596 22 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'kanban-square',
    style: SolarIconStyle.broken,
    body: r'''<path d="M7 6L7 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 6L17 18" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6L12 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C21.5093 4.43821 21.8356 5.80655 21.9449 8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'kanban-square',
    style: SolarIconStyle.linear,
    body: r'''<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46446C4.92893 2 7.28596 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 6L7 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 6L17 18" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6L12 11" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'kanban-square',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M7 6L7 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 6L17 18" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6L12 11" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<path opacity="0.5" d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46446C4.92893 2 7.28596 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'kanban-square',
    style: SolarIconStyle.outline,
    body: r'''<path d="M17 5.25C17.4142 5.25 17.75 5.58579 17.75 6V18C17.75 18.4142 17.4142 18.75 17 18.75C16.5858 18.75 16.25 18.4142 16.25 18V6C16.25 5.58579 16.5858 5.25 17 5.25Z" fill="currentColor"/>
<path d="M7 5.25C7.41421 5.25 7.75 5.58579 7.75 6V15C7.75 15.4142 7.41421 15.75 7 15.75C6.58579 15.75 6.25 15.4142 6.25 15V6C6.25 5.58579 6.58579 5.25 7 5.25Z" fill="currentColor"/>
<path d="M12 5.25C12.4142 5.25 12.75 5.58579 12.75 6V11C12.75 11.4142 12.4142 11.75 12 11.75C11.5858 11.75 11.25 11.4142 11.25 11V6C11.25 5.58579 11.5858 5.25 12 5.25Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C14.3356 1.25 16.1628 1.24817 17.5859 1.43945C19.0307 1.63369 20.1706 2.03976 21.0654 2.93457C21.9602 3.82938 22.3663 4.96933 22.5605 6.41406C22.7518 7.83717 22.75 9.66439 22.75 12C22.75 14.3356 22.7518 16.1628 22.5605 17.5859C22.3663 19.0307 21.9602 20.1706 21.0654 21.0654C20.1706 21.9602 19.0307 22.3663 17.5859 22.5605C16.1628 22.7518 14.3356 22.75 12 22.75C9.66439 22.75 7.83717 22.7518 6.41406 22.5605C4.96933 22.3663 3.82938 21.9602 2.93457 21.0654C2.03976 20.1706 1.63369 19.0307 1.43945 17.5859C1.24817 16.1628 1.25 14.3356 1.25 12C1.25 9.6644 1.24817 7.83717 1.43945 6.41406C1.63369 4.96933 2.03976 3.82938 2.93457 2.93457C3.82938 2.03976 4.96933 1.63369 6.41406 1.43945C7.83717 1.24817 9.66439 1.25 12 1.25ZM12 2.75C9.62178 2.75 7.91326 2.75198 6.61328 2.92676C5.33508 3.09865 4.56472 3.42551 3.99512 3.99512C3.42551 4.56472 3.09865 5.33508 2.92676 6.61328C2.75198 7.91326 2.75 9.62178 2.75 12C2.75 14.3782 2.75198 16.0867 2.92676 17.3867C3.09865 18.6649 3.42551 19.4353 3.99512 20.0049C4.56472 20.5745 5.33508 20.9014 6.61328 21.0732C7.91326 21.248 9.62178 21.25 12 21.25C14.3782 21.25 16.0867 21.248 17.3867 21.0732C18.6649 20.9014 19.4353 20.5745 20.0049 20.0049C20.5745 19.4353 20.9014 18.6649 21.0732 17.3867C21.248 16.0867 21.25 14.3782 21.25 12C21.25 9.62178 21.248 7.91326 21.0732 6.61328C20.9014 5.33508 20.5745 4.56472 20.0049 3.99512C19.4353 3.42551 18.6649 3.09865 17.3867 2.92676C16.0867 2.75198 14.3782 2.75 12 2.75Z" fill="currentColor"/>''',
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
