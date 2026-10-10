// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOC4wODQ5IDMuNjg5NTlMMTguODgyNSAxNC40NDA0QzE5LjAzNzcgMTcuMTc5NCAxOS4xMTUzIDE4LjU0ODkgMTguNjE2MiAxOS41ODgyQzE4LjI0NzIgMjAuMzU2NCAxNy42Njc4IDIwLjk5NDMgMTYuOTUwNiAyMS40MjE4QzE1Ljk4MDQgMjIgMTQuNjU4OCAyMiAxMi4wMTU2IDIyQzkuMzQyMjcgMjIgOC4wMDU2MyAyMiA3LjAyOTg5IDIxLjQxM0M2LjMwODggMjAuOTc5MyA1LjcyODUzIDIwLjMzMjQgNS4zNjMwOCAxOS41NTQ5QzQuODY4NTYgMTguNTAyOCA0Ljk2MzggMTcuMTE4OSA1LjE1NDI2IDE0LjM1MUw1Ljg2MjA0IDYuMzU1MU0xOC4wNDc3IDMuNDM1MzZDMTguNDIyNCA0Ljg4NzI1IDE2LjAwNDkgNi44MjExNCAxMi42NDggNy43NTQ4MkM5LjI5MTA2IDguNjg4NSA2LjI2NTkgOC4yNjg0MSA1Ljg5MTExIDYuODE2NTFDNS41MTYzMyA1LjM2NDYyIDcuOTMzODQgMy40MzA3MyAxMS4yOTA4IDIuNDk3MDVDMTQuNjQ3NyAxLjU2MzM3IDE3LjY3MjkgMS45ODM0NiAxOC4wNDc3IDMuNDM1MzZaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNS4yNDYwOSAxMy4zMDg3QzUuODA1MDcgMTMuODcwMSA3LjQ5MDIyIDE0Ljk5OTcgMTEuOTk5NiAxNC45OTk3QzE2LjYyNzcgMTQuOTk5NyAxOC4yODA5IDEzLjgwOTggMTguNzk0OSAxMy4yNjU2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SmartSpeaker2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `smart-speaker-2` icon in the lineDuotone style.
  const SmartSpeaker2LineDuotoneIcon({
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
    name: 'smart-speaker-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M18.0849 3.68959L18.8825 14.4404C19.0377 17.1794 19.1153 18.5489 18.6162 19.5882C18.2472 20.3564 17.6678 20.9943 16.9506 21.4218C15.9804 22 14.6588 22 12.0156 22C9.34227 22 8.00563 22 7.02989 21.413C6.3088 20.9793 5.72853 20.3324 5.36308 19.5549C4.86856 18.5028 4.9638 17.1189 5.15426 14.351L5.86204 6.3551M18.0477 3.43536C18.4224 4.88725 16.0049 6.82114 12.648 7.75482C9.29106 8.6885 6.2659 8.26841 5.89111 6.81651C5.51633 5.36462 7.93384 3.43073 11.2908 2.49705C14.6477 1.56337 17.6729 1.98346 18.0477 3.43536Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.24609 13.3087C5.80507 13.8701 7.49022 14.9997 11.9996 14.9997C16.6277 14.9997 18.2809 13.8098 18.7949 13.2656" stroke="currentColor" stroke-linecap="round"/>''',
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
