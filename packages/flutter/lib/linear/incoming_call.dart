// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `incoming-call` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE5IDVMMTUgOU0xOCA5SDE1VjYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMy4wMDI4OSA2Ljk2NTk0QzMuMDkzMDQgOC42NDU0NiAzLjgxMDcyIDEyLjI1OSA3LjgxNTM2IDE2LjQ3NTJDMTIuMDYyMSAyMC45NDYyIDE2LjA0NjggMjEuMTIzOSAxNy42NzYzIDIwLjk2MzFDMTguMTkxNyAyMC45MTIyIDE4LjYzOTkgMjAuNjM0MyAxOS4wMDExIDIwLjI1NEwyMC40MjE3IDE4Ljc1ODRDMjEuMzgwNiAxNy43NDg5IDIxLjExMDIgMTYuMDE4MiAxOS44ODMzIDE1LjMxMkwxNy45NzI4IDE0LjIxMjNDMTcuMTY3MiAxMy43NDg2IDE2LjE4NTggMTMuODg0OCAxNS41NTYyIDE0LjU0NzdMMTUuMTAwNyAxNS4wMjcyQzE1LjEwMDcgMTUuMDI3MiAxNC4wMTgxIDE2LjE2NyAxMS4wNjMxIDEzLjA1NTlDOC4xMDgxMiA5Ljk0NDg0IDkuMTkwNyA4LjgwNTA3IDkuMTkwNyA4LjgwNTA3TDkuNDc3NTIgOC41MDMxMUMxMC4xODQxIDcuNzU5MjQgMTAuMjUwNyA2LjU2NDk3IDkuNjM0MjQgNS42OTMxTDguMzczMjYgMy45MDk2MUM3LjYxMDI4IDIuODMwNSA2LjEzNTk2IDIuNjg3OTUgNS4yNjE0NSAzLjYwODY0TDMuNjkxODUgNS4yNjExNEMzLjI1ODIzIDUuNzE3NjYgMi45Njc2NSA2LjMwOTQ1IDMuMDAyODkgNi45NjU5NFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class IncomingCallLinearIcon extends StatelessWidget {
  /// Creates the `incoming-call` icon in the linear style.
  const IncomingCallLinearIcon({
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
    name: 'incoming-call',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19 5L15 9M18 9H15V6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3.00289 6.96594C3.09304 8.64546 3.81072 12.259 7.81536 16.4752C12.0621 20.9462 16.0468 21.1239 17.6763 20.9631C18.1917 20.9122 18.6399 20.6343 19.0011 20.254L20.4217 18.7584C21.3806 17.7489 21.1102 16.0182 19.8833 15.312L17.9728 14.2123C17.1672 13.7486 16.1858 13.8848 15.5562 14.5477L15.1007 15.0272C15.1007 15.0272 14.0181 16.167 11.0631 13.0559C8.10812 9.94484 9.1907 8.80507 9.1907 8.80507L9.47752 8.50311C10.1841 7.75924 10.2507 6.56497 9.63424 5.6931L8.37326 3.90961C7.61028 2.8305 6.13596 2.68795 5.26145 3.60864L3.69185 5.26114C3.25823 5.71766 2.96765 6.30945 3.00289 6.96594Z" stroke="currentColor" stroke-linecap="round"/>''',
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
