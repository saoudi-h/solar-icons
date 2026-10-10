// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `password-minimalistic` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMy4xNzE1NyA1LjE3MTU3QzIgNi4zNDMxNSAyIDguMjI4NzYgMiAxMkMyIDE1Ljc3MTIgMiAxNy42NTY5IDMuMTcxNTcgMTguODI4NEM0LjM0MzE1IDIwIDYuMjI4NzYgMjAgMTAgMjBIMTRDMTcuNzcxMiAyMCAxOS42NTY5IDIwIDIwLjgyODQgMTguODI4NEMyMiAxNy42NTY5IDIyIDE1Ljc3MTIgMjIgMTJDMjIgOC4yMjg3NiAyMiA2LjM0MzE1IDIwLjgyODQgNS4xNzE1N0MxOS42NTY5IDQgMTcuNzcxMiA0IDE0IDRIMTBDNi4yMjg3NiA0IDQuMzQzMTUgNCAzLjE3MTU3IDUuMTcxNTdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik04IDEzQzguNTUyMjggMTMgOSAxMi41NTIzIDkgMTJDOSAxMS40NDc3IDguNTUyMjggMTEgOCAxMUM3LjQ0NzcyIDExIDcgMTEuNDQ3NyA3IDEyQzcgMTIuNTUyMyA3LjQ0NzcyIDEzIDggMTNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMyAxMkMxMyAxMi41NTIzIDEyLjU1MjMgMTMgMTIgMTNDMTEuNDQ3NyAxMyAxMSAxMi41NTIzIDExIDEyQzExIDExLjQ0NzcgMTEuNDQ3NyAxMSAxMiAxMUMxMi41NTIzIDExIDEzIDExLjQ0NzcgMTMgMTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNiAxM0MxNi41NTIzIDEzIDE3IDEyLjU1MjMgMTcgMTJDMTcgMTEuNDQ3NyAxNi41NTIzIDExIDE2IDExQzE1LjQ0NzcgMTEgMTUgMTEuNDQ3NyAxNSAxMkMxNSAxMi41NTIzIDE1LjQ0NzcgMTMgMTYgMTNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class PasswordMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `password-minimalistic` icon in the boldDuotone style.
  const PasswordMinimalisticBoldDuotoneIcon({
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
    name: 'password-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8 13C8.55228 13 9 12.5523 9 12C9 11.4477 8.55228 11 8 11C7.44772 11 7 11.4477 7 12C7 12.5523 7.44772 13 8 13Z" fill="currentColor"/>
<path d="M13 12C13 12.5523 12.5523 13 12 13C11.4477 13 11 12.5523 11 12C11 11.4477 11.4477 11 12 11C12.5523 11 13 11.4477 13 12Z" fill="currentColor"/>
<path d="M16 13C16.5523 13 17 12.5523 17 12C17 11.4477 16.5523 11 16 11C15.4477 11 15 11.4477 15 12C15 12.5523 15.4477 13 16 13Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.17157 5.17157C2 6.34315 2 8.22876 2 12C2 15.7712 2 17.6569 3.17157 18.8284C4.34315 20 6.22876 20 10 20H14C17.7712 20 19.6569 20 20.8284 18.8284C22 17.6569 22 15.7712 22 12C22 8.22876 22 6.34315 20.8284 5.17157C19.6569 4 17.7712 4 14 4H10C6.22876 4 4.34315 4 3.17157 5.17157Z" fill="currentColor"/>''',
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
