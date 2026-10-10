// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bookmark` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMSAxMS4wOTc1VjE2LjA5MDlDMjEgMTkuMTg3NSAyMSAyMC43MzU4IDIwLjI2NTkgMjEuNDEyM0MxOS45MTU4IDIxLjczNSAxOS40NzM5IDIxLjkzNzcgMTkuMDAzMSAyMS45OTE1QzE4LjAxNiAyMi4xMDQ1IDE2Ljg2MzMgMjEuMDg0OSAxNC41NTc4IDE5LjA0NThDMTMuNTM4OCAxOC4xNDQ1IDEzLjAyOTIgMTcuNjkzOCAxMi40Mzk3IDE3LjU3NTFDMTIuMTQ5NCAxNy41MTY2IDExLjg1MDYgMTcuNTE2NiAxMS41NjAzIDE3LjU3NTFDMTAuOTcwOCAxNy42OTM4IDEwLjQ2MTIgMTguMTQ0NSA5LjQ0MjE2IDE5LjA0NThDNy4xMzY3MyAyMS4wODQ5IDUuOTg0MDIgMjIuMTA0NSA0Ljk5NjkyIDIxLjk5MTVDNC41MjYxNSAyMS45Mzc3IDQuMDg0MjEgMjEuNzM1IDMuNzM0MTEgMjEuNDEyM0MzIDIwLjczNTggMyAxOS4xODc1IDMgMTYuMDkwOVYxMS4wOTc1QzMgNi44MDg5MSAzIDQuNjY0NiA0LjMxODAyIDMuMzMyM0M1LjYzNjA0IDIgNy43NTczNiAyIDEyIDJDMTYuMjQyNiAyIDE4LjM2NCAyIDE5LjY4MiAzLjMzMjNDMjEgNC42NjQ2IDIxIDYuODA4OTEgMjEgMTEuMDk3NVpNOC4yNSA2QzguMjUgNS41ODU3OSA4LjU4NTc5IDUuMjUgOSA1LjI1SDE1QzE1LjQxNDIgNS4yNSAxNS43NSA1LjU4NTc5IDE1Ljc1IDZDMTUuNzUgNi40MTQyMSAxNS40MTQyIDYuNzUgMTUgNi43NUg5QzguNTg1NzkgNi43NSA4LjI1IDYuNDE0MjEgOC4yNSA2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class BookmarkBoldIcon extends StatelessWidget {
  /// Creates the `bookmark` icon in the bold style.
  const BookmarkBoldIcon({
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
    name: 'bookmark',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21 11.0975V16.0909C21 19.1875 21 20.7358 20.2659 21.4123C19.9158 21.735 19.4739 21.9377 19.0031 21.9915C18.016 22.1045 16.8633 21.0849 14.5578 19.0458C13.5388 18.1445 13.0292 17.6938 12.4397 17.5751C12.1494 17.5166 11.8506 17.5166 11.5603 17.5751C10.9708 17.6938 10.4612 18.1445 9.44216 19.0458C7.13673 21.0849 5.98402 22.1045 4.99692 21.9915C4.52615 21.9377 4.08421 21.735 3.73411 21.4123C3 20.7358 3 19.1875 3 16.0909V11.0975C3 6.80891 3 4.6646 4.31802 3.3323C5.63604 2 7.75736 2 12 2C16.2426 2 18.364 2 19.682 3.3323C21 4.6646 21 6.80891 21 11.0975ZM8.25 6C8.25 5.58579 8.58579 5.25 9 5.25H15C15.4142 5.25 15.75 5.58579 15.75 6C15.75 6.41421 15.4142 6.75 15 6.75H9C8.58579 6.75 8.25 6.41421 8.25 6Z" fill="currentColor"/>''',
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
