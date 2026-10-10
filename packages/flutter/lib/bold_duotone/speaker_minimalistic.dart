// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTQgMTBDNCA2LjIyODc2IDQgNC4zNDMxNSA1LjE3MTU3IDMuMTcxNTdDNi4zNDMxNSAyIDguMjI4NzYgMiAxMiAyQzE1Ljc3MTIgMiAxNy42NTY5IDIgMTguODI4NCAzLjE3MTU3QzIwIDQuMzQzMTUgMjAgNi4yMjg3NiAyMCAxMFYxNEMyMCAxNy43NzEyIDIwIDE5LjY1NjkgMTguODI4NCAyMC44Mjg0QzE3LjY1NjkgMjIgMTUuNzcxMiAyMiAxMiAyMkM4LjIyODc2IDIyIDYuMzQzMTUgMjIgNS4xNzE1NyAyMC44Mjg0QzQgMTkuNjU2OSA0IDE3Ljc3MTIgNCAxNFYxMFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEwIDUuMjVDOS41ODU3OSA1LjI1IDkuMjUgNS41ODU3OSA5LjI1IDZDOS4yNSA2LjQxNDIxIDkuNTg1NzkgNi43NSAxMCA2Ljc1SDE0QzE0LjQxNDIgNi43NSAxNC43NSA2LjQxNDIxIDE0Ljc1IDZDMTQuNzUgNS41ODU3OSAxNC40MTQyIDUuMjUgMTQgNS4yNUgxMFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiA5LjI1QzkuMzc2NjUgOS4yNSA3LjI1IDExLjM3NjYgNy4yNSAxNEM3LjI1IDE2LjYyMzQgOS4zNzY2NSAxOC43NSAxMiAxOC43NUMxNC42MjM0IDE4Ljc1IDE2Ljc1IDE2LjYyMzQgMTYuNzUgMTRDMTYuNzUgMTEuMzc2NiAxNC42MjM0IDkuMjUgMTIgOS4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class SpeakerMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `speaker-minimalistic` icon in the boldDuotone style.
  const SpeakerMinimalisticBoldDuotoneIcon({
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
    name: 'speaker-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10 5.25C9.58579 5.25 9.25 5.58579 9.25 6C9.25 6.41421 9.58579 6.75 10 6.75H14C14.4142 6.75 14.75 6.41421 14.75 6C14.75 5.58579 14.4142 5.25 14 5.25H10Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 9.25C9.37665 9.25 7.25 11.3766 7.25 14C7.25 16.6234 9.37665 18.75 12 18.75C14.6234 18.75 16.75 16.6234 16.75 14C16.75 11.3766 14.6234 9.25 12 9.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 10C4 6.22876 4 4.34315 5.17157 3.17157C6.34315 2 8.22876 2 12 2C15.7712 2 17.6569 2 18.8284 3.17157C20 4.34315 20 6.22876 20 10V14C20 17.7712 20 19.6569 18.8284 20.8284C17.6569 22 15.7712 22 12 22C8.22876 22 6.34315 22 5.17157 20.8284C4 19.6569 4 17.7712 4 14V10Z" fill="currentColor"/>''',
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
