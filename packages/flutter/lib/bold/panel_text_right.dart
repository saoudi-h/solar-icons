// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-text-right` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDExVjEzQzIyIDE2Ljc3MTIgMjIgMTguNjU2OSAyMC44Mjg0IDE5LjgyODRDMTkuODU0MSAyMC44MDI4IDE4LjM4NTkgMjAuOTY2OCAxNS43NSAyMC45OTQ0VjMuMDA1NTlDMTguMzg1OSAzLjAzMzIxIDE5Ljg1NDEgMy4xOTcyNCAyMC44Mjg0IDQuMTcxNTdDMjIgNS4zNDMxNSAyMiA3LjIyODc2IDIyIDExWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTEwIDNIMTRIMTQuMjVMMTQuMjUgMjFIMTRIMTBDNi4yMjg3NiAyMSA0LjM0MzE1IDIxIDMuMTcxNTcgMTkuODI4NEMyIDE4LjY1NjkgMiAxNi43NzEyIDIgMTNWMTFDMiA3LjIyODc2IDIgNS4zNDMxNSAzLjE3MTU3IDQuMTcxNTdDNC4zNDMxNSAzIDYuMjI4NzYgMyAxMCAzWk00Ljc1IDEwQzQuNzUgOS41ODU3OSA1LjA4NTc5IDkuMjUgNS41IDkuMjVIMTEuNUMxMS45MTQyIDkuMjUgMTIuMjUgOS41ODU3OSAxMi4yNSAxMEMxMi4yNSAxMC40MTQyIDExLjkxNDIgMTAuNzUgMTEuNSAxMC43NUg1LjVDNS4wODU3OSAxMC43NSA0Ljc1IDEwLjQxNDIgNC43NSAxMFpNNS43NSAxNEM1Ljc1IDEzLjU4NTggNi4wODU3OSAxMy4yNSA2LjUgMTMuMjVIMTAuNUMxMC45MTQyIDEzLjI1IDExLjI1IDEzLjU4NTggMTEuMjUgMTRDMTEuMjUgMTQuNDE0MiAxMC45MTQyIDE0Ljc1IDEwLjUgMTQuNzVINi41QzYuMDg1NzkgMTQuNzUgNS43NSAxNC40MTQyIDUuNzUgMTRaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class PanelTextRightBoldIcon extends StatelessWidget {
  /// Creates the `panel-text-right` icon in the bold style.
  const PanelTextRightBoldIcon({
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
    name: 'panel-text-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.8541 20.8028 18.3859 20.9668 15.75 20.9944V3.00559C18.3859 3.03321 19.8541 3.19724 20.8284 4.17157C22 5.34315 22 7.22876 22 11Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M10 3H14H14.25L14.25 21H14H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3ZM4.75 10C4.75 9.58579 5.08579 9.25 5.5 9.25H11.5C11.9142 9.25 12.25 9.58579 12.25 10C12.25 10.4142 11.9142 10.75 11.5 10.75H5.5C5.08579 10.75 4.75 10.4142 4.75 10ZM5.75 14C5.75 13.5858 6.08579 13.25 6.5 13.25H10.5C10.9142 13.25 11.25 13.5858 11.25 14C11.25 14.4142 10.9142 14.75 10.5 14.75H6.5C6.08579 14.75 5.75 14.4142 5.75 14Z" fill="currentColor"/>''',
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
  'The direction and text-bearing panel variant are now explicit in the name. Deprecated since 2026-09-21. Use PanelTextRightBoldIcon instead.',
)
typedef SidebarBoldIcon = PanelTextRightBoldIcon;
