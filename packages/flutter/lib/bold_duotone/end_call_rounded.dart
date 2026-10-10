// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNi45NDY5IDE2LjUxNzNMNS42MDcyIDE2Ljg5NzJDMy43ODE1OCAxNy40MTUgMiAxNS45MTAyIDIgMTMuODUwNEMyIDEyLjYxMjcgMi4yNzY1OSAxMS4zNzMgMy4wODI4OSAxMC41MDMyQzQuMTI3OSA5LjM3NTc5IDYuMDAwMTUgNy45MDc4NiA5IDcuMjkxOTlWMTMuNjE4NUM5IDE0Ljk4MjYgOC4xNTU5MSAxNi4xNzQzIDYuOTQ2OSAxNi41MTczWk0xNSAxMy42MTg1QzE1IDE0Ljk4MjYgMTUuODQ0MSAxNi4xNzQzIDE3LjA1MzEgMTYuNTE3M0wxOC4zOTI4IDE2Ljg5NzJDMjAuMjE4NCAxNy40MTUgMjIgMTUuOTEwMiAyMiAxMy44NTA0QzIyIDEyLjYxMjcgMjEuNzIzNCAxMS4zNzMgMjAuOTE3MSAxMC41MDMyQzE5Ljg3MjEgOS4zNzU4IDE3Ljk5OTggNy45MDc4NiAxNSA3LjI5MTk5VjEzLjYxODVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTkgMTMuNjE4NUM5IDEzLjYxODUgOSAxMS45NjM5IDEyIDExLjk2MzlDMTUgMTEuOTYzOSAxNSAxMy42MTg1IDE1IDEzLjYxODVWNy4yOTIwM0MxNC4xMDM0IDcuMTA3OTYgMTMuMTA2MSA3IDEyIDdDMTAuODkzOSA3IDkuODk2NiA3LjEwNzk2IDkgNy4yOTIwM1YxMy42MTg1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class EndCallRoundedBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `end-call-rounded` icon in the boldDuotone style.
  const EndCallRoundedBoldDuotoneIcon({
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
    name: 'end-call-rounded',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.9469 16.5173L5.6072 16.8972C3.78158 17.415 2 15.9102 2 13.8504C2 12.6127 2.27659 11.373 3.08289 10.5032C4.1279 9.37579 6.00015 7.90786 9 7.29199V13.6185C9 14.9826 8.15591 16.1743 6.9469 16.5173ZM15 13.6185C15 14.9826 15.8441 16.1743 17.0531 16.5173L18.3928 16.8972C20.2184 17.415 22 15.9102 22 13.8504C22 12.6127 21.7234 11.373 20.9171 10.5032C19.8721 9.3758 17.9998 7.90786 15 7.29199V13.6185Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 13.6185C9 13.6185 9 11.9639 12 11.9639C15 11.9639 15 13.6185 15 13.6185V7.29203C14.1034 7.10796 13.1061 7 12 7C10.8939 7 9.8966 7.10796 9 7.29203V13.6185Z" fill="currentColor"/>''',
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
