// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-right` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMTcxNTcgNC4xNzE2QzIgNS4zNDMxOCAyIDcuMjI4OCAyIDExVjEzQzIgMTYuNzcxMyAyIDE4LjY1NjkgMy4xNzE1NyAxOS44Mjg1QzQuMzQzMTUgMjEgNi4yMjg3NiAyMSAxMCAyMUgxNEMxNC4wODQzIDIxIDE0LjkxNzYgMjEuMDAwMSAxNSAyMS4wMDAxTDE1IDMuMDAwMDZDMTQuOTE3NiAzLjAwMDA1IDE0LjA4NDMgMy4wMDAwMyAxNCAzLjAwMDAzSDEwQzYuMjI4NzYgMy4wMDAwMyA0LjM0MzE1IDMuMDAwMDMgMy4xNzE1NyA0LjE3MTZaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMiAxM1YxMUMyMiA3LjIyODc2IDIyIDUuMzQzMTUgMjAuODI4NCA0LjE3MTU3QzE5Ljg1NDEgMy4xOTcyNCAxNy42MzU5IDMuMDMzMjEgMTUgMy4wMDU1OVYyMC45OTQ0QzE3LjYzNTkgMjAuOTY2OCAxOS44NTQxIDIwLjgwMjggMjAuODI4NCAxOS44Mjg0QzIyIDE4LjY1NjkgMjIgMTYuNzcxMiAyMiAxM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class PanelRightBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `panel-right` icon in the boldDuotone style.
  const PanelRightBoldDuotoneIcon({
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
    name: 'panel-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M22 13V11C22 7.22876 22 5.34315 20.8284 4.17157C19.8541 3.19724 17.6359 3.03321 15 3.00559V20.9944C17.6359 20.9668 19.8541 20.8028 20.8284 19.8284C22 18.6569 22 16.7712 22 13Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M3.17157 4.1716C2 5.34318 2 7.2288 2 11V13C2 16.7713 2 18.6569 3.17157 19.8285C4.34315 21 6.22876 21 10 21H14C14.0843 21 14.9176 21.0001 15 21.0001L15 3.00006C14.9176 3.00005 14.0843 3.00003 14 3.00003H10C6.22876 3.00003 4.34315 3.00003 3.17157 4.1716Z" fill="currentColor"/>''',
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

@Deprecated(
  'The icon is a right-side panel rather than a generic sidebar. Deprecated since 2026-09-21. Use PanelRightBoldDuotoneIcon instead.',
)
typedef SidebarMinimalisticBoldDuotoneIcon = PanelRightBoldDuotoneIcon;
