// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-right-open` icon in the bold style.
class PanelRightOpenBoldIcon extends StatelessWidget {
  /// Creates the `panel-right-open` icon in the bold style.
  const PanelRightOpenBoldIcon({
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
    name: 'panel-right-open',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M14.25 21H10C6.22876 21 4.34345 20.9997 3.17188 19.8281C2.0003 18.6566 2 16.7712 2 13V11C2 7.22876 2.0003 5.34345 3.17188 4.17188C4.34345 3.0003 6.22876 3 10 3H14.25V21ZM10.2773 8.43066C9.96298 8.16121 9.48935 8.1976 9.21973 8.51172L6.64746 11.5117C6.40699 11.7925 6.40699 12.2075 6.64746 12.4883L9.21875 15.4883C9.48826 15.8025 9.96193 15.8386 10.2764 15.5693C10.5907 15.2997 10.6269 14.8262 10.3574 14.5117L8.20508 12L10.3574 9.48828C10.6269 9.17393 10.5914 8.7003 10.2773 8.43066Z" fill="currentColor"/>
<path d="M15.75 3.00586C18.3859 3.03348 19.8538 3.19755 20.8281 4.17188C21.9997 5.34345 22 7.22876 22 11V13C22 16.7712 21.9997 18.6566 20.8281 19.8281C19.8538 20.8025 18.3859 20.9665 15.75 20.9941V3.00586Z" fill="currentColor"/>''',
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

@Deprecated(
  'The icon is the explicit open action for a right-side panel. Deprecated since 2026-09-21. Use PanelRightOpenBoldIcon instead.',
)
typedef SidebarOpenBoldIcon = PanelRightOpenBoldIcon;
