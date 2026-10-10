// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-right-close` icon in the bold style.
class PanelRightCloseBoldIcon extends StatelessWidget {
  /// Creates the `panel-right-close` icon in the bold style.
  const PanelRightCloseBoldIcon({
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
    name: 'panel-right-close',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M14.25 21H10C6.22876 21 4.34345 20.9997 3.17188 19.8281C2.0003 18.6566 2 16.7712 2 13V11C2 7.22876 2.0003 5.34345 3.17188 4.17188C4.34345 3.0003 6.22876 3 10 3H14.25V21ZM7.78711 8.51172C7.5176 8.19747 7.04393 8.16141 6.72949 8.43066C6.41515 8.70025 6.37892 9.17384 6.64844 9.48828L8.80078 12L6.64844 14.5117C6.379 14.8261 6.41443 15.2997 6.72852 15.5693C7.04288 15.8388 7.51651 15.8024 7.78613 15.4883L10.3584 12.4883C10.5989 12.2075 10.5989 11.7925 10.3584 11.5117L7.78711 8.51172Z" fill="currentColor"/>
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
  'The icon is the explicit close action for a right-side panel. Deprecated since 2026-09-21. Use PanelRightCloseBoldIcon instead.',
)
typedef SidebarCloseBoldIcon = PanelRightCloseBoldIcon;
