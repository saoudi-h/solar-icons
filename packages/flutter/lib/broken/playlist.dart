// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMSAxNEwzIDE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTExIDE4SDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTguODc1IDE0LjExODNDMjAuNTI4OCAxNS4wNzMyIDIxLjM1NTggMTUuNTUwNiAyMS40NzcyIDE2LjIzOTRDMjEuNTA3NiAxNi40MTE4IDIxLjUwNzYgMTYuNTg4MSAyMS40NzcyIDE2Ljc2MDRDMjEuMzU1OCAxNy40NDkyIDIwLjUyODggMTcuOTI2NiAxOC44NzUgMTguODgxNUMxNy4yMjEyIDE5LjgzNjMgMTYuMzk0MiAyMC4zMTM3IDE1LjczNyAyMC4wNzQ1QzE1LjU3MjUgMjAuMDE0NyAxNS40MTk5IDE5LjkyNjUgMTUuMjg1OCAxOS44MTRDMTQuNzUgMTkuMzY0NCAxNC43NSAxOC40MDk2IDE0Ljc1IDE2LjQ5OTlDMTQuNzUgMTQuNTkwMiAxNC43NSAxMy42MzU0IDE1LjI4NTggMTMuMTg1OEMxNS40MTk5IDEzLjA3MzMgMTUuNTcyNSAxMi45ODUyIDE1LjczNyAxMi45MjUzQzE2LjM5NDIgMTIuNjg2MSAxNy4yMjEyIDEzLjE2MzUgMTguODc1IDE0LjExODNaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTMgNkwxMy41IDZNMjAgNkwxNy43NSA2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIwIDEwTDkuNSAxME0zIDEwSDUuMjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PlaylistBrokenIcon extends StatelessWidget {
  /// Creates the `playlist` icon in the broken style.
  const PlaylistBrokenIcon({
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
    name: 'playlist',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M11 14L3 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 18H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.875 14.1183C20.5288 15.0732 21.3558 15.5506 21.4772 16.2394C21.5076 16.4118 21.5076 16.5881 21.4772 16.7604C21.3558 17.4492 20.5288 17.9266 18.875 18.8815C17.2212 19.8363 16.3942 20.3137 15.737 20.0745C15.5725 20.0147 15.4199 19.9265 15.2858 19.814C14.75 19.3644 14.75 18.4096 14.75 16.4999C14.75 14.5902 14.75 13.6354 15.2858 13.1858C15.4199 13.0733 15.5725 12.9852 15.737 12.9253C16.3942 12.6861 17.2212 13.1635 18.875 14.1183Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 6L13.5 6M20 6L17.75 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 10L9.5 10M3 10H5.25" stroke="currentColor" stroke-linecap="round"/>''',
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
