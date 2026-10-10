// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `filters` icon.
class FiltersIcon extends StatelessWidget {
  /// Creates the `filters` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const FiltersIcon({
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
    name: 'filters',
    style: SolarIconStyle.bold,
    body: r'''<path d="M5.0332 10.7832C6.13853 13.5472 8.84139 15.5 12 15.5C12.6755 15.5 13.3305 15.4106 13.9531 15.2432C13.9843 15.491 14 15.7437 14 16C14 19.3137 11.3137 22 8 22C4.6863 22 2.00001 19.3137 2 16C2 13.7654 3.22141 11.8158 5.0332 10.7832Z" fill="currentColor"/>
<path d="M18.9668 10.7832C20.7786 11.8158 22 13.7654 22 16C22 19.3137 19.3137 22 16 22C15.0147 22 14.0849 21.7626 13.2646 21.3418C14.6446 19.9817 15.5 18.0906 15.5 16C15.5 15.5544 15.4612 15.1176 15.3867 14.6934C17.0062 13.8723 18.2879 12.4808 18.9668 10.7832Z" fill="currentColor"/>
<path d="M12 2C15.3137 2 18 4.68629 18 8C18 11.3137 15.3137 14 12 14C8.68629 14 6 11.3137 6 8C6 4.68629 8.68629 2 12 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'filters',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M18 8C18 11.3137 15.3137 14 12 14C8.68629 14 6 11.3137 6 8C6 4.68629 8.68629 2 12 2C15.3137 2 18 4.68629 18 8Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M17.5801 10.21C20.1272 10.9035 22 13.2332 22 16C21.9999 19.3136 19.3136 22 16 22C14.4633 22 13.0615 21.4218 12 20.4717C12.0032 20.4688 12.0056 20.4648 12.0088 20.4619C10.9461 21.4174 9.54152 22 8 22C4.68629 22 2 19.3137 2 16C2.00002 13.2331 3.87278 10.9034 6.41992 10.21C7.29998 12.4299 9.46679 14 12 14C12.5468 14 13.0767 13.9271 13.5801 13.79C15.4087 13.2922 16.89 11.9507 17.5801 10.21ZM13.9766 16.5117C13.9816 16.4517 13.9879 16.3916 13.9912 16.3311L13.9922 16.3086C13.9887 16.3767 13.9823 16.4443 13.9766 16.5117Z" fill="currentColor"/>

<path opacity="0.5" d="M13.5798 13.7899C13.0765 13.9269 12.5468 14 12 14C9.46679 14 7.30024 12.4302 6.42018 10.2102C3.87293 10.9036 2 13.2331 2 16C2 19.3138 4.68629 22 8 22C11.3137 22 14 19.3138 14 16C14 15.2195 13.851 14.4739 13.5798 13.7899Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'filters',
    style: SolarIconStyle.broken,
    body: r'''<path d="M6.33148 6.02834C6.11671 6.64587 6 7.30931 6 8C6 11.3137 8.68629 14 12 14C15.3137 14 18 11.3137 18 8C18 4.68629 15.3137 2 12 2C10.9283 2 9.92229 2.28096 9.05151 2.77323" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5798 13.7898C13.8509 14.4738 14 15.2195 14 16C14 19.3137 11.3137 22 7.99995 22C7.32535 22 6.67676 21.8886 6.07153 21.6833" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.70835 18.8306C2.25635 17.9874 2 17.0236 2 15.9999C2 13.233 3.87294 10.9035 6.42018 10.2101" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 20.4722C13.0615 21.4223 14.4633 22 16.0001 22C19.3138 22 22.0001 19.3138 22.0001 16C22.0001 13.2331 20.1271 10.9036 17.5799 10.2102" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'filters',
    style: SolarIconStyle.linear,
    body: r'''<path d="M6.42018 10.2101C3.87294 10.9035 2 13.233 2 15.9999C2 19.3136 4.68629 21.9999 8 21.9999C11.3137 21.9999 14 19.3136 14 15.9999C14 15.2194 13.851 14.4738 13.5798 13.7898M11.9997 20.4722C13.0613 21.4223 14.4631 22 15.9998 22C19.3135 22 21.9998 19.3137 21.9998 16C21.9998 13.2331 20.1269 10.9036 17.5796 10.2102M17.9998 8C17.9998 11.3137 15.3135 14 11.9998 14C8.68609 14 5.9998 11.3137 5.9998 8C5.9998 4.68629 8.68609 2 11.9998 2C15.3135 2 17.9998 4.68629 17.9998 8Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'filters',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M6.42018 10.2101C3.87294 10.9035 2 13.233 2 15.9999C2 19.3136 4.68629 21.9999 8 21.9999C11.3137 21.9999 14 19.3136 14 15.9999C14 15.2194 13.851 14.4737 13.5798 13.7898M18 8C18 11.3137 15.3137 14 12 14C8.68629 14 6 11.3137 6 8C6 4.68629 8.68629 2 12 2C15.3137 2 18 4.68629 18 8Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<path opacity="0.5" d="M12 20.4722C13.0615 21.4223 14.4633 22 16.0001 22C19.3138 22 22.0001 19.3138 22.0001 16C22.0001 13.2331 20.1271 10.9036 17.5799 10.2102" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'filters',
    style: SolarIconStyle.outline,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C9.1005 2.75 6.75 5.10051 6.75 8C6.75 10.8995 9.1005 13.25 12 13.25C14.8995 13.25 17.25 10.8995 17.25 8C17.25 5.10051 14.8995 2.75 12 2.75ZM5.25 8C5.25 4.27208 8.27208 1.25 12 1.25C15.7279 1.25 18.75 4.27208 18.75 8C18.75 8.60091 18.6715 9.18349 18.5241 9.73802C21.0013 10.7375 22.75 13.1638 22.75 16C22.75 19.7279 19.7279 22.75 16 22.75C14.5034 22.75 13.1193 22.2622 12.0001 21.4377C10.8806 22.2625 9.49722 22.75 8 22.75C4.27208 22.75 1.25 19.7279 1.25 16C1.25 13.1638 2.99868 10.7375 5.47587 9.73802C5.32852 9.18349 5.25 8.60091 5.25 8ZM6.02094 11.1356C4.10208 11.917 2.75 13.8014 2.75 16C2.75 18.8995 5.10051 21.25 8 21.25C10.8995 21.25 13.25 18.8995 13.25 16C13.25 15.5377 13.1904 15.0902 13.0787 14.6643C12.7275 14.7207 12.3672 14.75 12 14.75C9.40395 14.75 7.15019 13.2845 6.02094 11.1356ZM14.524 14.2623C14.6715 14.8173 14.75 15.3999 14.75 16C14.75 17.6778 14.1378 19.2127 13.1246 20.3934C13.9506 20.9353 14.938 21.25 16 21.25C18.8995 21.25 21.25 18.8995 21.25 16C21.25 13.8014 19.8979 11.917 17.9791 11.1356C17.238 12.5458 16.0126 13.6617 14.524 14.2623Z" fill="currentColor"/>''',
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
