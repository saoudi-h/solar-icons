// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `git-branch` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTcuNjgyMSAxMEMxOS4wNjI4IDEwIDIwLjE4MjEgOC44ODA3MSAyMC4xODIxIDcuNUMyMC4xODIxIDYuMTE5MjkgMTkuMDYyOCA1IDE3LjY4MjEgNUMxNi4zMDE0IDUgMTUuMTgyMSA2LjExOTI5IDE1LjE4MjEgNy41QzE1LjE4MjEgOC44ODA3MSAxNi4zMDE0IDEwIDE3LjY4MjEgMTBaTTE3LjY4MjEgMTBDMTcuNjgyMSAxMi4zMzgzIDE1LjQ1MTQgMTMuNTkxNCAxMi4wODc4IDEzLjU5MTRDOC43MjQxOSAxMy41OTE0IDYuNSAxNC42NzQ3IDYuNSAxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDQuNUM5IDUuODgwNzEgNy44ODA3MSA3IDYuNSA3QzUuMTE5MjkgNyA0IDUuODgwNzEgNCA0LjVDNCAzLjExOTI5IDUuMTE5MjkgMiA2LjUgMkM3Ljg4MDcxIDIgOSAzLjExOTI5IDkgNC41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDE5LjVDOSAyMC44ODA3IDcuODgwNzEgMjIgNi41IDIyQzUuMTE5MjkgMjIgNCAyMC44ODA3IDQgMTkuNUM0IDE4LjExOTMgNS4xMTkyOSAxNyA2LjUgMTdDNy44ODA3MSAxNyA5IDE4LjExOTMgOSAxOS41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik02LjUgMTdMNi41IDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class GitBranchLineDuotoneIcon extends StatelessWidget {
  /// Creates the `git-branch` icon in the lineDuotone style.
  const GitBranchLineDuotoneIcon({
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
    name: 'git-branch',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 4.5C9 5.88071 7.88071 7 6.5 7C5.11929 7 4 5.88071 4 4.5C4 3.11929 5.11929 2 6.5 2C7.88071 2 9 3.11929 9 4.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 19.5C9 20.8807 7.88071 22 6.5 22C5.11929 22 4 20.8807 4 19.5C4 18.1193 5.11929 17 6.5 17C7.88071 17 9 18.1193 9 19.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.5 17L6.5 7" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17.6821 10C19.0628 10 20.1821 8.88071 20.1821 7.5C20.1821 6.11929 19.0628 5 17.6821 5C16.3014 5 15.1821 6.11929 15.1821 7.5C15.1821 8.88071 16.3014 10 17.6821 10ZM17.6821 10C17.6821 12.3383 15.4514 13.5914 12.0878 13.5914C8.72419 13.5914 6.5 14.6747 6.5 17" stroke="currentColor" stroke-linecap="round"/>''',
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
