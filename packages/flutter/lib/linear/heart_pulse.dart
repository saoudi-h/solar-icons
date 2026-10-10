// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `heart-pulse` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4IDExLjk5OTlIMTcuMTk4NkMxNi4zNjg5IDExLjk5OTkgMTUuOTU0MSAxMS45OTk5IDE1LjYxMDIgMTIuMTk0NkMxNS4yNjY0IDEyLjM4OTMgMTUuMDUyOSAxMi43NDUgMTQuNjI2MSAxMy40NTY0TDE0LjU5NTIgMTMuNTA3OUMxNC4xOTc2IDE0LjE3MDYgMTMuOTk4NyAxNC41MDIgMTMuNzA5NSAxNC40OTY1QzEzLjQyMDIgMTQuNDkxMSAxMy4yMzM5IDE0LjE1MjUgMTIuODYxNSAxMy40NzUzTDExLjE3NDIgMTAuNDA3NUMxMC44MjY5IDkuNzc2MDYgMTAuNjUzMyA5LjQ2MDM0IDEwLjM3NTkgOS40NDUzN0MxMC4wOTg2IDkuNDMwMzkgOS44OTIgOS43MjU1OCA5LjQ3ODc1IDEwLjMxNTlMOS4xOTU3MyAxMC43MjAzQzguNzU2ODEgMTEuMzQ3MyA4LjUzNzM0IDExLjY2MDggOC4yMTE3MyAxMS44MzAzQzcuODg2MTIgMTEuOTk5OSA3LjUwMzQyIDExLjk5OTkgNi43MzgwMyAxMS45OTk5SDYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiA5LjI2MDQ0QzIgMTMuMDA3OSA2LjAxOTQzIDE2Ljk3MTQgOC45NjE3MyAxOS4zNzA3QzEwLjI5MzcgMjAuNDU2OSAxMC45NTk3IDIxIDEyIDIxQzEzLjA0MDMgMjEgMTMuNzA2MyAyMC40NTY5IDE1LjAzODMgMTkuMzcwN0MxNy45ODA2IDE2Ljk3MTQgMjIgMTMuMDA4IDIyIDkuMjYwNEMyMiAzLjM0OTMxIDE2LjQ5OTggMC42NjI2MzcgMTIgNS40OTg3N0M3LjUwMDE2IDAuNjYyNjM3IDIgMy4zNDk1IDIgOS4yNjA0NFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class HeartPulseLinearIcon extends StatelessWidget {
  /// Creates the `heart-pulse` icon in the linear style.
  const HeartPulseLinearIcon({
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
    name: 'heart-pulse',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18 11.9999H17.1986C16.3689 11.9999 15.9541 11.9999 15.6102 12.1946C15.2664 12.3893 15.0529 12.745 14.6261 13.4564L14.5952 13.5079C14.1976 14.1706 13.9987 14.502 13.7095 14.4965C13.4202 14.4911 13.2339 14.1525 12.8615 13.4753L11.1742 10.4075C10.8269 9.77606 10.6533 9.46034 10.3759 9.44537C10.0986 9.43039 9.892 9.72558 9.47875 10.3159L9.19573 10.7203C8.75681 11.3473 8.53734 11.6608 8.21173 11.8303C7.88612 11.9999 7.50342 11.9999 6.73803 11.9999H6" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 9.26044C2 13.0079 6.01943 16.9714 8.96173 19.3707C10.2937 20.4569 10.9597 21 12 21C13.0403 21 13.7063 20.4569 15.0383 19.3707C17.9806 16.9714 22 13.008 22 9.2604C22 3.34931 16.4998 0.662637 12 5.49877C7.50016 0.662637 2 3.3495 2 9.26044Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
