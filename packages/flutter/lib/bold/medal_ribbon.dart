// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `medal-ribbon` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjI4NjEgMTcuMzIzMkMxNy45MTQ0IDE5LjYxNDggMTguMjI3OCAyMC43NjA0IDE3LjgwODYgMjEuMzg3N0MxNy42NjE3IDIxLjYwNzUgMTcuNDY1IDIxLjc4MzkgMTcuMjM2MyAyMS45MDA0QzE2LjU4MzcgMjIuMjMyNyAxNS41NzU5IDIxLjcwODMgMTMuNTYwNSAyMC42NTgyQzEyLjg5IDIwLjMwODggMTIuNTU0NSAyMC4xMzM3IDEyLjE5ODIgMjAuMDk1N0MxMi4wNjY0IDIwLjA4MTcgMTEuOTMzNiAyMC4wODE3IDExLjgwMTggMjAuMDk1N0MxMS40NDU1IDIwLjEzMzcgMTEuMTEgMjAuMzA4OCAxMC40Mzk1IDIwLjY1ODJDOC40MjQxNCAyMS43MDgzIDcuNDE2MyAyMi4yMzI3IDYuNzYzNjcgMjEuOTAwNEM2LjUzNTA1IDIxLjc4MzkgNi4zMzgyOSAyMS42MDc1IDYuMTkxNDEgMjEuMzg3N0M1Ljc3MjI0IDIwLjc2MDQgNi4wODU2MSAxOS42MTQ4IDYuNzEzODcgMTcuMzIzMkw3LjA5Mjc3IDE1Ljk0MTRDOC40Nzg5MiAxNi45MjMxIDEwLjE3MjIgMTcuNSAxMiAxNy41QzEzLjgyNzggMTcuNSAxNS41MjExIDE2LjkyMzEgMTYuOTA3MiAxNS45NDE0TDE3LjI4NjEgMTcuMzIzMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDJDMTUuODY2IDIgMTkgNS4xMzQwMSAxOSA5QzE5IDEyLjg2NiAxNS44NjYgMTYgMTIgMTZDOC4xMzQwMSAxNiA1IDEyLjg2NiA1IDlDNSA1LjEzNDAxIDguMTM0MDEgMiAxMiAyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MedalRibbonBoldIcon extends StatelessWidget {
  /// Creates the `medal-ribbon` icon in the bold style.
  const MedalRibbonBoldIcon({
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
    name: 'medal-ribbon',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.2861 17.3232C17.9144 19.6148 18.2278 20.7604 17.8086 21.3877C17.6617 21.6075 17.465 21.7839 17.2363 21.9004C16.5837 22.2327 15.5759 21.7083 13.5605 20.6582C12.89 20.3088 12.5545 20.1337 12.1982 20.0957C12.0664 20.0817 11.9336 20.0817 11.8018 20.0957C11.4455 20.1337 11.11 20.3088 10.4395 20.6582C8.42414 21.7083 7.4163 22.2327 6.76367 21.9004C6.53505 21.7839 6.33829 21.6075 6.19141 21.3877C5.77224 20.7604 6.08561 19.6148 6.71387 17.3232L7.09277 15.9414C8.47892 16.9231 10.1722 17.5 12 17.5C13.8278 17.5 15.5211 16.9231 16.9072 15.9414L17.2861 17.3232Z" fill="currentColor"/>
<path d="M12 2C15.866 2 19 5.13401 19 9C19 12.866 15.866 16 12 16C8.13401 16 5 12.866 5 9C5 5.13401 8.13401 2 12 2Z" fill="currentColor"/>''',
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
