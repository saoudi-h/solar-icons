// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-right-close` icon in the boldDuotone style.
class PanelRightCloseBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `panel-right-close` icon in the boldDuotone style.
  const PanelRightCloseBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15 3.00586C17.6358 3.03348 19.8538 3.19755 20.8281 4.17188C21.9996 5.34345 22 7.2288 22 11V13C22 16.7712 21.9996 18.6565 20.8281 19.8281C19.8538 20.8024 17.6358 20.9665 15 20.9941V3.00586Z" fill="currentColor"/>
<path d="M6.72848 8.43066C7.04292 8.16118 7.51652 8.19739 7.7861 8.51172L10.3574 11.5117C10.5981 11.7926 10.5981 12.2074 10.3574 12.4883L7.7861 15.4883C7.51652 15.8026 7.04292 15.8388 6.72848 15.5693C6.41413 15.2997 6.3779 14.8262 6.64742 14.5117L8.79977 12L6.64742 9.48828C6.3779 9.17384 6.41413 8.70025 6.72848 8.43066Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M3.17157 4.1716C2 5.34318 2 7.2288 2 11V13C2 16.7713 2 18.6569 3.17157 19.8285C4.34315 21 6.22876 21 10 21H14C14.0843 21 14.9176 21.0001 15 21.0001L15 3.00006C14.9176 3.00005 14.0843 3.00003 14 3.00003H10C6.22876 3.00003 4.34315 3.00003 3.17157 4.1716Z" fill="currentColor"/>''',
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
  'The icon is the explicit close action for a right-side panel. Deprecated since 2026-09-21. Use PanelRightCloseBoldDuotoneIcon instead.',
)
typedef SidebarCloseBoldDuotoneIcon = PanelRightCloseBoldDuotoneIcon;
