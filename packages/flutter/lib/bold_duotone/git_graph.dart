// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `git-graph` icon in the boldDuotone style.
class GitGraphBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `git-graph` icon in the boldDuotone style.
  const GitGraphBoldDuotoneIcon({
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
    name: 'git-graph',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M5 15.2852C7.07099 15.2852 8.74987 16.9642 8.75 19.0352C8.75 21.1062 7.07107 22.7852 5 22.7852C2.92893 22.7852 1.25 21.1062 1.25 19.0352C1.25013 16.9642 2.92901 15.2852 5 15.2852ZM5 16.7852C3.75744 16.7852 2.75013 17.7926 2.75 19.0352C2.75 20.2778 3.75736 21.2852 5 21.2852C6.24264 21.2852 7.25 20.2778 7.25 19.0352C7.24987 17.7926 6.24256 16.7852 5 16.7852Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M5 1.25C7.07107 1.25 8.75 2.92893 8.75 5C8.75 7.07107 7.07107 8.75 5 8.75C2.92893 8.75 1.25 7.07107 1.25 5C1.25 2.92893 2.92893 1.25 5 1.25ZM5 2.75C3.75736 2.75 2.75 3.75736 2.75 5C2.75 6.24264 3.75736 7.25 5 7.25C6.24264 7.25 7.25 6.24264 7.25 5C7.25 3.75736 6.24264 2.75 5 2.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M19 1.25C21.0711 1.25 22.75 2.92893 22.75 5C22.75 7.07107 21.0711 8.75 19 8.75C16.9289 8.75 15.25 7.07107 15.25 5C15.25 2.92893 16.9289 1.25 19 1.25ZM19 2.75C17.7574 2.75 16.75 3.75736 16.75 5C16.75 6.24264 17.7574 7.25 19 7.25C20.2426 7.25 21.25 6.24264 21.25 5C21.25 3.75736 20.2426 2.75 19 2.75Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M12 1.25C12.4142 1.25 12.75 1.58579 12.75 2V22C12.75 22.4142 12.4142 22.75 12 22.75C11.5858 22.75 11.25 22.4142 11.25 22V2C11.25 1.58579 11.5858 1.25 12 1.25Z" fill="currentColor"/>
<path d="M19.0068 7.25C19.4208 7.25029 19.7568 7.58597 19.7568 8C19.7568 12.009 18.601 15.0058 16.4531 16.6328C16.123 16.8829 15.6525 16.8183 15.4023 16.4883C15.1523 16.1581 15.2168 15.6876 15.5469 15.4375C17.1682 14.2095 18.2568 11.7711 18.2568 8C18.2568 7.58579 18.5926 7.25 19.0068 7.25Z" fill="currentColor"/>
<path d="M5 7.25C5.41421 7.25 5.75 7.58579 5.75 8V16.0039C5.75 16.4181 5.41421 16.7539 5 16.7539C4.58579 16.7539 4.25 16.4181 4.25 16.0039V8C4.25 7.58579 4.58579 7.25 5 7.25Z" fill="currentColor"/>
</g>''',
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
