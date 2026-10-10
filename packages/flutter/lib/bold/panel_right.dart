// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMy4xNzE1NyA0LjE3MTU3QzIgNS4zNDMxNSAyIDcuMjI4NzYgMiAxMVYxM0MyIDE2Ljc3MTIgMiAxOC42NTY5IDMuMTcxNTcgMTkuODI4NEM0LjM0MzE1IDIxIDYuMjI4NzYgMjEgMTAgMjFIMTRDMTQuMDg0MyAyMSAxNC4xNjc2IDIxIDE0LjI1IDIxTDE0LjI1IDNDMTQuMTY3NiAyLjk5OTk5IDE0LjA4NDMgMyAxNCAzSDEwQzYuMjI4NzYgMyA0LjM0MzE1IDMgMy4xNzE1NyA0LjE3MTU3Wk0xNS43NSAzLjAwNTU5TDE1Ljc1IDIwLjk5NDRDMTguMzg1OSAyMC45NjY4IDE5Ljg1NDEgMjAuODAyOCAyMC44Mjg0IDE5LjgyODRDMjIgMTguNjU2OSAyMiAxNi43NzEyIDIyIDEzVjExQzIyIDcuMjI4NzYgMjIgNS4zNDMxNSAyMC44Mjg0IDQuMTcxNTdDMTkuODU0MSAzLjE5NzI0IDE4LjM4NTkgMy4wMzMyMSAxNS43NSAzLjAwNTU5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class PanelRightBoldIcon extends StatelessWidget {
  /// Creates the `panel-right` icon in the bold style.
  const PanelRightBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.17157 4.17157C2 5.34315 2 7.22876 2 11V13C2 16.7712 2 18.6569 3.17157 19.8284C4.34315 21 6.22876 21 10 21H14C14.0843 21 14.1676 21 14.25 21L14.25 3C14.1676 2.99999 14.0843 3 14 3H10C6.22876 3 4.34315 3 3.17157 4.17157ZM15.75 3.00559L15.75 20.9944C18.3859 20.9668 19.8541 20.8028 20.8284 19.8284C22 18.6569 22 16.7712 22 13V11C22 7.22876 22 5.34315 20.8284 4.17157C19.8541 3.19724 18.3859 3.03321 15.75 3.00559Z" fill="currentColor"/>''',
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
  'The icon is a right-side panel rather than a generic sidebar. Deprecated since 2026-09-21. Use PanelRightBoldIcon instead.',
)
typedef SidebarMinimalisticBoldIcon = PanelRightBoldIcon;
