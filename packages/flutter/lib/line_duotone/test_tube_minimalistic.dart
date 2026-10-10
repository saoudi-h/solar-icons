// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `test-tube-minimalistic` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIxIDkuODQ4NjdMMTQuMTgxNSAzTTE0Ljg2MzUgMy42ODUwNEwyMC4yMzg3IDkuMDgzOThMMTMgMTYuMzU0N0w5LjQ4ODM4IDE5Ljg4MThDOC4wMDQwNyAyMS4zNzI3IDUuNTk3NTQgMjEuMzcyNyA0LjExMzIzIDE5Ljg4MThDMi42Mjg5MiAxOC4zOTEgMi42Mjg5MiAxNS45NzM4IDQuMTEzMjMgMTQuNDgyOUwxNC44NjM1IDMuNjg1MDRaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNi44MDA3OCAxMS43ODMyTDguMDc1IDExLjkyNTRDOS4wOTc3IDEyLjAzOTUgOS45MDUwNCAxMi44NTA1IDEwLjAxODcgMTMuODc3N0MxMC4xMDYyIDE0LjY2ODcgMTAuNjEwNCAxNS4zNTEzIDExLjMzODYgMTUuNjY0OEwxMyAxNi4zNTQ0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class TestTubeMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `test-tube-minimalistic` icon in the lineDuotone style.
  const TestTubeMinimalisticLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21 9.84867L14.1815 3M14.8635 3.68504L20.2387 9.08398L13 16.3547L9.48838 19.8818C8.00407 21.3727 5.59754 21.3727 4.11323 19.8818C2.62892 18.391 2.62892 15.9738 4.11323 14.4829L14.8635 3.68504Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6.80078 11.7832L8.075 11.9254C9.0977 12.0395 9.90504 12.8505 10.0187 13.8777C10.1062 14.6687 10.6104 15.3513 11.3386 15.6648L13 16.3544" stroke="currentColor" stroke-linecap="round"/>''',
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
