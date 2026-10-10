// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `test-tube-minimalistic` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0Ljg2OTIgMi4yMjM3OUMxNC41NzMxIDEuOTI2MzMgMTQuMDkxOSAxLjkyNTI3IDEzLjc5NDQgMi4yMjE0MUMxMy40OTcgMi41MTc1NiAxMy40OTU5IDIuOTk4NzYgMTMuNzkyMSAzLjI5NjIxTDE0LjQ4NTUgMy45OTI3TDcuNTM2NjcgMTAuOTcyM0w4LjIyNjkyIDExLjA0OTNDOS42MTg3MyAxMS4yMDQ3IDEwLjcxMzYgMTIuMzA3NCAxMC44Njc2IDEzLjY5OTRDMTAuOTI2MiAxNC4yMjg5IDExLjI2MjcgMTQuNjg0MiAxMS43NDYyIDE0Ljg5NDFMMTMuNzEyOSAxNS43MTA1TDE5LjkzMjMgOS40NjM2MkwyMC43MDE0IDEwLjIzNjJDMjAuOTk3NiAxMC41MzM2IDIxLjQ3ODggMTAuNTM0NyAyMS43NzYyIDEwLjIzODZDMjIuMDczNyA5Ljk0MjQyIDIyLjA3NDcgOS40NjEyMiAyMS43Nzg2IDkuMTYzNzdMMTQuODY5MiAyLjIyMzc5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNNC4xMjgwNiAxNC4zOTZMNi4xNjYyNSAxMi4zNDg4TDguMDU4MzMgMTIuNTZDOC43MzkxOCAxMi42MzYgOS4yODA1IDEzLjE3NjcgOS4zNTY4MSAxMy44NjY1QzkuNDc1NCAxNC45Mzg2IDEwLjE1OSAxNS44NjU4IDExLjE0OTIgMTYuMjkyTDEyLjU1MzYgMTYuODc1TDkuNTc0ODQgMTkuODY2OUM4LjA3MDc1IDIxLjM3NzcgNS42MzIxNSAyMS4zNzc3IDQuMTI4MDYgMTkuODY2OUMyLjYyMzk4IDE4LjM1NjIgMi42MjM5OCAxNS45MDY4IDQuMTI4MDYgMTQuMzk2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class TestTubeMinimalisticBoldIcon extends StatelessWidget {
  /// Creates the `test-tube-minimalistic` icon in the bold style.
  const TestTubeMinimalisticBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M14.8692 2.22379C14.5731 1.92633 14.0919 1.92527 13.7944 2.22141C13.497 2.51756 13.4959 2.99876 13.7921 3.29621L14.4855 3.9927L7.53667 10.9723L8.22692 11.0493C9.61873 11.2047 10.7136 12.3074 10.8676 13.6994C10.9262 14.2289 11.2627 14.6842 11.7462 14.8941L13.7129 15.7105L19.9323 9.46362L20.7014 10.2362C20.9976 10.5336 21.4788 10.5347 21.7762 10.2386C22.0737 9.94242 22.0747 9.46122 21.7786 9.16377L14.8692 2.22379Z" fill="currentColor"/>
<path d="M4.12806 14.396L6.16625 12.3488L8.05833 12.56C8.73918 12.636 9.2805 13.1767 9.35681 13.8665C9.4754 14.9386 10.159 15.8658 11.1492 16.292L12.5536 16.875L9.57484 19.8669C8.07075 21.3777 5.63215 21.3777 4.12806 19.8669C2.62398 18.3562 2.62398 15.9068 4.12806 14.396Z" fill="currentColor"/>''',
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
