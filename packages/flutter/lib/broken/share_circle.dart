// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `share-circle` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDNDMTAuMzQzMSAzIDkgNC4zNDMxNSA5IDZDOSA3LjY1Njg1IDEwLjM0MzEgOSAxMiA5QzEzLjY1NjkgOSAxNSA3LjY1Njg1IDE1IDYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNS41IDE1QzcuMTU2ODUgMTUgOC41IDE2LjM0MzEgOC41IDE4QzguNSAxOS42NTY5IDcuMTU2ODUgMjEgNS41IDIxQzMuODQzMTUgMjEgMi41IDE5LjY1NjkgMi41IDE4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE4LjUgMjFDMTYuODQzMSAyMSAxNS41IDE5LjY1NjkgMTUuNSAxOEMxNS41IDE2LjM0MzEgMTYuODQzMSAxNSAxOC41IDE1QzIwLjE1NjkgMTUgMjEuNSAxNi4zNDMxIDIxLjUgMTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjAgMTNDMjAgMTAuNjEwNiAxOC45NTI1IDguNDY1ODkgMTcuMjkxNiA3TTQgMTNDNCAxMC42MTA2IDUuMDQ3NTIgOC40NjU4OSA2LjcwODM4IDdNMTAgMjAuNzQ4QzEwLjYzOTIgMjAuOTEyNSAxMS4zMDk0IDIxIDEyIDIxQzEyLjY5MDYgMjEgMTMuMzYwOCAyMC45MTI1IDE0IDIwLjc0OCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ShareCircleBrokenIcon extends StatelessWidget {
  /// Creates the `share-circle` icon in the broken style.
  const ShareCircleBrokenIcon({
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
    name: 'share-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 3C10.3431 3 9 4.34315 9 6C9 7.65685 10.3431 9 12 9C13.6569 9 15 7.65685 15 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.5 15C7.15685 15 8.5 16.3431 8.5 18C8.5 19.6569 7.15685 21 5.5 21C3.84315 21 2.5 19.6569 2.5 18" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.5 21C16.8431 21 15.5 19.6569 15.5 18C15.5 16.3431 16.8431 15 18.5 15C20.1569 15 21.5 16.3431 21.5 18" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 13C20 10.6106 18.9525 8.46589 17.2916 7M4 13C4 10.6106 5.04752 8.46589 6.70838 7M10 20.748C10.6392 20.9125 11.3094 21 12 21C12.6906 21 13.3608 20.9125 14 20.748" stroke="currentColor" stroke-linecap="round"/>''',
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
