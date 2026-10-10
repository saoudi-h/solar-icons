// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `facemask-circle` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSIxMiIgcj0iMTAiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYuNSAyMC40OTk2TDE3IDE0Ljk5OTZMMTMuODU3IDEzLjc0MjRDMTIuNjY0OSAxMy4yNjU2IDExLjMzNTEgMTMuMjY1NiAxMC4xNDMgMTMuNzQyNEw3IDE0Ljk5OTZMNy41IDIwLjQ5OTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNyAxNUwyLjUgMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTcgMTVMMjEuNSAxMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNS41IDEwLjVDMTUuNSAxMS4wNTIzIDE1LjI3NjEgMTEuNSAxNSAxMS41QzE0LjcyMzkgMTEuNSAxNC41IDExLjA1MjMgMTQuNSAxMC41QzE0LjUgOS45NDc3MiAxNC43MjM5IDkuNSAxNSA5LjVDMTUuMjc2MSA5LjUgMTUuNSA5Ljk0NzcyIDE1LjUgMTAuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxlbGxpcHNlIGN4PSI5IiBjeT0iMTAuNSIgcng9IjAuNSIgcnk9IjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class FacemaskCircleLinearIcon extends StatelessWidget {
  /// Creates the `facemask-circle` icon in the linear style.
  const FacemaskCircleLinearIcon({
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
    name: 'facemask-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 20.4996L17 14.9996L13.857 13.7424C12.6649 13.2656 11.3351 13.2656 10.143 13.7424L7 14.9996L7.5 20.4996" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 15L2.5 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 15L21.5 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
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
