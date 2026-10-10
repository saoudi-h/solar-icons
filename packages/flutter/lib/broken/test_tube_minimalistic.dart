// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `test-tube-minimalistic` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuODAwOCAxMS43ODM0TDguMDc1MDIgMTEuOTI1NkM5LjA5NzcyIDEyLjAzOTggOS45MDUwNiAxMi44NTA3IDEwLjAxODcgMTMuODc3OUMxMC4xMDYyIDE0LjY2ODkgMTAuNjEwNCAxNS4zNTE1IDExLjMzODcgMTUuNjY1TDEzIDE2LjM1NDdNMTYgMTMuMzQxNEwxMyAxNi4zNTQ3TDkuNDg4MzggMTkuODgxOEM4LjAwNDA3IDIxLjM3MjcgNS41OTc1NCAyMS4zNzI3IDQuMTEzMjMgMTkuODgxOEMyLjYyODkyIDE4LjM5MSAyLjYyODkyIDE1Ljk3MzggNC4xMTMyMyAxNC40ODI5TDE0Ljg2MzUgMy42ODUwNEwyMC4yMzg3IDkuMDgzOThMMTguNDI5IDEwLjkwMTdNMjEgOS44NDg2N0wxNC4xODE1IDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class TestTubeMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `test-tube-minimalistic` icon in the broken style.
  const TestTubeMinimalisticBrokenIcon({
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
    name: 'test-tube-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M6.8008 11.7834L8.07502 11.9256C9.09772 12.0398 9.90506 12.8507 10.0187 13.8779C10.1062 14.6689 10.6104 15.3515 11.3387 15.665L13 16.3547M16 13.3414L13 16.3547L9.48838 19.8818C8.00407 21.3727 5.59754 21.3727 4.11323 19.8818C2.62892 18.391 2.62892 15.9738 4.11323 14.4829L14.8635 3.68504L20.2387 9.08398L18.429 10.9017M21 9.84867L14.1815 3" stroke="currentColor" stroke-linecap="round"/>''',
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
