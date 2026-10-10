// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bolt` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUuNjY5NTMgOS45MTQzNkw4LjczMTY3IDUuNzcxMzNDMTAuNzExIDMuMDkzMjcgMTEuNzAwNyAxLjc1NDI1IDEyLjYyNDEgMi4wMzcyMUMxMy41NDc0IDIuMzIwMTggMTMuNTQ3NCAzLjk2MjQ5IDEzLjU0NzQgNy4yNDcxMlY3LjU1NjgyQzEzLjU0NzQgOC43NDE1MSAxMy41NDc0IDkuMzMzODYgMTMuOTI2IDkuNzA1NDFMMTMuOTQ2IDkuNzI0NjZDMTQuMzMyNyAxMC4wODg0IDE0Ljk0OTIgMTAuMDg4NCAxNi4xODIyIDEwLjA4ODRDMTguNDAxMSAxMC4wODg0IDE5LjUxMDYgMTAuMDg4NCAxOS44ODU1IDEwLjc2MTNDMTkuODkxNyAxMC43NzI0IDE5Ljg5NzcgMTAuNzgzNyAxOS45MDM2IDEwLjc5NUMyMC4yNTc2IDExLjQ3ODQgMTkuNjE1MiAxMi4zNDc1IDE4LjMzMDQgMTQuMDg1N0wxNS4yNjgzIDE4LjIyODdDMTMuMjg4OSAyMC45MDY3IDEyLjI5OTIgMjIuMjQ1OCAxMS4zNzU4IDIxLjk2MjhDMTAuNDUyNSAyMS42Nzk4IDEwLjQ1MjUgMjAuMDM3NSAxMC40NTI1IDE2Ljc1MjhMMTAuNDUyNiAxNi40NDMzQzEwLjQ1MjYgMTUuMjU4NSAxMC40NTI2IDE0LjY2NjIgMTAuMDc0IDE0LjI5NDZMMTAuMDU0IDE0LjI3NTRDOS42NjczIDEzLjkxMTcgOS4wNTA3OSAxMy45MTE3IDcuODE3NzUgMTMuOTExN0M1LjU5ODg4IDEzLjkxMTcgNC40ODk0NSAxMy45MTE3IDQuMTE0NSAxMy4yMzg3QzQuMTA4MjkgMTMuMjI3NiA0LjEwMjI1IDEzLjIxNjQgNC4wOTYzOSAxMy4yMDVDMy43NDI0NCAxMi41MjE3IDQuMzg0OCAxMS42NTI2IDUuNjY5NTMgOS45MTQzNloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BoltLinearIcon extends StatelessWidget {
  /// Creates the `bolt` icon in the linear style.
  const BoltLinearIcon({
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
    name: 'bolt',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M5.66953 9.91436L8.73167 5.77133C10.711 3.09327 11.7007 1.75425 12.6241 2.03721C13.5474 2.32018 13.5474 3.96249 13.5474 7.24712V7.55682C13.5474 8.74151 13.5474 9.33386 13.926 9.70541L13.946 9.72466C14.3327 10.0884 14.9492 10.0884 16.1822 10.0884C18.4011 10.0884 19.5106 10.0884 19.8855 10.7613C19.8917 10.7724 19.8977 10.7837 19.9036 10.795C20.2576 11.4784 19.6152 12.3475 18.3304 14.0857L15.2683 18.2287C13.2889 20.9067 12.2992 22.2458 11.3758 21.9628C10.4525 21.6798 10.4525 20.0375 10.4525 16.7528L10.4526 16.4433C10.4526 15.2585 10.4526 14.6662 10.074 14.2946L10.054 14.2754C9.6673 13.9117 9.05079 13.9117 7.81775 13.9117C5.59888 13.9117 4.48945 13.9117 4.1145 13.2387C4.10829 13.2276 4.10225 13.2164 4.09639 13.205C3.74244 12.5217 4.3848 11.6526 5.66953 9.91436Z" stroke="currentColor" stroke-linecap="round"/>''',
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
