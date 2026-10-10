// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `kanban-square` icon in the boldDuotone style.
class KanbanSquareBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `kanban-square` icon in the boldDuotone style.
  const KanbanSquareBoldDuotoneIcon({
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
    name: 'kanban-square',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17 5.25C17.4142 5.25 17.75 5.58579 17.75 6V18C17.75 18.4142 17.4142 18.75 17 18.75C16.5858 18.75 16.25 18.4142 16.25 18V6C16.25 5.58579 16.5858 5.25 17 5.25Z" fill="currentColor"/>
<path d="M7 5.25C7.41421 5.25 7.75 5.58579 7.75 6V15C7.75 15.4142 7.41421 15.75 7 15.75C6.58579 15.75 6.25 15.4142 6.25 15V6C6.25 5.58579 6.58579 5.25 7 5.25Z" fill="currentColor"/>
<path d="M12 5.25C12.4142 5.25 12.75 5.58579 12.75 6V11C12.75 11.4142 12.4142 11.75 12 11.75C11.5858 11.75 11.25 11.4142 11.25 11V6C11.25 5.58579 11.5858 5.25 12 5.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28596 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46446C4.92893 2 7.28596 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28596 22 12Z" fill="currentColor"/>''',
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
