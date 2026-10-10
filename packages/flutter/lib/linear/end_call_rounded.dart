// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiA3QzE2LjgwNjggNyAxOS41NTk4IDkuMDM4ODkgMjAuOTE3MSAxMC41MDMyQzIxLjcyMzQgMTEuMzczIDIyIDEyLjYxMjcgMjIgMTMuODUwNEMyMiAxNS45MTAyIDIwLjIxODQgMTcuNDE1MSAxOC4zOTI4IDE2Ljg5NzNMMTcuMDUzMSAxNi41MTczQzE1Ljg0NDEgMTYuMTc0NCAxNSAxNC45ODI2IDE1IDEzLjYxODVDMTUgMTMuNjE4NSAxNSAxMS45NjM5IDEyIDExLjk2MzlDOSAxMS45NjM5IDkgMTMuNjE4NSA5IDEzLjYxODVDOSAxNC45ODI2IDguMTU1OTEgMTYuMTc0NCA2Ljk0NjkgMTYuNTE3M0w1LjYwNzIgMTYuODk3M0MzLjc4MTU4IDE3LjQxNTEgMiAxNS45MTAyIDIgMTMuODUwNEMyIDEyLjYxMjcgMi4yNzY1OSAxMS4zNzMgMy4wODI4OSAxMC41MDMyQzQuNDQwMjMgOS4wMzg4OCA3LjE5MzIyIDcgMTIgN1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class EndCallRoundedLinearIcon extends StatelessWidget {
  /// Creates the `end-call-rounded` icon in the linear style.
  const EndCallRoundedLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 7C16.8068 7 19.5598 9.03889 20.9171 10.5032C21.7234 11.373 22 12.6127 22 13.8504C22 15.9102 20.2184 17.4151 18.3928 16.8973L17.0531 16.5173C15.8441 16.1744 15 14.9826 15 13.6185C15 13.6185 15 11.9639 12 11.9639C9 11.9639 9 13.6185 9 13.6185C9 14.9826 8.15591 16.1744 6.9469 16.5173L5.6072 16.8973C3.78158 17.4151 2 15.9102 2 13.8504C2 12.6127 2.27659 11.373 3.08289 10.5032C4.44023 9.03888 7.19322 7 12 7Z" stroke="currentColor" stroke-linecap="round"/>''',
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
