// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `stars` icon in the outline style.
class StarsOutlineIcon extends StatelessWidget {
  /// Creates the `stars` icon in the outline style.
  const StarsOutlineIcon({
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
    name: 'stars',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.33569 3.38268C7.93132 1.87244 10.0687 1.87244 10.6643 3.38268L11.7363 6.10082C11.7657 6.17532 11.8247 6.23429 11.8992 6.26367L14.6173 7.33569C16.1276 7.93132 16.1276 10.0687 14.6173 10.6643L11.8992 11.7363C11.8247 11.7657 11.7657 11.8247 11.7363 11.8992L10.6643 14.6173C10.0687 16.1276 7.93132 16.1276 7.33569 14.6173L6.26367 11.8992C6.23429 11.8247 6.17532 11.7657 6.10082 11.7363L3.38268 10.6643C1.87244 10.0687 1.87244 7.93132 3.38268 7.33569L6.10082 6.26367C6.17532 6.23429 6.23429 6.17532 6.26367 6.10082L7.33569 3.38268ZM9.26891 3.93301C9.17267 3.68899 8.82733 3.689 8.73109 3.93301L7.65907 6.65115C7.47722 7.11224 7.11224 7.47722 6.65116 7.65907L3.93301 8.73109C3.68899 8.82733 3.689 9.17267 3.93301 9.26891L6.65115 10.3409C7.11224 10.5228 7.47722 10.8878 7.65907 11.3488L8.73109 14.067C8.82733 14.311 9.17267 14.311 9.26891 14.067L10.3409 11.3488C10.5228 10.8878 10.8878 10.5228 11.3488 10.3409L14.067 9.26891C14.311 9.17267 14.311 8.82733 14.067 8.73109L11.3488 7.65907C10.8878 7.47722 10.5228 7.11224 10.3409 6.65116L9.26891 3.93301ZM15.7908 13.073C16.2235 11.9757 17.7765 11.9757 18.2092 13.073L18.9779 15.0221L20.927 15.7908C22.0243 16.2235 22.0243 17.7765 20.927 18.2092L18.9779 18.9779L18.2092 20.927C17.7765 22.0243 16.2235 22.0243 15.7908 20.927L15.0221 18.9779L13.073 18.2092C11.9757 17.7765 11.9757 16.2235 13.073 15.7908L15.0221 15.0221L15.7908 13.073ZM17 14.0953L16.3856 15.6533C16.2534 15.9883 15.9883 16.2534 15.6533 16.3856L14.0953 17L15.6533 17.6144C15.9883 17.7466 16.2534 18.0117 16.3856 18.3467L17 19.9047L17.6144 18.3467C17.7466 18.0117 18.0117 17.7466 18.3467 17.6144L19.9047 17L18.3467 16.3856C18.0117 16.2534 17.7466 15.9883 17.6144 15.6533L17 14.0953Z" fill="currentColor"/>''',
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
