// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `graph-new` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDEwLjVWMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuNTM1NSAyMC41MzU1QzE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyIDIyQzcuMjg1OTUgMjIgNC45Mjg5MyAyMiAzLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJDMiAxMC44NzE3IDIgOS44NzgzNSAyLjAyMDA4IDlNMTMuNSAySDEyQzcuMjg1OTUgMiA0LjkyODkzIDIgMy40NjQ0NyAzLjQ2NDQ3QzMuMDIzNTUgMy45MDUzOCAyLjcxNTM4IDQuNDI3MiAyLjUgNS4wNjk5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcgMTRMOC43OTY4OSAxMS44NDM3QzkuNTA4OTQgMTAuOTg5MyA5Ljg2NDk2IDEwLjU2MiAxMC4zMzMzIDEwLjU2MkMxMC44MDE3IDEwLjU2MiAxMS4xNTc3IDEwLjk4OTMgMTEuODY5OCAxMS44NDM3TDEyLjEzMDIgMTIuMTU2M0MxMi44NDIzIDEzLjAxMDcgMTMuMTk4MyAxMy40MzggMTMuNjY2NyAxMy40MzhDMTQuMTM1IDEzLjQzOCAxNC40OTExIDEzLjAxMDcgMTUuMjAzMSAxMi4xNTYzTDE3IDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBjeD0iMTkiIGN5PSI1IiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class GraphNewBrokenIcon extends StatelessWidget {
  /// Creates the `graph-new` icon in the broken style.
  const GraphNewBrokenIcon({
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
    name: 'graph-new',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 10.5V12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 10.8717 2 9.87835 2.02008 9M13.5 2H12C7.28595 2 4.92893 2 3.46447 3.46447C3.02355 3.90538 2.71538 4.4272 2.5 5.0699" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 14L8.79689 11.8437C9.50894 10.9893 9.86496 10.562 10.3333 10.562C10.8017 10.562 11.1577 10.9893 11.8698 11.8437L12.1302 12.1563C12.8423 13.0107 13.1983 13.438 13.6667 13.438C14.135 13.438 14.4911 13.0107 15.2031 12.1563L17 10" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19" cy="5" r="3" stroke="currentColor" stroke-linecap="round"/>''',
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
